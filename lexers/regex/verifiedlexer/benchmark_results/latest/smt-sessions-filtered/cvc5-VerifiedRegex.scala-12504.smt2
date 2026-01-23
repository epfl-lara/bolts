; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695174 () Bool)

(assert start!695174)

(declare-fun b!7134682 () Bool)

(assert (=> b!7134682 true))

(declare-fun bs!1887105 () Bool)

(declare-fun b!7134680 () Bool)

(assert (= bs!1887105 (and b!7134682 b!7134680)))

(declare-fun lambda!433351 () Int)

(declare-fun lambda!433349 () Int)

(assert (=> bs!1887105 (not (= lambda!433351 lambda!433349))))

(declare-fun b!7134674 () Bool)

(declare-fun e!4287916 () Bool)

(declare-fun e!4287922 () Bool)

(assert (=> b!7134674 (= e!4287916 e!4287922)))

(declare-fun res!2911163 () Bool)

(assert (=> b!7134674 (=> (not res!2911163) (not e!4287922))))

(declare-datatypes ((C!36506 0))(
  ( (C!36507 (val!28201 Int)) )
))
(declare-datatypes ((Regex!18116 0))(
  ( (ElementMatch!18116 (c!1330541 C!36506)) (Concat!26961 (regOne!36744 Regex!18116) (regTwo!36744 Regex!18116)) (EmptyExpr!18116) (Star!18116 (reg!18445 Regex!18116)) (EmptyLang!18116) (Union!18116 (regOne!36745 Regex!18116) (regTwo!36745 Regex!18116)) )
))
(declare-fun r!11483 () Regex!18116)

(declare-fun lt!2565477 () Regex!18116)

(assert (=> b!7134674 (= res!2911163 (= r!11483 lt!2565477))))

(declare-datatypes ((List!69310 0))(
  ( (Nil!69186) (Cons!69186 (h!75634 Regex!18116) (t!383327 List!69310)) )
))
(declare-fun lt!2565475 () List!69310)

(declare-fun generalisedUnion!2621 (List!69310) Regex!18116)

(assert (=> b!7134674 (= lt!2565477 (generalisedUnion!2621 lt!2565475))))

(declare-datatypes ((Context!14220 0))(
  ( (Context!14221 (exprs!7610 List!69310)) )
))
(declare-datatypes ((List!69311 0))(
  ( (Nil!69187) (Cons!69187 (h!75635 Context!14220) (t!383328 List!69311)) )
))
(declare-fun lt!2565479 () List!69311)

(declare-fun unfocusZipperList!2157 (List!69311) List!69310)

(assert (=> b!7134674 (= lt!2565475 (unfocusZipperList!2157 lt!2565479))))

(declare-fun b!7134675 () Bool)

(declare-fun res!2911164 () Bool)

(declare-fun e!4287919 () Bool)

(assert (=> b!7134675 (=> res!2911164 e!4287919)))

(declare-fun exists!3839 (List!69310 Int) Bool)

(assert (=> b!7134675 (= res!2911164 (not (exists!3839 lt!2565475 lambda!433349)))))

(declare-fun res!2911160 () Bool)

(declare-fun e!4287915 () Bool)

(assert (=> start!695174 (=> (not res!2911160) (not e!4287915))))

(declare-fun validRegex!9283 (Regex!18116) Bool)

(assert (=> start!695174 (= res!2911160 (validRegex!9283 r!11483))))

(assert (=> start!695174 e!4287915))

(declare-fun e!4287917 () Bool)

(assert (=> start!695174 e!4287917))

(declare-fun condSetEmpty!52322 () Bool)

(declare-fun z!3189 () (Set Context!14220))

(assert (=> start!695174 (= condSetEmpty!52322 (= z!3189 (as set.empty (Set Context!14220))))))

(declare-fun setRes!52322 () Bool)

(assert (=> start!695174 setRes!52322))

(declare-fun c!164 () Context!14220)

(declare-fun e!4287921 () Bool)

(declare-fun inv!88355 (Context!14220) Bool)

(assert (=> start!695174 (and (inv!88355 c!164) e!4287921)))

(declare-fun b!7134676 () Bool)

(declare-fun tp!1966906 () Bool)

(declare-fun tp!1966908 () Bool)

(assert (=> b!7134676 (= e!4287917 (and tp!1966906 tp!1966908))))

(declare-fun b!7134677 () Bool)

(declare-fun tp!1966909 () Bool)

(declare-fun tp!1966905 () Bool)

(assert (=> b!7134677 (= e!4287917 (and tp!1966909 tp!1966905))))

(declare-fun b!7134678 () Bool)

(declare-fun e!4287920 () Bool)

(declare-fun tp!1966911 () Bool)

(assert (=> b!7134678 (= e!4287920 tp!1966911)))

(declare-fun b!7134679 () Bool)

(declare-fun tp_is_empty!45869 () Bool)

(assert (=> b!7134679 (= e!4287917 tp_is_empty!45869)))

(assert (=> b!7134680 (= e!4287922 (not e!4287919))))

(declare-fun res!2911167 () Bool)

(assert (=> b!7134680 (=> res!2911167 e!4287919)))

(declare-fun lt!2565478 () Bool)

(assert (=> b!7134680 (= res!2911167 (not (= lt!2565478 (exists!3839 lt!2565475 lambda!433349))))))

(assert (=> b!7134680 (= lt!2565478 (exists!3839 lt!2565475 lambda!433349))))

(declare-fun nullable!7636 (Regex!18116) Bool)

(assert (=> b!7134680 (= lt!2565478 (nullable!7636 lt!2565477))))

(declare-datatypes ((Unit!163081 0))(
  ( (Unit!163082) )
))
(declare-fun lt!2565473 () Unit!163081)

(declare-fun nullableGenUnionSpec!5 (Regex!18116 List!69310) Unit!163081)

(assert (=> b!7134680 (= lt!2565473 (nullableGenUnionSpec!5 lt!2565477 lt!2565475))))

(declare-fun b!7134681 () Bool)

(declare-fun tp!1966904 () Bool)

(assert (=> b!7134681 (= e!4287921 tp!1966904)))

(declare-fun e!4287918 () Bool)

(declare-fun forall!16958 (List!69310 Int) Bool)

(assert (=> b!7134682 (= e!4287918 (forall!16958 (exprs!7610 c!164) lambda!433351))))

(declare-fun lambda!433350 () Int)

(declare-fun exists!3840 (List!69311 Int) Bool)

(assert (=> b!7134682 (exists!3840 lt!2565479 lambda!433350)))

(declare-fun lt!2565476 () Unit!163081)

(declare-fun lt!2565474 () Regex!18116)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!1 (List!69311 Regex!18116) Unit!163081)

(assert (=> b!7134682 (= lt!2565476 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!1 lt!2565479 lt!2565474))))

(declare-fun b!7134683 () Bool)

(assert (=> b!7134683 (= e!4287915 e!4287916)))

(declare-fun res!2911161 () Bool)

(assert (=> b!7134683 (=> (not res!2911161) (not e!4287916))))

(declare-fun unfocusZipper!2464 (List!69311) Regex!18116)

(assert (=> b!7134683 (= res!2911161 (= r!11483 (unfocusZipper!2464 lt!2565479)))))

(declare-fun toList!11147 ((Set Context!14220)) List!69311)

(assert (=> b!7134683 (= lt!2565479 (toList!11147 z!3189))))

(declare-fun setIsEmpty!52322 () Bool)

(assert (=> setIsEmpty!52322 setRes!52322))

(declare-fun tp!1966907 () Bool)

(declare-fun setElem!52322 () Context!14220)

(declare-fun setNonEmpty!52322 () Bool)

(assert (=> setNonEmpty!52322 (= setRes!52322 (and tp!1966907 (inv!88355 setElem!52322) e!4287920))))

(declare-fun setRest!52322 () (Set Context!14220))

(assert (=> setNonEmpty!52322 (= z!3189 (set.union (set.insert setElem!52322 (as set.empty (Set Context!14220))) setRest!52322))))

(declare-fun b!7134684 () Bool)

(declare-fun res!2911162 () Bool)

(assert (=> b!7134684 (=> res!2911162 e!4287918)))

(declare-fun contains!20556 (List!69310 Regex!18116) Bool)

(assert (=> b!7134684 (= res!2911162 (not (contains!20556 lt!2565475 lt!2565474)))))

(declare-fun b!7134685 () Bool)

(declare-fun tp!1966910 () Bool)

(assert (=> b!7134685 (= e!4287917 tp!1966910)))

(declare-fun b!7134686 () Bool)

(assert (=> b!7134686 (= e!4287919 e!4287918)))

(declare-fun res!2911166 () Bool)

(assert (=> b!7134686 (=> res!2911166 e!4287918)))

(assert (=> b!7134686 (= res!2911166 (not (nullable!7636 lt!2565474)))))

(declare-fun getWitness!1865 (List!69310 Int) Regex!18116)

(assert (=> b!7134686 (= lt!2565474 (getWitness!1865 lt!2565475 lambda!433349))))

(declare-fun b!7134687 () Bool)

(declare-fun res!2911165 () Bool)

(assert (=> b!7134687 (=> res!2911165 e!4287919)))

(assert (=> b!7134687 (= res!2911165 (not lt!2565478))))

(assert (= (and start!695174 res!2911160) b!7134683))

(assert (= (and b!7134683 res!2911161) b!7134674))

(assert (= (and b!7134674 res!2911163) b!7134680))

(assert (= (and b!7134680 (not res!2911167)) b!7134687))

(assert (= (and b!7134687 (not res!2911165)) b!7134675))

(assert (= (and b!7134675 (not res!2911164)) b!7134686))

(assert (= (and b!7134686 (not res!2911166)) b!7134684))

(assert (= (and b!7134684 (not res!2911162)) b!7134682))

(assert (= (and start!695174 (is-ElementMatch!18116 r!11483)) b!7134679))

(assert (= (and start!695174 (is-Concat!26961 r!11483)) b!7134676))

(assert (= (and start!695174 (is-Star!18116 r!11483)) b!7134685))

(assert (= (and start!695174 (is-Union!18116 r!11483)) b!7134677))

(assert (= (and start!695174 condSetEmpty!52322) setIsEmpty!52322))

(assert (= (and start!695174 (not condSetEmpty!52322)) setNonEmpty!52322))

(assert (= setNonEmpty!52322 b!7134678))

(assert (= start!695174 b!7134681))

(declare-fun m!7851242 () Bool)

(assert (=> b!7134682 m!7851242))

(declare-fun m!7851244 () Bool)

(assert (=> b!7134682 m!7851244))

(declare-fun m!7851246 () Bool)

(assert (=> b!7134682 m!7851246))

(declare-fun m!7851248 () Bool)

(assert (=> b!7134684 m!7851248))

(declare-fun m!7851250 () Bool)

(assert (=> b!7134675 m!7851250))

(declare-fun m!7851252 () Bool)

(assert (=> b!7134683 m!7851252))

(declare-fun m!7851254 () Bool)

(assert (=> b!7134683 m!7851254))

(declare-fun m!7851256 () Bool)

(assert (=> setNonEmpty!52322 m!7851256))

(declare-fun m!7851258 () Bool)

(assert (=> start!695174 m!7851258))

(declare-fun m!7851260 () Bool)

(assert (=> start!695174 m!7851260))

(declare-fun m!7851262 () Bool)

(assert (=> b!7134686 m!7851262))

(declare-fun m!7851264 () Bool)

(assert (=> b!7134686 m!7851264))

(declare-fun m!7851266 () Bool)

(assert (=> b!7134674 m!7851266))

(declare-fun m!7851268 () Bool)

(assert (=> b!7134674 m!7851268))

(assert (=> b!7134680 m!7851250))

(assert (=> b!7134680 m!7851250))

(declare-fun m!7851270 () Bool)

(assert (=> b!7134680 m!7851270))

(declare-fun m!7851272 () Bool)

(assert (=> b!7134680 m!7851272))

(push 1)

(assert (not b!7134675))

(assert (not b!7134681))

(assert (not b!7134684))

(assert (not b!7134685))

(assert (not b!7134683))

(assert (not b!7134677))

(assert (not b!7134680))

(assert tp_is_empty!45869)

(assert (not b!7134686))

(assert (not b!7134674))

(assert (not b!7134682))

(assert (not setNonEmpty!52322))

(assert (not b!7134678))

(assert (not start!695174))

(assert (not b!7134676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1887107 () Bool)

(declare-fun d!2226161 () Bool)

(assert (= bs!1887107 (and d!2226161 b!7134680)))

(declare-fun lambda!433369 () Int)

(assert (=> bs!1887107 (not (= lambda!433369 lambda!433349))))

(declare-fun bs!1887108 () Bool)

(assert (= bs!1887108 (and d!2226161 b!7134682)))

(assert (=> bs!1887108 (not (= lambda!433369 lambda!433351))))

(assert (=> d!2226161 true))

(declare-fun order!28487 () Int)

(declare-fun dynLambda!28132 (Int Int) Int)

(assert (=> d!2226161 (< (dynLambda!28132 order!28487 lambda!433349) (dynLambda!28132 order!28487 lambda!433369))))

(assert (=> d!2226161 (= (exists!3839 lt!2565475 lambda!433349) (not (forall!16958 lt!2565475 lambda!433369)))))

(declare-fun bs!1887109 () Bool)

(assert (= bs!1887109 d!2226161))

(declare-fun m!7851306 () Bool)

(assert (=> bs!1887109 m!7851306))

(assert (=> b!7134675 d!2226161))

(assert (=> b!7134680 d!2226161))

(declare-fun d!2226163 () Bool)

(declare-fun nullableFct!2966 (Regex!18116) Bool)

(assert (=> d!2226163 (= (nullable!7636 lt!2565477) (nullableFct!2966 lt!2565477))))

(declare-fun bs!1887110 () Bool)

(assert (= bs!1887110 d!2226163))

(declare-fun m!7851308 () Bool)

(assert (=> bs!1887110 m!7851308))

(assert (=> b!7134680 d!2226163))

(declare-fun bs!1887111 () Bool)

(declare-fun d!2226165 () Bool)

(assert (= bs!1887111 (and d!2226165 b!7134680)))

(declare-fun lambda!433374 () Int)

(assert (=> bs!1887111 (not (= lambda!433374 lambda!433349))))

(declare-fun bs!1887112 () Bool)

(assert (= bs!1887112 (and d!2226165 b!7134682)))

(assert (=> bs!1887112 (= lambda!433374 lambda!433351)))

(declare-fun bs!1887113 () Bool)

(assert (= bs!1887113 (and d!2226165 d!2226161)))

(assert (=> bs!1887113 (not (= lambda!433374 lambda!433369))))

(declare-fun lambda!433375 () Int)

(assert (=> bs!1887111 (= lambda!433375 lambda!433349)))

(assert (=> bs!1887112 (not (= lambda!433375 lambda!433351))))

(assert (=> bs!1887113 (not (= lambda!433375 lambda!433369))))

(declare-fun bs!1887114 () Bool)

(assert (= bs!1887114 d!2226165))

(assert (=> bs!1887114 (not (= lambda!433375 lambda!433374))))

(assert (=> d!2226165 (= (nullable!7636 lt!2565477) (exists!3839 lt!2565475 lambda!433375))))

(declare-fun lt!2565503 () Unit!163081)

(declare-fun choose!55144 (Regex!18116 List!69310) Unit!163081)

(assert (=> d!2226165 (= lt!2565503 (choose!55144 lt!2565477 lt!2565475))))

(assert (=> d!2226165 (forall!16958 lt!2565475 lambda!433374)))

(assert (=> d!2226165 (= (nullableGenUnionSpec!5 lt!2565477 lt!2565475) lt!2565503)))

(assert (=> bs!1887114 m!7851270))

(declare-fun m!7851310 () Bool)

(assert (=> bs!1887114 m!7851310))

(declare-fun m!7851312 () Bool)

(assert (=> bs!1887114 m!7851312))

(declare-fun m!7851314 () Bool)

(assert (=> bs!1887114 m!7851314))

(assert (=> b!7134680 d!2226165))

(declare-fun d!2226167 () Bool)

(declare-fun lt!2565506 () Bool)

(declare-fun content!14156 (List!69310) (Set Regex!18116))

(assert (=> d!2226167 (= lt!2565506 (set.member lt!2565474 (content!14156 lt!2565475)))))

(declare-fun e!4287951 () Bool)

(assert (=> d!2226167 (= lt!2565506 e!4287951)))

(declare-fun res!2911197 () Bool)

(assert (=> d!2226167 (=> (not res!2911197) (not e!4287951))))

(assert (=> d!2226167 (= res!2911197 (is-Cons!69186 lt!2565475))))

(assert (=> d!2226167 (= (contains!20556 lt!2565475 lt!2565474) lt!2565506)))

(declare-fun b!7134740 () Bool)

(declare-fun e!4287952 () Bool)

(assert (=> b!7134740 (= e!4287951 e!4287952)))

(declare-fun res!2911196 () Bool)

(assert (=> b!7134740 (=> res!2911196 e!4287952)))

(assert (=> b!7134740 (= res!2911196 (= (h!75634 lt!2565475) lt!2565474))))

(declare-fun b!7134741 () Bool)

(assert (=> b!7134741 (= e!4287952 (contains!20556 (t!383327 lt!2565475) lt!2565474))))

(assert (= (and d!2226167 res!2911197) b!7134740))

(assert (= (and b!7134740 (not res!2911196)) b!7134741))

(declare-fun m!7851316 () Bool)

(assert (=> d!2226167 m!7851316))

(declare-fun m!7851318 () Bool)

(assert (=> d!2226167 m!7851318))

(declare-fun m!7851320 () Bool)

(assert (=> b!7134741 m!7851320))

(assert (=> b!7134684 d!2226167))

(declare-fun c!1330549 () Bool)

(declare-fun call!650917 () Bool)

(declare-fun bm!650912 () Bool)

(declare-fun c!1330550 () Bool)

(assert (=> bm!650912 (= call!650917 (validRegex!9283 (ite c!1330550 (reg!18445 r!11483) (ite c!1330549 (regOne!36745 r!11483) (regOne!36744 r!11483)))))))

(declare-fun b!7134762 () Bool)

(declare-fun e!4287970 () Bool)

(declare-fun call!650918 () Bool)

(assert (=> b!7134762 (= e!4287970 call!650918)))

(declare-fun b!7134763 () Bool)

(declare-fun e!4287969 () Bool)

(declare-fun e!4287971 () Bool)

(assert (=> b!7134763 (= e!4287969 e!4287971)))

(assert (=> b!7134763 (= c!1330549 (is-Union!18116 r!11483))))

(declare-fun d!2226171 () Bool)

(declare-fun res!2911211 () Bool)

(declare-fun e!4287967 () Bool)

(assert (=> d!2226171 (=> res!2911211 e!4287967)))

(assert (=> d!2226171 (= res!2911211 (is-ElementMatch!18116 r!11483))))

(assert (=> d!2226171 (= (validRegex!9283 r!11483) e!4287967)))

(declare-fun b!7134764 () Bool)

(declare-fun e!4287973 () Bool)

(assert (=> b!7134764 (= e!4287969 e!4287973)))

(declare-fun res!2911210 () Bool)

(assert (=> b!7134764 (= res!2911210 (not (nullable!7636 (reg!18445 r!11483))))))

(assert (=> b!7134764 (=> (not res!2911210) (not e!4287973))))

(declare-fun b!7134765 () Bool)

(declare-fun e!4287968 () Bool)

(declare-fun e!4287972 () Bool)

(assert (=> b!7134765 (= e!4287968 e!4287972)))

(declare-fun res!2911208 () Bool)

(assert (=> b!7134765 (=> (not res!2911208) (not e!4287972))))

(declare-fun call!650919 () Bool)

(assert (=> b!7134765 (= res!2911208 call!650919)))

(declare-fun b!7134766 () Bool)

(assert (=> b!7134766 (= e!4287972 call!650918)))

(declare-fun bm!650913 () Bool)

(assert (=> bm!650913 (= call!650919 call!650917)))

(declare-fun b!7134767 () Bool)

(declare-fun res!2911209 () Bool)

(assert (=> b!7134767 (=> res!2911209 e!4287968)))

(assert (=> b!7134767 (= res!2911209 (not (is-Concat!26961 r!11483)))))

(assert (=> b!7134767 (= e!4287971 e!4287968)))

(declare-fun b!7134768 () Bool)

(assert (=> b!7134768 (= e!4287967 e!4287969)))

(assert (=> b!7134768 (= c!1330550 (is-Star!18116 r!11483))))

(declare-fun bm!650914 () Bool)

(assert (=> bm!650914 (= call!650918 (validRegex!9283 (ite c!1330549 (regTwo!36745 r!11483) (regTwo!36744 r!11483))))))

(declare-fun b!7134769 () Bool)

(assert (=> b!7134769 (= e!4287973 call!650917)))

(declare-fun b!7134770 () Bool)

(declare-fun res!2911212 () Bool)

(assert (=> b!7134770 (=> (not res!2911212) (not e!4287970))))

(assert (=> b!7134770 (= res!2911212 call!650919)))

(assert (=> b!7134770 (= e!4287971 e!4287970)))

(assert (= (and d!2226171 (not res!2911211)) b!7134768))

(assert (= (and b!7134768 c!1330550) b!7134764))

(assert (= (and b!7134768 (not c!1330550)) b!7134763))

(assert (= (and b!7134764 res!2911210) b!7134769))

(assert (= (and b!7134763 c!1330549) b!7134770))

(assert (= (and b!7134763 (not c!1330549)) b!7134767))

(assert (= (and b!7134770 res!2911212) b!7134762))

(assert (= (and b!7134767 (not res!2911209)) b!7134765))

(assert (= (and b!7134765 res!2911208) b!7134766))

(assert (= (or b!7134762 b!7134766) bm!650914))

(assert (= (or b!7134770 b!7134765) bm!650913))

(assert (= (or b!7134769 bm!650913) bm!650912))

(declare-fun m!7851326 () Bool)

(assert (=> bm!650912 m!7851326))

(declare-fun m!7851328 () Bool)

(assert (=> b!7134764 m!7851328))

(declare-fun m!7851330 () Bool)

(assert (=> bm!650914 m!7851330))

(assert (=> start!695174 d!2226171))

(declare-fun bs!1887119 () Bool)

(declare-fun d!2226177 () Bool)

(assert (= bs!1887119 (and d!2226177 d!2226165)))

(declare-fun lambda!433381 () Int)

(assert (=> bs!1887119 (= lambda!433381 lambda!433374)))

(declare-fun bs!1887120 () Bool)

(assert (= bs!1887120 (and d!2226177 b!7134680)))

(assert (=> bs!1887120 (not (= lambda!433381 lambda!433349))))

(declare-fun bs!1887121 () Bool)

(assert (= bs!1887121 (and d!2226177 d!2226161)))

(assert (=> bs!1887121 (not (= lambda!433381 lambda!433369))))

(declare-fun bs!1887122 () Bool)

(assert (= bs!1887122 (and d!2226177 b!7134682)))

(assert (=> bs!1887122 (= lambda!433381 lambda!433351)))

(assert (=> bs!1887119 (not (= lambda!433381 lambda!433375))))

(assert (=> d!2226177 (= (inv!88355 c!164) (forall!16958 (exprs!7610 c!164) lambda!433381))))

(declare-fun bs!1887123 () Bool)

(assert (= bs!1887123 d!2226177))

(declare-fun m!7851332 () Bool)

(assert (=> bs!1887123 m!7851332))

(assert (=> start!695174 d!2226177))

(declare-fun d!2226179 () Bool)

(declare-fun res!2911217 () Bool)

(declare-fun e!4287978 () Bool)

(assert (=> d!2226179 (=> res!2911217 e!4287978)))

(assert (=> d!2226179 (= res!2911217 (is-Nil!69186 (exprs!7610 c!164)))))

(assert (=> d!2226179 (= (forall!16958 (exprs!7610 c!164) lambda!433351) e!4287978)))

(declare-fun b!7134775 () Bool)

(declare-fun e!4287979 () Bool)

(assert (=> b!7134775 (= e!4287978 e!4287979)))

(declare-fun res!2911218 () Bool)

(assert (=> b!7134775 (=> (not res!2911218) (not e!4287979))))

(declare-fun dynLambda!28133 (Int Regex!18116) Bool)

(assert (=> b!7134775 (= res!2911218 (dynLambda!28133 lambda!433351 (h!75634 (exprs!7610 c!164))))))

(declare-fun b!7134776 () Bool)

(assert (=> b!7134776 (= e!4287979 (forall!16958 (t!383327 (exprs!7610 c!164)) lambda!433351))))

(assert (= (and d!2226179 (not res!2911217)) b!7134775))

(assert (= (and b!7134775 res!2911218) b!7134776))

(declare-fun b_lambda!272205 () Bool)

(assert (=> (not b_lambda!272205) (not b!7134775)))

(declare-fun m!7851334 () Bool)

(assert (=> b!7134775 m!7851334))

(declare-fun m!7851336 () Bool)

(assert (=> b!7134776 m!7851336))

(assert (=> b!7134682 d!2226179))

(declare-fun bs!1887124 () Bool)

(declare-fun d!2226181 () Bool)

(assert (= bs!1887124 (and d!2226181 b!7134682)))

(declare-fun lambda!433388 () Int)

(assert (=> bs!1887124 (not (= lambda!433388 lambda!433350))))

(assert (=> d!2226181 true))

(declare-fun order!28491 () Int)

(declare-fun dynLambda!28134 (Int Int) Int)

(assert (=> d!2226181 (< (dynLambda!28134 order!28491 lambda!433350) (dynLambda!28134 order!28491 lambda!433388))))

(declare-fun forall!16960 (List!69311 Int) Bool)

(assert (=> d!2226181 (= (exists!3840 lt!2565479 lambda!433350) (not (forall!16960 lt!2565479 lambda!433388)))))

(declare-fun bs!1887125 () Bool)

(assert (= bs!1887125 d!2226181))

(declare-fun m!7851338 () Bool)

(assert (=> bs!1887125 m!7851338))

(assert (=> b!7134682 d!2226181))

(declare-fun bs!1887130 () Bool)

(declare-fun d!2226183 () Bool)

(assert (= bs!1887130 (and d!2226183 b!7134682)))

(declare-fun lambda!433393 () Int)

(assert (=> bs!1887130 (= lambda!433393 lambda!433350)))

(declare-fun bs!1887131 () Bool)

(assert (= bs!1887131 (and d!2226183 d!2226181)))

(assert (=> bs!1887131 (not (= lambda!433393 lambda!433388))))

(assert (=> d!2226183 true))

(assert (=> d!2226183 (exists!3840 lt!2565479 lambda!433393)))

(declare-fun lt!2565512 () Unit!163081)

(declare-fun choose!55145 (List!69311 Regex!18116) Unit!163081)

(assert (=> d!2226183 (= lt!2565512 (choose!55145 lt!2565479 lt!2565474))))

(assert (=> d!2226183 (contains!20556 (unfocusZipperList!2157 lt!2565479) lt!2565474)))

(assert (=> d!2226183 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!1 lt!2565479 lt!2565474) lt!2565512)))

(declare-fun bs!1887132 () Bool)

(assert (= bs!1887132 d!2226183))

(declare-fun m!7851346 () Bool)

(assert (=> bs!1887132 m!7851346))

(declare-fun m!7851348 () Bool)

(assert (=> bs!1887132 m!7851348))

(assert (=> bs!1887132 m!7851268))

(assert (=> bs!1887132 m!7851268))

(declare-fun m!7851350 () Bool)

(assert (=> bs!1887132 m!7851350))

(assert (=> b!7134682 d!2226183))

(declare-fun d!2226187 () Bool)

(declare-fun lt!2565515 () Regex!18116)

(assert (=> d!2226187 (validRegex!9283 lt!2565515)))

(assert (=> d!2226187 (= lt!2565515 (generalisedUnion!2621 (unfocusZipperList!2157 lt!2565479)))))

(assert (=> d!2226187 (= (unfocusZipper!2464 lt!2565479) lt!2565515)))

(declare-fun bs!1887133 () Bool)

(assert (= bs!1887133 d!2226187))

(declare-fun m!7851352 () Bool)

(assert (=> bs!1887133 m!7851352))

(assert (=> bs!1887133 m!7851268))

(assert (=> bs!1887133 m!7851268))

(declare-fun m!7851354 () Bool)

(assert (=> bs!1887133 m!7851354))

(assert (=> b!7134683 d!2226187))

(declare-fun d!2226189 () Bool)

(declare-fun e!4287988 () Bool)

(assert (=> d!2226189 e!4287988))

(declare-fun res!2911225 () Bool)

(assert (=> d!2226189 (=> (not res!2911225) (not e!4287988))))

(declare-fun lt!2565518 () List!69311)

(declare-fun noDuplicate!2805 (List!69311) Bool)

(assert (=> d!2226189 (= res!2911225 (noDuplicate!2805 lt!2565518))))

(declare-fun choose!55146 ((Set Context!14220)) List!69311)

(assert (=> d!2226189 (= lt!2565518 (choose!55146 z!3189))))

(assert (=> d!2226189 (= (toList!11147 z!3189) lt!2565518)))

(declare-fun b!7134789 () Bool)

(declare-fun content!14157 (List!69311) (Set Context!14220))

(assert (=> b!7134789 (= e!4287988 (= (content!14157 lt!2565518) z!3189))))

(assert (= (and d!2226189 res!2911225) b!7134789))

(declare-fun m!7851356 () Bool)

(assert (=> d!2226189 m!7851356))

(declare-fun m!7851358 () Bool)

(assert (=> d!2226189 m!7851358))

(declare-fun m!7851360 () Bool)

(assert (=> b!7134789 m!7851360))

(assert (=> b!7134683 d!2226189))

(declare-fun d!2226191 () Bool)

(assert (=> d!2226191 (= (nullable!7636 lt!2565474) (nullableFct!2966 lt!2565474))))

(declare-fun bs!1887134 () Bool)

(assert (= bs!1887134 d!2226191))

(declare-fun m!7851362 () Bool)

(assert (=> bs!1887134 m!7851362))

(assert (=> b!7134686 d!2226191))

(declare-fun b!7134812 () Bool)

(declare-fun e!4288007 () Regex!18116)

(assert (=> b!7134812 (= e!4288007 (h!75634 lt!2565475))))

(declare-fun b!7134813 () Bool)

(declare-fun e!4288005 () Bool)

(declare-fun lt!2565524 () Regex!18116)

(assert (=> b!7134813 (= e!4288005 (contains!20556 lt!2565475 lt!2565524))))

(declare-fun b!7134814 () Bool)

(declare-fun e!4288006 () Regex!18116)

(assert (=> b!7134814 (= e!4288007 e!4288006)))

(declare-fun c!1330562 () Bool)

(assert (=> b!7134814 (= c!1330562 (is-Cons!69186 lt!2565475))))

(declare-fun d!2226193 () Bool)

(assert (=> d!2226193 e!4288005))

(declare-fun res!2911236 () Bool)

(assert (=> d!2226193 (=> (not res!2911236) (not e!4288005))))

(assert (=> d!2226193 (= res!2911236 (dynLambda!28133 lambda!433349 lt!2565524))))

(assert (=> d!2226193 (= lt!2565524 e!4288007)))

(declare-fun c!1330561 () Bool)

(declare-fun e!4288008 () Bool)

(assert (=> d!2226193 (= c!1330561 e!4288008)))

(declare-fun res!2911237 () Bool)

(assert (=> d!2226193 (=> (not res!2911237) (not e!4288008))))

(assert (=> d!2226193 (= res!2911237 (is-Cons!69186 lt!2565475))))

(assert (=> d!2226193 (exists!3839 lt!2565475 lambda!433349)))

(assert (=> d!2226193 (= (getWitness!1865 lt!2565475 lambda!433349) lt!2565524)))

(declare-fun b!7134815 () Bool)

(assert (=> b!7134815 (= e!4288006 (getWitness!1865 (t!383327 lt!2565475) lambda!433349))))

(declare-fun b!7134816 () Bool)

(assert (=> b!7134816 (= e!4288008 (dynLambda!28133 lambda!433349 (h!75634 lt!2565475)))))

(declare-fun b!7134817 () Bool)

(declare-fun lt!2565523 () Unit!163081)

(declare-fun Unit!163085 () Unit!163081)

(assert (=> b!7134817 (= lt!2565523 Unit!163085)))

(assert (=> b!7134817 false))

(declare-fun head!14481 (List!69310) Regex!18116)

(assert (=> b!7134817 (= e!4288006 (head!14481 lt!2565475))))

(assert (= (and d!2226193 res!2911237) b!7134816))

(assert (= (and d!2226193 c!1330561) b!7134812))

(assert (= (and d!2226193 (not c!1330561)) b!7134814))

(assert (= (and b!7134814 c!1330562) b!7134815))

(assert (= (and b!7134814 (not c!1330562)) b!7134817))

(assert (= (and d!2226193 res!2911236) b!7134813))

(declare-fun b_lambda!272207 () Bool)

(assert (=> (not b_lambda!272207) (not d!2226193)))

(declare-fun b_lambda!272209 () Bool)

(assert (=> (not b_lambda!272209) (not b!7134816)))

(declare-fun m!7851364 () Bool)

(assert (=> b!7134816 m!7851364))

(declare-fun m!7851366 () Bool)

(assert (=> b!7134817 m!7851366))

(declare-fun m!7851368 () Bool)

(assert (=> d!2226193 m!7851368))

(assert (=> d!2226193 m!7851250))

(declare-fun m!7851370 () Bool)

(assert (=> b!7134815 m!7851370))

(declare-fun m!7851372 () Bool)

(assert (=> b!7134813 m!7851372))

(assert (=> b!7134686 d!2226193))

(declare-fun bs!1887135 () Bool)

(declare-fun d!2226195 () Bool)

(assert (= bs!1887135 (and d!2226195 d!2226177)))

(declare-fun lambda!433394 () Int)

(assert (=> bs!1887135 (= lambda!433394 lambda!433381)))

(declare-fun bs!1887136 () Bool)

(assert (= bs!1887136 (and d!2226195 d!2226165)))

(assert (=> bs!1887136 (= lambda!433394 lambda!433374)))

(declare-fun bs!1887137 () Bool)

(assert (= bs!1887137 (and d!2226195 b!7134680)))

(assert (=> bs!1887137 (not (= lambda!433394 lambda!433349))))

(declare-fun bs!1887138 () Bool)

(assert (= bs!1887138 (and d!2226195 d!2226161)))

(assert (=> bs!1887138 (not (= lambda!433394 lambda!433369))))

(declare-fun bs!1887139 () Bool)

(assert (= bs!1887139 (and d!2226195 b!7134682)))

(assert (=> bs!1887139 (= lambda!433394 lambda!433351)))

(assert (=> bs!1887136 (not (= lambda!433394 lambda!433375))))

(assert (=> d!2226195 (= (inv!88355 setElem!52322) (forall!16958 (exprs!7610 setElem!52322) lambda!433394))))

(declare-fun bs!1887140 () Bool)

(assert (= bs!1887140 d!2226195))

(declare-fun m!7851374 () Bool)

(assert (=> bs!1887140 m!7851374))

(assert (=> setNonEmpty!52322 d!2226195))

(declare-fun bs!1887146 () Bool)

(declare-fun d!2226197 () Bool)

(assert (= bs!1887146 (and d!2226197 d!2226177)))

(declare-fun lambda!433400 () Int)

(assert (=> bs!1887146 (= lambda!433400 lambda!433381)))

(declare-fun bs!1887147 () Bool)

(assert (= bs!1887147 (and d!2226197 d!2226165)))

(assert (=> bs!1887147 (= lambda!433400 lambda!433374)))

(declare-fun bs!1887148 () Bool)

(assert (= bs!1887148 (and d!2226197 b!7134680)))

(assert (=> bs!1887148 (not (= lambda!433400 lambda!433349))))

(declare-fun bs!1887149 () Bool)

(assert (= bs!1887149 (and d!2226197 d!2226161)))

(assert (=> bs!1887149 (not (= lambda!433400 lambda!433369))))

(declare-fun bs!1887150 () Bool)

(assert (= bs!1887150 (and d!2226197 b!7134682)))

(assert (=> bs!1887150 (= lambda!433400 lambda!433351)))

(declare-fun bs!1887151 () Bool)

(assert (= bs!1887151 (and d!2226197 d!2226195)))

(assert (=> bs!1887151 (= lambda!433400 lambda!433394)))

(assert (=> bs!1887147 (not (= lambda!433400 lambda!433375))))

(declare-fun b!7134847 () Bool)

(declare-fun e!4288033 () Bool)

(declare-fun lt!2565527 () Regex!18116)

(declare-fun isEmptyLang!2074 (Regex!18116) Bool)

(assert (=> b!7134847 (= e!4288033 (isEmptyLang!2074 lt!2565527))))

(declare-fun b!7134848 () Bool)

(declare-fun e!4288030 () Bool)

(assert (=> b!7134848 (= e!4288033 e!4288030)))

(declare-fun c!1330573 () Bool)

(declare-fun isEmpty!40042 (List!69310) Bool)

(declare-fun tail!13953 (List!69310) List!69310)

(assert (=> b!7134848 (= c!1330573 (isEmpty!40042 (tail!13953 lt!2565475)))))

(declare-fun e!4288029 () Bool)

(assert (=> d!2226197 e!4288029))

(declare-fun res!2911247 () Bool)

(assert (=> d!2226197 (=> (not res!2911247) (not e!4288029))))

(assert (=> d!2226197 (= res!2911247 (validRegex!9283 lt!2565527))))

(declare-fun e!4288031 () Regex!18116)

(assert (=> d!2226197 (= lt!2565527 e!4288031)))

(declare-fun c!1330575 () Bool)

(declare-fun e!4288032 () Bool)

(assert (=> d!2226197 (= c!1330575 e!4288032)))

(declare-fun res!2911248 () Bool)

(assert (=> d!2226197 (=> (not res!2911248) (not e!4288032))))

(assert (=> d!2226197 (= res!2911248 (is-Cons!69186 lt!2565475))))

(assert (=> d!2226197 (forall!16958 lt!2565475 lambda!433400)))

(assert (=> d!2226197 (= (generalisedUnion!2621 lt!2565475) lt!2565527)))

(declare-fun b!7134849 () Bool)

(assert (=> b!7134849 (= e!4288031 (h!75634 lt!2565475))))

(declare-fun b!7134850 () Bool)

(declare-fun e!4288028 () Regex!18116)

(assert (=> b!7134850 (= e!4288028 EmptyLang!18116)))

(declare-fun b!7134851 () Bool)

(assert (=> b!7134851 (= e!4288031 e!4288028)))

(declare-fun c!1330576 () Bool)

(assert (=> b!7134851 (= c!1330576 (is-Cons!69186 lt!2565475))))

(declare-fun b!7134852 () Bool)

(assert (=> b!7134852 (= e!4288028 (Union!18116 (h!75634 lt!2565475) (generalisedUnion!2621 (t!383327 lt!2565475))))))

(declare-fun b!7134853 () Bool)

(assert (=> b!7134853 (= e!4288032 (isEmpty!40042 (t!383327 lt!2565475)))))

(declare-fun b!7134854 () Bool)

(declare-fun isUnion!1502 (Regex!18116) Bool)

(assert (=> b!7134854 (= e!4288030 (isUnion!1502 lt!2565527))))

(declare-fun b!7134855 () Bool)

(assert (=> b!7134855 (= e!4288030 (= lt!2565527 (head!14481 lt!2565475)))))

(declare-fun b!7134856 () Bool)

(assert (=> b!7134856 (= e!4288029 e!4288033)))

(declare-fun c!1330574 () Bool)

(assert (=> b!7134856 (= c!1330574 (isEmpty!40042 lt!2565475))))

(assert (= (and d!2226197 res!2911248) b!7134853))

(assert (= (and d!2226197 c!1330575) b!7134849))

(assert (= (and d!2226197 (not c!1330575)) b!7134851))

(assert (= (and b!7134851 c!1330576) b!7134852))

(assert (= (and b!7134851 (not c!1330576)) b!7134850))

(assert (= (and d!2226197 res!2911247) b!7134856))

(assert (= (and b!7134856 c!1330574) b!7134847))

(assert (= (and b!7134856 (not c!1330574)) b!7134848))

(assert (= (and b!7134848 c!1330573) b!7134855))

(assert (= (and b!7134848 (not c!1330573)) b!7134854))

(declare-fun m!7851384 () Bool)

(assert (=> b!7134856 m!7851384))

(declare-fun m!7851386 () Bool)

(assert (=> b!7134848 m!7851386))

(assert (=> b!7134848 m!7851386))

(declare-fun m!7851388 () Bool)

(assert (=> b!7134848 m!7851388))

(declare-fun m!7851390 () Bool)

(assert (=> b!7134847 m!7851390))

(declare-fun m!7851392 () Bool)

(assert (=> b!7134853 m!7851392))

(declare-fun m!7851394 () Bool)

(assert (=> b!7134854 m!7851394))

(declare-fun m!7851396 () Bool)

(assert (=> b!7134852 m!7851396))

(declare-fun m!7851398 () Bool)

(assert (=> d!2226197 m!7851398))

(declare-fun m!7851400 () Bool)

(assert (=> d!2226197 m!7851400))

(assert (=> b!7134855 m!7851366))

(assert (=> b!7134674 d!2226197))

(declare-fun bs!1887152 () Bool)

(declare-fun d!2226203 () Bool)

(assert (= bs!1887152 (and d!2226203 d!2226165)))

(declare-fun lambda!433403 () Int)

(assert (=> bs!1887152 (= lambda!433403 lambda!433374)))

(declare-fun bs!1887153 () Bool)

(assert (= bs!1887153 (and d!2226203 b!7134680)))

(assert (=> bs!1887153 (not (= lambda!433403 lambda!433349))))

(declare-fun bs!1887154 () Bool)

(assert (= bs!1887154 (and d!2226203 d!2226161)))

(assert (=> bs!1887154 (not (= lambda!433403 lambda!433369))))

(declare-fun bs!1887155 () Bool)

(assert (= bs!1887155 (and d!2226203 b!7134682)))

(assert (=> bs!1887155 (= lambda!433403 lambda!433351)))

(declare-fun bs!1887156 () Bool)

(assert (= bs!1887156 (and d!2226203 d!2226195)))

(assert (=> bs!1887156 (= lambda!433403 lambda!433394)))

(assert (=> bs!1887152 (not (= lambda!433403 lambda!433375))))

(declare-fun bs!1887157 () Bool)

(assert (= bs!1887157 (and d!2226203 d!2226177)))

(assert (=> bs!1887157 (= lambda!433403 lambda!433381)))

(declare-fun bs!1887158 () Bool)

(assert (= bs!1887158 (and d!2226203 d!2226197)))

(assert (=> bs!1887158 (= lambda!433403 lambda!433400)))

(declare-fun lt!2565530 () List!69310)

(assert (=> d!2226203 (forall!16958 lt!2565530 lambda!433403)))

(declare-fun e!4288036 () List!69310)

(assert (=> d!2226203 (= lt!2565530 e!4288036)))

(declare-fun c!1330579 () Bool)

(assert (=> d!2226203 (= c!1330579 (is-Cons!69187 lt!2565479))))

(assert (=> d!2226203 (= (unfocusZipperList!2157 lt!2565479) lt!2565530)))

(declare-fun b!7134861 () Bool)

(declare-fun generalisedConcat!2313 (List!69310) Regex!18116)

(assert (=> b!7134861 (= e!4288036 (Cons!69186 (generalisedConcat!2313 (exprs!7610 (h!75635 lt!2565479))) (unfocusZipperList!2157 (t!383328 lt!2565479))))))

(declare-fun b!7134862 () Bool)

(assert (=> b!7134862 (= e!4288036 Nil!69186)))

(assert (= (and d!2226203 c!1330579) b!7134861))

(assert (= (and d!2226203 (not c!1330579)) b!7134862))

(declare-fun m!7851402 () Bool)

(assert (=> d!2226203 m!7851402))

(declare-fun m!7851404 () Bool)

(assert (=> b!7134861 m!7851404))

(declare-fun m!7851406 () Bool)

(assert (=> b!7134861 m!7851406))

(assert (=> b!7134674 d!2226203))

(declare-fun b!7134867 () Bool)

(declare-fun e!4288039 () Bool)

(declare-fun tp!1966940 () Bool)

(declare-fun tp!1966941 () Bool)

(assert (=> b!7134867 (= e!4288039 (and tp!1966940 tp!1966941))))

(assert (=> b!7134681 (= tp!1966904 e!4288039)))

(assert (= (and b!7134681 (is-Cons!69186 (exprs!7610 c!164))) b!7134867))

(declare-fun b!7134878 () Bool)

(declare-fun e!4288042 () Bool)

(assert (=> b!7134878 (= e!4288042 tp_is_empty!45869)))

(declare-fun b!7134881 () Bool)

(declare-fun tp!1966955 () Bool)

(declare-fun tp!1966954 () Bool)

(assert (=> b!7134881 (= e!4288042 (and tp!1966955 tp!1966954))))

(assert (=> b!7134685 (= tp!1966910 e!4288042)))

(declare-fun b!7134880 () Bool)

(declare-fun tp!1966956 () Bool)

(assert (=> b!7134880 (= e!4288042 tp!1966956)))

(declare-fun b!7134879 () Bool)

(declare-fun tp!1966952 () Bool)

(declare-fun tp!1966953 () Bool)

(assert (=> b!7134879 (= e!4288042 (and tp!1966952 tp!1966953))))

(assert (= (and b!7134685 (is-ElementMatch!18116 (reg!18445 r!11483))) b!7134878))

(assert (= (and b!7134685 (is-Concat!26961 (reg!18445 r!11483))) b!7134879))

(assert (= (and b!7134685 (is-Star!18116 (reg!18445 r!11483))) b!7134880))

(assert (= (and b!7134685 (is-Union!18116 (reg!18445 r!11483))) b!7134881))

(declare-fun b!7134882 () Bool)

(declare-fun e!4288043 () Bool)

(assert (=> b!7134882 (= e!4288043 tp_is_empty!45869)))

(declare-fun b!7134885 () Bool)

(declare-fun tp!1966960 () Bool)

(declare-fun tp!1966959 () Bool)

(assert (=> b!7134885 (= e!4288043 (and tp!1966960 tp!1966959))))

(assert (=> b!7134676 (= tp!1966906 e!4288043)))

(declare-fun b!7134884 () Bool)

(declare-fun tp!1966961 () Bool)

(assert (=> b!7134884 (= e!4288043 tp!1966961)))

(declare-fun b!7134883 () Bool)

(declare-fun tp!1966957 () Bool)

(declare-fun tp!1966958 () Bool)

(assert (=> b!7134883 (= e!4288043 (and tp!1966957 tp!1966958))))

(assert (= (and b!7134676 (is-ElementMatch!18116 (regOne!36744 r!11483))) b!7134882))

(assert (= (and b!7134676 (is-Concat!26961 (regOne!36744 r!11483))) b!7134883))

(assert (= (and b!7134676 (is-Star!18116 (regOne!36744 r!11483))) b!7134884))

(assert (= (and b!7134676 (is-Union!18116 (regOne!36744 r!11483))) b!7134885))

(declare-fun b!7134886 () Bool)

(declare-fun e!4288044 () Bool)

(assert (=> b!7134886 (= e!4288044 tp_is_empty!45869)))

(declare-fun b!7134889 () Bool)

(declare-fun tp!1966965 () Bool)

(declare-fun tp!1966964 () Bool)

(assert (=> b!7134889 (= e!4288044 (and tp!1966965 tp!1966964))))

(assert (=> b!7134676 (= tp!1966908 e!4288044)))

(declare-fun b!7134888 () Bool)

(declare-fun tp!1966966 () Bool)

(assert (=> b!7134888 (= e!4288044 tp!1966966)))

(declare-fun b!7134887 () Bool)

(declare-fun tp!1966962 () Bool)

(declare-fun tp!1966963 () Bool)

(assert (=> b!7134887 (= e!4288044 (and tp!1966962 tp!1966963))))

(assert (= (and b!7134676 (is-ElementMatch!18116 (regTwo!36744 r!11483))) b!7134886))

(assert (= (and b!7134676 (is-Concat!26961 (regTwo!36744 r!11483))) b!7134887))

(assert (= (and b!7134676 (is-Star!18116 (regTwo!36744 r!11483))) b!7134888))

(assert (= (and b!7134676 (is-Union!18116 (regTwo!36744 r!11483))) b!7134889))

(declare-fun b!7134890 () Bool)

(declare-fun e!4288045 () Bool)

(assert (=> b!7134890 (= e!4288045 tp_is_empty!45869)))

(declare-fun b!7134893 () Bool)

(declare-fun tp!1966970 () Bool)

(declare-fun tp!1966969 () Bool)

(assert (=> b!7134893 (= e!4288045 (and tp!1966970 tp!1966969))))

(assert (=> b!7134677 (= tp!1966909 e!4288045)))

(declare-fun b!7134892 () Bool)

(declare-fun tp!1966971 () Bool)

(assert (=> b!7134892 (= e!4288045 tp!1966971)))

(declare-fun b!7134891 () Bool)

(declare-fun tp!1966967 () Bool)

(declare-fun tp!1966968 () Bool)

(assert (=> b!7134891 (= e!4288045 (and tp!1966967 tp!1966968))))

(assert (= (and b!7134677 (is-ElementMatch!18116 (regOne!36745 r!11483))) b!7134890))

(assert (= (and b!7134677 (is-Concat!26961 (regOne!36745 r!11483))) b!7134891))

(assert (= (and b!7134677 (is-Star!18116 (regOne!36745 r!11483))) b!7134892))

(assert (= (and b!7134677 (is-Union!18116 (regOne!36745 r!11483))) b!7134893))

(declare-fun b!7134894 () Bool)

(declare-fun e!4288046 () Bool)

(assert (=> b!7134894 (= e!4288046 tp_is_empty!45869)))

(declare-fun b!7134897 () Bool)

(declare-fun tp!1966975 () Bool)

(declare-fun tp!1966974 () Bool)

(assert (=> b!7134897 (= e!4288046 (and tp!1966975 tp!1966974))))

(assert (=> b!7134677 (= tp!1966905 e!4288046)))

(declare-fun b!7134896 () Bool)

(declare-fun tp!1966976 () Bool)

(assert (=> b!7134896 (= e!4288046 tp!1966976)))

(declare-fun b!7134895 () Bool)

(declare-fun tp!1966972 () Bool)

(declare-fun tp!1966973 () Bool)

(assert (=> b!7134895 (= e!4288046 (and tp!1966972 tp!1966973))))

(assert (= (and b!7134677 (is-ElementMatch!18116 (regTwo!36745 r!11483))) b!7134894))

(assert (= (and b!7134677 (is-Concat!26961 (regTwo!36745 r!11483))) b!7134895))

(assert (= (and b!7134677 (is-Star!18116 (regTwo!36745 r!11483))) b!7134896))

(assert (= (and b!7134677 (is-Union!18116 (regTwo!36745 r!11483))) b!7134897))

(declare-fun b!7134898 () Bool)

(declare-fun e!4288047 () Bool)

(declare-fun tp!1966977 () Bool)

(declare-fun tp!1966978 () Bool)

(assert (=> b!7134898 (= e!4288047 (and tp!1966977 tp!1966978))))

(assert (=> b!7134678 (= tp!1966911 e!4288047)))

(assert (= (and b!7134678 (is-Cons!69186 (exprs!7610 setElem!52322))) b!7134898))

(declare-fun condSetEmpty!52328 () Bool)

(assert (=> setNonEmpty!52322 (= condSetEmpty!52328 (= setRest!52322 (as set.empty (Set Context!14220))))))

(declare-fun setRes!52328 () Bool)

(assert (=> setNonEmpty!52322 (= tp!1966907 setRes!52328)))

(declare-fun setIsEmpty!52328 () Bool)

(assert (=> setIsEmpty!52328 setRes!52328))

(declare-fun setElem!52328 () Context!14220)

(declare-fun e!4288050 () Bool)

(declare-fun tp!1966984 () Bool)

(declare-fun setNonEmpty!52328 () Bool)

(assert (=> setNonEmpty!52328 (= setRes!52328 (and tp!1966984 (inv!88355 setElem!52328) e!4288050))))

(declare-fun setRest!52328 () (Set Context!14220))

(assert (=> setNonEmpty!52328 (= setRest!52322 (set.union (set.insert setElem!52328 (as set.empty (Set Context!14220))) setRest!52328))))

(declare-fun b!7134903 () Bool)

(declare-fun tp!1966983 () Bool)

(assert (=> b!7134903 (= e!4288050 tp!1966983)))

(assert (= (and setNonEmpty!52322 condSetEmpty!52328) setIsEmpty!52328))

(assert (= (and setNonEmpty!52322 (not condSetEmpty!52328)) setNonEmpty!52328))

(assert (= setNonEmpty!52328 b!7134903))

(declare-fun m!7851408 () Bool)

(assert (=> setNonEmpty!52328 m!7851408))

(declare-fun b_lambda!272211 () Bool)

(assert (= b_lambda!272209 (or b!7134680 b_lambda!272211)))

(declare-fun bs!1887159 () Bool)

(declare-fun d!2226205 () Bool)

(assert (= bs!1887159 (and d!2226205 b!7134680)))

(assert (=> bs!1887159 (= (dynLambda!28133 lambda!433349 (h!75634 lt!2565475)) (nullable!7636 (h!75634 lt!2565475)))))

(declare-fun m!7851410 () Bool)

(assert (=> bs!1887159 m!7851410))

(assert (=> b!7134816 d!2226205))

(declare-fun b_lambda!272213 () Bool)

(assert (= b_lambda!272207 (or b!7134680 b_lambda!272213)))

(declare-fun bs!1887160 () Bool)

(declare-fun d!2226207 () Bool)

(assert (= bs!1887160 (and d!2226207 b!7134680)))

(assert (=> bs!1887160 (= (dynLambda!28133 lambda!433349 lt!2565524) (nullable!7636 lt!2565524))))

(declare-fun m!7851412 () Bool)

(assert (=> bs!1887160 m!7851412))

(assert (=> d!2226193 d!2226207))

(declare-fun b_lambda!272215 () Bool)

(assert (= b_lambda!272205 (or b!7134682 b_lambda!272215)))

(declare-fun bs!1887161 () Bool)

(declare-fun d!2226209 () Bool)

(assert (= bs!1887161 (and d!2226209 b!7134682)))

(assert (=> bs!1887161 (= (dynLambda!28133 lambda!433351 (h!75634 (exprs!7610 c!164))) (validRegex!9283 (h!75634 (exprs!7610 c!164))))))

(declare-fun m!7851414 () Bool)

(assert (=> bs!1887161 m!7851414))

(assert (=> b!7134775 d!2226209))

(push 1)

(assert (not d!2226191))

(assert (not d!2226197))

(assert (not d!2226183))

(assert (not b_lambda!272213))

(assert (not b_lambda!272215))

(assert (not b!7134815))

(assert (not b!7134883))

(assert (not b!7134880))

(assert (not b!7134764))

(assert (not b!7134892))

(assert (not bm!650912))

(assert (not d!2226177))

(assert (not b!7134847))

(assert (not b!7134897))

(assert (not b!7134789))

(assert (not b!7134903))

(assert (not b!7134896))

(assert (not b!7134861))

(assert (not b!7134895))

(assert (not d!2226187))

(assert (not b!7134817))

(assert (not b!7134898))

(assert (not b_lambda!272211))

(assert (not d!2226165))

(assert (not bm!650914))

(assert (not d!2226195))

(assert (not b!7134887))

(assert (not b!7134848))

(assert (not bs!1887161))

(assert (not b!7134867))

(assert (not b!7134885))

(assert (not b!7134888))

(assert (not d!2226203))

(assert (not b!7134856))

(assert (not b!7134889))

(assert (not d!2226193))

(assert (not b!7134855))

(assert (not b!7134852))

(assert (not setNonEmpty!52328))

(assert (not b!7134884))

(assert tp_is_empty!45869)

(assert (not b!7134741))

(assert (not bs!1887160))

(assert (not b!7134854))

(assert (not d!2226163))

(assert (not b!7134893))

(assert (not b!7134776))

(assert (not b!7134881))

(assert (not b!7134853))

(assert (not b!7134879))

(assert (not b!7134813))

(assert (not bs!1887159))

(assert (not d!2226161))

(assert (not d!2226189))

(assert (not d!2226167))

(assert (not b!7134891))

(assert (not d!2226181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

