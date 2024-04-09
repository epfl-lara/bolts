; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61718 () Bool)

(assert start!61718)

(declare-fun b!690156 () Bool)

(declare-fun res!454748 () Bool)

(declare-fun e!392974 () Bool)

(assert (=> b!690156 (=> (not res!454748) (not e!392974))))

(declare-datatypes ((array!39728 0))(
  ( (array!39729 (arr!19030 (Array (_ BitVec 32) (_ BitVec 64))) (size!19413 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39728)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13124 0))(
  ( (Nil!13121) (Cons!13120 (h!14165 (_ BitVec 64)) (t!19399 List!13124)) )
))
(declare-fun acc!681 () List!13124)

(declare-fun arrayNoDuplicates!0 (array!39728 (_ BitVec 32) List!13124) Bool)

(assert (=> b!690156 (= res!454748 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!690157 () Bool)

(declare-fun res!454733 () Bool)

(assert (=> b!690157 (=> (not res!454733) (not e!392974))))

(declare-fun contains!3667 (List!13124 (_ BitVec 64)) Bool)

(assert (=> b!690157 (= res!454733 (not (contains!3667 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690158 () Bool)

(declare-fun res!454737 () Bool)

(assert (=> b!690158 (=> (not res!454737) (not e!392974))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!690158 (= res!454737 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19413 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690159 () Bool)

(declare-fun res!454746 () Bool)

(assert (=> b!690159 (=> (not res!454746) (not e!392974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690159 (= res!454746 (validKeyInArray!0 (select (arr!19030 a!3626) from!3004)))))

(declare-fun b!690160 () Bool)

(declare-fun res!454747 () Bool)

(assert (=> b!690160 (=> (not res!454747) (not e!392974))))

(declare-fun noDuplicate!914 (List!13124) Bool)

(assert (=> b!690160 (= res!454747 (noDuplicate!914 acc!681))))

(declare-fun b!690161 () Bool)

(declare-fun res!454741 () Bool)

(assert (=> b!690161 (=> (not res!454741) (not e!392974))))

(declare-fun e!392976 () Bool)

(assert (=> b!690161 (= res!454741 e!392976)))

(declare-fun res!454734 () Bool)

(assert (=> b!690161 (=> res!454734 e!392976)))

(declare-fun e!392975 () Bool)

(assert (=> b!690161 (= res!454734 e!392975)))

(declare-fun res!454742 () Bool)

(assert (=> b!690161 (=> (not res!454742) (not e!392975))))

(assert (=> b!690161 (= res!454742 (bvsgt from!3004 i!1382))))

(declare-fun b!690162 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!690162 (= e!392975 (contains!3667 acc!681 k0!2843))))

(declare-fun b!690163 () Bool)

(declare-fun e!392977 () Bool)

(assert (=> b!690163 (= e!392976 e!392977)))

(declare-fun res!454738 () Bool)

(assert (=> b!690163 (=> (not res!454738) (not e!392977))))

(assert (=> b!690163 (= res!454738 (bvsle from!3004 i!1382))))

(declare-fun b!690164 () Bool)

(declare-fun arrayContainsKey!0 (array!39728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690164 (= e!392974 (not (arrayContainsKey!0 a!3626 k0!2843 from!3004)))))

(declare-fun b!690165 () Bool)

(declare-fun res!454739 () Bool)

(assert (=> b!690165 (=> (not res!454739) (not e!392974))))

(assert (=> b!690165 (= res!454739 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19413 a!3626))))))

(declare-fun b!690166 () Bool)

(assert (=> b!690166 (= e!392977 (not (contains!3667 acc!681 k0!2843)))))

(declare-fun b!690167 () Bool)

(declare-fun res!454740 () Bool)

(assert (=> b!690167 (=> (not res!454740) (not e!392974))))

(assert (=> b!690167 (= res!454740 (validKeyInArray!0 k0!2843))))

(declare-fun res!454743 () Bool)

(assert (=> start!61718 (=> (not res!454743) (not e!392974))))

(assert (=> start!61718 (= res!454743 (and (bvslt (size!19413 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19413 a!3626))))))

(assert (=> start!61718 e!392974))

(assert (=> start!61718 true))

(declare-fun array_inv!14804 (array!39728) Bool)

(assert (=> start!61718 (array_inv!14804 a!3626)))

(declare-fun b!690155 () Bool)

(declare-fun res!454735 () Bool)

(assert (=> b!690155 (=> (not res!454735) (not e!392974))))

(assert (=> b!690155 (= res!454735 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690168 () Bool)

(declare-fun res!454745 () Bool)

(assert (=> b!690168 (=> (not res!454745) (not e!392974))))

(assert (=> b!690168 (= res!454745 (not (contains!3667 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690169 () Bool)

(declare-fun res!454736 () Bool)

(assert (=> b!690169 (=> (not res!454736) (not e!392974))))

(assert (=> b!690169 (= res!454736 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13121))))

(declare-fun b!690170 () Bool)

(declare-fun res!454744 () Bool)

(assert (=> b!690170 (=> (not res!454744) (not e!392974))))

(assert (=> b!690170 (= res!454744 (= (select (arr!19030 a!3626) from!3004) k0!2843))))

(assert (= (and start!61718 res!454743) b!690160))

(assert (= (and b!690160 res!454747) b!690157))

(assert (= (and b!690157 res!454733) b!690168))

(assert (= (and b!690168 res!454745) b!690161))

(assert (= (and b!690161 res!454742) b!690162))

(assert (= (and b!690161 (not res!454734)) b!690163))

(assert (= (and b!690163 res!454738) b!690166))

(assert (= (and b!690161 res!454741) b!690169))

(assert (= (and b!690169 res!454736) b!690156))

(assert (= (and b!690156 res!454748) b!690165))

(assert (= (and b!690165 res!454739) b!690167))

(assert (= (and b!690167 res!454740) b!690155))

(assert (= (and b!690155 res!454735) b!690158))

(assert (= (and b!690158 res!454737) b!690159))

(assert (= (and b!690159 res!454746) b!690170))

(assert (= (and b!690170 res!454744) b!690164))

(declare-fun m!653745 () Bool)

(assert (=> b!690164 m!653745))

(declare-fun m!653747 () Bool)

(assert (=> b!690169 m!653747))

(declare-fun m!653749 () Bool)

(assert (=> b!690160 m!653749))

(declare-fun m!653751 () Bool)

(assert (=> start!61718 m!653751))

(declare-fun m!653753 () Bool)

(assert (=> b!690168 m!653753))

(declare-fun m!653755 () Bool)

(assert (=> b!690157 m!653755))

(declare-fun m!653757 () Bool)

(assert (=> b!690170 m!653757))

(declare-fun m!653759 () Bool)

(assert (=> b!690166 m!653759))

(declare-fun m!653761 () Bool)

(assert (=> b!690155 m!653761))

(assert (=> b!690159 m!653757))

(assert (=> b!690159 m!653757))

(declare-fun m!653763 () Bool)

(assert (=> b!690159 m!653763))

(assert (=> b!690162 m!653759))

(declare-fun m!653765 () Bool)

(assert (=> b!690167 m!653765))

(declare-fun m!653767 () Bool)

(assert (=> b!690156 m!653767))

(check-sat (not b!690157) (not b!690167) (not b!690166) (not b!690168) (not start!61718) (not b!690162) (not b!690160) (not b!690169) (not b!690164) (not b!690155) (not b!690156) (not b!690159))
(check-sat)
(get-model)

(declare-fun d!95311 () Bool)

(declare-fun lt!316365 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!307 (List!13124) (InoxSet (_ BitVec 64)))

(assert (=> d!95311 (= lt!316365 (select (content!307 acc!681) k0!2843))))

(declare-fun e!392997 () Bool)

(assert (=> d!95311 (= lt!316365 e!392997)))

(declare-fun res!454801 () Bool)

(assert (=> d!95311 (=> (not res!454801) (not e!392997))))

(get-info :version)

(assert (=> d!95311 (= res!454801 ((_ is Cons!13120) acc!681))))

(assert (=> d!95311 (= (contains!3667 acc!681 k0!2843) lt!316365)))

(declare-fun b!690223 () Bool)

(declare-fun e!392998 () Bool)

(assert (=> b!690223 (= e!392997 e!392998)))

(declare-fun res!454802 () Bool)

(assert (=> b!690223 (=> res!454802 e!392998)))

(assert (=> b!690223 (= res!454802 (= (h!14165 acc!681) k0!2843))))

(declare-fun b!690224 () Bool)

(assert (=> b!690224 (= e!392998 (contains!3667 (t!19399 acc!681) k0!2843))))

(assert (= (and d!95311 res!454801) b!690223))

(assert (= (and b!690223 (not res!454802)) b!690224))

(declare-fun m!653793 () Bool)

(assert (=> d!95311 m!653793))

(declare-fun m!653795 () Bool)

(assert (=> d!95311 m!653795))

(declare-fun m!653797 () Bool)

(assert (=> b!690224 m!653797))

(assert (=> b!690162 d!95311))

(declare-fun d!95313 () Bool)

(assert (=> d!95313 (= (validKeyInArray!0 (select (arr!19030 a!3626) from!3004)) (and (not (= (select (arr!19030 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19030 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!690159 d!95313))

(declare-fun b!690247 () Bool)

(declare-fun e!393020 () Bool)

(declare-fun e!393019 () Bool)

(assert (=> b!690247 (= e!393020 e!393019)))

(declare-fun c!78080 () Bool)

(assert (=> b!690247 (= c!78080 (validKeyInArray!0 (select (arr!19030 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!690248 () Bool)

(declare-fun e!393022 () Bool)

(assert (=> b!690248 (= e!393022 e!393020)))

(declare-fun res!454822 () Bool)

(assert (=> b!690248 (=> (not res!454822) (not e!393020))))

(declare-fun e!393021 () Bool)

(assert (=> b!690248 (= res!454822 (not e!393021))))

(declare-fun res!454821 () Bool)

(assert (=> b!690248 (=> (not res!454821) (not e!393021))))

(assert (=> b!690248 (= res!454821 (validKeyInArray!0 (select (arr!19030 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34211 () Bool)

(declare-fun call!34214 () Bool)

(assert (=> bm!34211 (= call!34214 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78080 (Cons!13120 (select (arr!19030 a!3626) #b00000000000000000000000000000000) Nil!13121) Nil!13121)))))

(declare-fun d!95315 () Bool)

(declare-fun res!454823 () Bool)

(assert (=> d!95315 (=> res!454823 e!393022)))

(assert (=> d!95315 (= res!454823 (bvsge #b00000000000000000000000000000000 (size!19413 a!3626)))))

(assert (=> d!95315 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13121) e!393022)))

(declare-fun b!690249 () Bool)

(assert (=> b!690249 (= e!393019 call!34214)))

(declare-fun b!690250 () Bool)

(assert (=> b!690250 (= e!393019 call!34214)))

(declare-fun b!690251 () Bool)

(assert (=> b!690251 (= e!393021 (contains!3667 Nil!13121 (select (arr!19030 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!95315 (not res!454823)) b!690248))

(assert (= (and b!690248 res!454821) b!690251))

(assert (= (and b!690248 res!454822) b!690247))

(assert (= (and b!690247 c!78080) b!690249))

(assert (= (and b!690247 (not c!78080)) b!690250))

(assert (= (or b!690249 b!690250) bm!34211))

(declare-fun m!653813 () Bool)

(assert (=> b!690247 m!653813))

(assert (=> b!690247 m!653813))

(declare-fun m!653815 () Bool)

(assert (=> b!690247 m!653815))

(assert (=> b!690248 m!653813))

(assert (=> b!690248 m!653813))

(assert (=> b!690248 m!653815))

(assert (=> bm!34211 m!653813))

(declare-fun m!653817 () Bool)

(assert (=> bm!34211 m!653817))

(assert (=> b!690251 m!653813))

(assert (=> b!690251 m!653813))

(declare-fun m!653819 () Bool)

(assert (=> b!690251 m!653819))

(assert (=> b!690169 d!95315))

(declare-fun d!95331 () Bool)

(declare-fun res!454840 () Bool)

(declare-fun e!393039 () Bool)

(assert (=> d!95331 (=> res!454840 e!393039)))

(assert (=> d!95331 (= res!454840 ((_ is Nil!13121) acc!681))))

(assert (=> d!95331 (= (noDuplicate!914 acc!681) e!393039)))

(declare-fun b!690268 () Bool)

(declare-fun e!393040 () Bool)

(assert (=> b!690268 (= e!393039 e!393040)))

(declare-fun res!454841 () Bool)

(assert (=> b!690268 (=> (not res!454841) (not e!393040))))

(assert (=> b!690268 (= res!454841 (not (contains!3667 (t!19399 acc!681) (h!14165 acc!681))))))

(declare-fun b!690269 () Bool)

(assert (=> b!690269 (= e!393040 (noDuplicate!914 (t!19399 acc!681)))))

(assert (= (and d!95331 (not res!454840)) b!690268))

(assert (= (and b!690268 res!454841) b!690269))

(declare-fun m!653825 () Bool)

(assert (=> b!690268 m!653825))

(declare-fun m!653827 () Bool)

(assert (=> b!690269 m!653827))

(assert (=> b!690160 d!95331))

(declare-fun d!95335 () Bool)

(assert (=> d!95335 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!690167 d!95335))

(declare-fun b!690272 () Bool)

(declare-fun e!393044 () Bool)

(declare-fun e!393043 () Bool)

(assert (=> b!690272 (= e!393044 e!393043)))

(declare-fun c!78081 () Bool)

(assert (=> b!690272 (= c!78081 (validKeyInArray!0 (select (arr!19030 a!3626) from!3004)))))

(declare-fun b!690273 () Bool)

(declare-fun e!393046 () Bool)

(assert (=> b!690273 (= e!393046 e!393044)))

(declare-fun res!454845 () Bool)

(assert (=> b!690273 (=> (not res!454845) (not e!393044))))

(declare-fun e!393045 () Bool)

(assert (=> b!690273 (= res!454845 (not e!393045))))

(declare-fun res!454844 () Bool)

(assert (=> b!690273 (=> (not res!454844) (not e!393045))))

(assert (=> b!690273 (= res!454844 (validKeyInArray!0 (select (arr!19030 a!3626) from!3004)))))

(declare-fun call!34215 () Bool)

(declare-fun bm!34212 () Bool)

(assert (=> bm!34212 (= call!34215 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78081 (Cons!13120 (select (arr!19030 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun d!95337 () Bool)

(declare-fun res!454846 () Bool)

(assert (=> d!95337 (=> res!454846 e!393046)))

(assert (=> d!95337 (= res!454846 (bvsge from!3004 (size!19413 a!3626)))))

(assert (=> d!95337 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!393046)))

(declare-fun b!690274 () Bool)

(assert (=> b!690274 (= e!393043 call!34215)))

(declare-fun b!690275 () Bool)

(assert (=> b!690275 (= e!393043 call!34215)))

(declare-fun b!690276 () Bool)

(assert (=> b!690276 (= e!393045 (contains!3667 acc!681 (select (arr!19030 a!3626) from!3004)))))

(assert (= (and d!95337 (not res!454846)) b!690273))

(assert (= (and b!690273 res!454844) b!690276))

(assert (= (and b!690273 res!454845) b!690272))

(assert (= (and b!690272 c!78081) b!690274))

(assert (= (and b!690272 (not c!78081)) b!690275))

(assert (= (or b!690274 b!690275) bm!34212))

(assert (=> b!690272 m!653757))

(assert (=> b!690272 m!653757))

(assert (=> b!690272 m!653763))

(assert (=> b!690273 m!653757))

(assert (=> b!690273 m!653757))

(assert (=> b!690273 m!653763))

(assert (=> bm!34212 m!653757))

(declare-fun m!653831 () Bool)

(assert (=> bm!34212 m!653831))

(assert (=> b!690276 m!653757))

(assert (=> b!690276 m!653757))

(declare-fun m!653833 () Bool)

(assert (=> b!690276 m!653833))

(assert (=> b!690156 d!95337))

(declare-fun d!95341 () Bool)

(declare-fun lt!316370 () Bool)

(assert (=> d!95341 (= lt!316370 (select (content!307 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!393047 () Bool)

(assert (=> d!95341 (= lt!316370 e!393047)))

(declare-fun res!454847 () Bool)

(assert (=> d!95341 (=> (not res!454847) (not e!393047))))

(assert (=> d!95341 (= res!454847 ((_ is Cons!13120) acc!681))))

(assert (=> d!95341 (= (contains!3667 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316370)))

(declare-fun b!690277 () Bool)

(declare-fun e!393048 () Bool)

(assert (=> b!690277 (= e!393047 e!393048)))

(declare-fun res!454848 () Bool)

(assert (=> b!690277 (=> res!454848 e!393048)))

(assert (=> b!690277 (= res!454848 (= (h!14165 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!690278 () Bool)

(assert (=> b!690278 (= e!393048 (contains!3667 (t!19399 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95341 res!454847) b!690277))

(assert (= (and b!690277 (not res!454848)) b!690278))

(assert (=> d!95341 m!653793))

(declare-fun m!653835 () Bool)

(assert (=> d!95341 m!653835))

(declare-fun m!653837 () Bool)

(assert (=> b!690278 m!653837))

(assert (=> b!690157 d!95341))

(declare-fun d!95343 () Bool)

(declare-fun lt!316371 () Bool)

(assert (=> d!95343 (= lt!316371 (select (content!307 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!393049 () Bool)

(assert (=> d!95343 (= lt!316371 e!393049)))

(declare-fun res!454849 () Bool)

(assert (=> d!95343 (=> (not res!454849) (not e!393049))))

(assert (=> d!95343 (= res!454849 ((_ is Cons!13120) acc!681))))

(assert (=> d!95343 (= (contains!3667 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316371)))

(declare-fun b!690279 () Bool)

(declare-fun e!393050 () Bool)

(assert (=> b!690279 (= e!393049 e!393050)))

(declare-fun res!454850 () Bool)

(assert (=> b!690279 (=> res!454850 e!393050)))

(assert (=> b!690279 (= res!454850 (= (h!14165 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!690280 () Bool)

(assert (=> b!690280 (= e!393050 (contains!3667 (t!19399 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95343 res!454849) b!690279))

(assert (= (and b!690279 (not res!454850)) b!690280))

(assert (=> d!95343 m!653793))

(declare-fun m!653839 () Bool)

(assert (=> d!95343 m!653839))

(declare-fun m!653841 () Bool)

(assert (=> b!690280 m!653841))

(assert (=> b!690168 d!95343))

(declare-fun d!95345 () Bool)

(declare-fun res!454867 () Bool)

(declare-fun e!393069 () Bool)

(assert (=> d!95345 (=> res!454867 e!393069)))

(assert (=> d!95345 (= res!454867 (= (select (arr!19030 a!3626) from!3004) k0!2843))))

(assert (=> d!95345 (= (arrayContainsKey!0 a!3626 k0!2843 from!3004) e!393069)))

(declare-fun b!690301 () Bool)

(declare-fun e!393070 () Bool)

(assert (=> b!690301 (= e!393069 e!393070)))

(declare-fun res!454868 () Bool)

(assert (=> b!690301 (=> (not res!454868) (not e!393070))))

(assert (=> b!690301 (= res!454868 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19413 a!3626)))))

(declare-fun b!690302 () Bool)

(assert (=> b!690302 (= e!393070 (arrayContainsKey!0 a!3626 k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95345 (not res!454867)) b!690301))

(assert (= (and b!690301 res!454868) b!690302))

(assert (=> d!95345 m!653757))

(declare-fun m!653849 () Bool)

(assert (=> b!690302 m!653849))

(assert (=> b!690164 d!95345))

(declare-fun d!95349 () Bool)

(declare-fun res!454869 () Bool)

(declare-fun e!393071 () Bool)

(assert (=> d!95349 (=> res!454869 e!393071)))

(assert (=> d!95349 (= res!454869 (= (select (arr!19030 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!95349 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!393071)))

(declare-fun b!690303 () Bool)

(declare-fun e!393072 () Bool)

(assert (=> b!690303 (= e!393071 e!393072)))

(declare-fun res!454870 () Bool)

(assert (=> b!690303 (=> (not res!454870) (not e!393072))))

(assert (=> b!690303 (= res!454870 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19413 a!3626)))))

(declare-fun b!690304 () Bool)

(assert (=> b!690304 (= e!393072 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95349 (not res!454869)) b!690303))

(assert (= (and b!690303 res!454870) b!690304))

(assert (=> d!95349 m!653813))

(declare-fun m!653851 () Bool)

(assert (=> b!690304 m!653851))

(assert (=> b!690155 d!95349))

(declare-fun d!95351 () Bool)

(assert (=> d!95351 (= (array_inv!14804 a!3626) (bvsge (size!19413 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61718 d!95351))

(assert (=> b!690166 d!95311))

(check-sat (not b!690273) (not bm!34212) (not b!690276) (not b!690248) (not b!690224) (not bm!34211) (not b!690251) (not b!690247) (not b!690269) (not b!690304) (not b!690280) (not d!95311) (not b!690302) (not b!690268) (not d!95341) (not b!690278) (not d!95343) (not b!690272))
(check-sat)
