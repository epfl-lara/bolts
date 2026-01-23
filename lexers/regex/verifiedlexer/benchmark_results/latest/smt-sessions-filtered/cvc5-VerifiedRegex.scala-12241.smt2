; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689490 () Bool)

(assert start!689490)

(declare-fun b!7084079 () Bool)

(assert (=> b!7084079 true))

(declare-fun e!4258950 () Bool)

(declare-fun e!4258953 () Bool)

(assert (=> b!7084079 (= e!4258950 e!4258953)))

(declare-fun res!2894061 () Bool)

(assert (=> b!7084079 (=> (not res!2894061) (not e!4258953))))

(declare-datatypes ((C!35718 0))(
  ( (C!35719 (val!27565 Int)) )
))
(declare-datatypes ((Regex!17724 0))(
  ( (ElementMatch!17724 (c!1322259 C!35718)) (Concat!26569 (regOne!35960 Regex!17724) (regTwo!35960 Regex!17724)) (EmptyExpr!17724) (Star!17724 (reg!18053 Regex!17724)) (EmptyLang!17724) (Union!17724 (regOne!35961 Regex!17724) (regTwo!35961 Regex!17724)) )
))
(declare-fun r!11554 () Regex!17724)

(declare-fun a!1901 () C!35718)

(assert (=> b!7084079 (= res!2894061 (and (is-ElementMatch!17724 r!11554) (= (c!1322259 r!11554) a!1901)))))

(declare-fun b!7084080 () Bool)

(declare-fun e!4258952 () Bool)

(declare-fun tp!1944466 () Bool)

(declare-fun tp!1944467 () Bool)

(assert (=> b!7084080 (= e!4258952 (and tp!1944466 tp!1944467))))

(declare-fun b!7084081 () Bool)

(declare-fun tp!1944471 () Bool)

(declare-fun tp!1944470 () Bool)

(assert (=> b!7084081 (= e!4258952 (and tp!1944471 tp!1944470))))

(declare-fun b!7084082 () Bool)

(declare-datatypes ((List!68687 0))(
  ( (Nil!68563) (Cons!68563 (h!75011 Regex!17724) (t!382472 List!68687)) )
))
(declare-datatypes ((Context!13440 0))(
  ( (Context!13441 (exprs!7220 List!68687)) )
))
(declare-fun c!9994 () Context!13440)

(declare-fun lambda!428793 () Int)

(declare-fun forall!16680 (List!68687 Int) Bool)

(assert (=> b!7084082 (= e!4258953 (not (forall!16680 (exprs!7220 c!9994) lambda!428793)))))

(declare-fun lt!2554277 () (Set Context!13440))

(declare-fun lambda!428792 () Int)

(declare-fun auxCtx!45 () Context!13440)

(declare-fun map!16077 ((Set Context!13440) Int) (Set Context!13440))

(declare-fun ++!15901 (List!68687 List!68687) List!68687)

(assert (=> b!7084082 (= (map!16077 lt!2554277 lambda!428792) (set.insert (Context!13441 (++!15901 (exprs!7220 c!9994) (exprs!7220 auxCtx!45))) (as set.empty (Set Context!13440))))))

(declare-datatypes ((Unit!162155 0))(
  ( (Unit!162156) )
))
(declare-fun lt!2554279 () Unit!162155)

(declare-fun lemmaConcatPreservesForall!1031 (List!68687 List!68687 Int) Unit!162155)

(assert (=> b!7084082 (= lt!2554279 (lemmaConcatPreservesForall!1031 (exprs!7220 c!9994) (exprs!7220 auxCtx!45) lambda!428793))))

(declare-fun lt!2554278 () Unit!162155)

(declare-fun lemmaMapOnSingletonSet!437 ((Set Context!13440) Context!13440 Int) Unit!162155)

(assert (=> b!7084082 (= lt!2554278 (lemmaMapOnSingletonSet!437 lt!2554277 c!9994 lambda!428792))))

(assert (=> b!7084082 (= lt!2554277 (set.insert c!9994 (as set.empty (Set Context!13440))))))

(declare-fun b!7084083 () Bool)

(declare-fun e!4258951 () Bool)

(declare-fun tp!1944465 () Bool)

(assert (=> b!7084083 (= e!4258951 tp!1944465)))

(declare-fun res!2894062 () Bool)

(assert (=> start!689490 (=> (not res!2894062) (not e!4258950))))

(declare-fun validRegex!8999 (Regex!17724) Bool)

(assert (=> start!689490 (= res!2894062 (validRegex!8999 r!11554))))

(assert (=> start!689490 e!4258950))

(assert (=> start!689490 e!4258952))

(declare-fun inv!87176 (Context!13440) Bool)

(assert (=> start!689490 (and (inv!87176 c!9994) e!4258951)))

(declare-fun tp_is_empty!44681 () Bool)

(assert (=> start!689490 tp_is_empty!44681))

(declare-fun e!4258949 () Bool)

(assert (=> start!689490 (and (inv!87176 auxCtx!45) e!4258949)))

(declare-fun b!7084084 () Bool)

(declare-fun tp!1944469 () Bool)

(assert (=> b!7084084 (= e!4258952 tp!1944469)))

(declare-fun b!7084085 () Bool)

(declare-fun tp!1944468 () Bool)

(assert (=> b!7084085 (= e!4258949 tp!1944468)))

(declare-fun b!7084086 () Bool)

(assert (=> b!7084086 (= e!4258952 tp_is_empty!44681)))

(assert (= (and start!689490 res!2894062) b!7084079))

(assert (= (and b!7084079 res!2894061) b!7084082))

(assert (= (and start!689490 (is-ElementMatch!17724 r!11554)) b!7084086))

(assert (= (and start!689490 (is-Concat!26569 r!11554)) b!7084081))

(assert (= (and start!689490 (is-Star!17724 r!11554)) b!7084084))

(assert (= (and start!689490 (is-Union!17724 r!11554)) b!7084080))

(assert (= start!689490 b!7084083))

(assert (= start!689490 b!7084085))

(declare-fun m!7815960 () Bool)

(assert (=> b!7084082 m!7815960))

(declare-fun m!7815962 () Bool)

(assert (=> b!7084082 m!7815962))

(declare-fun m!7815964 () Bool)

(assert (=> b!7084082 m!7815964))

(declare-fun m!7815966 () Bool)

(assert (=> b!7084082 m!7815966))

(declare-fun m!7815968 () Bool)

(assert (=> b!7084082 m!7815968))

(declare-fun m!7815970 () Bool)

(assert (=> b!7084082 m!7815970))

(declare-fun m!7815972 () Bool)

(assert (=> b!7084082 m!7815972))

(declare-fun m!7815974 () Bool)

(assert (=> start!689490 m!7815974))

(declare-fun m!7815976 () Bool)

(assert (=> start!689490 m!7815976))

(declare-fun m!7815978 () Bool)

(assert (=> start!689490 m!7815978))

(push 1)

(assert (not b!7084082))

(assert (not b!7084084))

(assert (not b!7084081))

(assert (not b!7084085))

(assert tp_is_empty!44681)

(assert (not b!7084083))

(assert (not b!7084080))

(assert (not start!689490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!643664 () Bool)

(declare-fun c!1322266 () Bool)

(declare-fun bm!643658 () Bool)

(declare-fun c!1322265 () Bool)

(assert (=> bm!643658 (= call!643664 (validRegex!8999 (ite c!1322266 (reg!18053 r!11554) (ite c!1322265 (regTwo!35961 r!11554) (regOne!35960 r!11554)))))))

(declare-fun b!7084133 () Bool)

(declare-fun e!4258987 () Bool)

(declare-fun e!4258985 () Bool)

(assert (=> b!7084133 (= e!4258987 e!4258985)))

(assert (=> b!7084133 (= c!1322265 (is-Union!17724 r!11554))))

(declare-fun b!7084134 () Bool)

(declare-fun e!4258988 () Bool)

(declare-fun call!643662 () Bool)

(assert (=> b!7084134 (= e!4258988 call!643662)))

(declare-fun b!7084135 () Bool)

(declare-fun e!4258983 () Bool)

(declare-fun call!643663 () Bool)

(assert (=> b!7084135 (= e!4258983 call!643663)))

(declare-fun b!7084136 () Bool)

(declare-fun res!2894084 () Bool)

(assert (=> b!7084136 (=> (not res!2894084) (not e!4258988))))

(assert (=> b!7084136 (= res!2894084 call!643663)))

(assert (=> b!7084136 (= e!4258985 e!4258988)))

(declare-fun b!7084137 () Bool)

(declare-fun e!4258986 () Bool)

(assert (=> b!7084137 (= e!4258986 call!643664)))

(declare-fun bm!643657 () Bool)

(assert (=> bm!643657 (= call!643663 (validRegex!8999 (ite c!1322265 (regOne!35961 r!11554) (regTwo!35960 r!11554))))))

(declare-fun d!2215744 () Bool)

(declare-fun res!2894085 () Bool)

(declare-fun e!4258984 () Bool)

(assert (=> d!2215744 (=> res!2894085 e!4258984)))

(assert (=> d!2215744 (= res!2894085 (is-ElementMatch!17724 r!11554))))

(assert (=> d!2215744 (= (validRegex!8999 r!11554) e!4258984)))

(declare-fun b!7084138 () Bool)

(assert (=> b!7084138 (= e!4258984 e!4258987)))

(assert (=> b!7084138 (= c!1322266 (is-Star!17724 r!11554))))

(declare-fun b!7084139 () Bool)

(declare-fun e!4258989 () Bool)

(assert (=> b!7084139 (= e!4258989 e!4258983)))

(declare-fun res!2894082 () Bool)

(assert (=> b!7084139 (=> (not res!2894082) (not e!4258983))))

(assert (=> b!7084139 (= res!2894082 call!643662)))

(declare-fun b!7084140 () Bool)

(assert (=> b!7084140 (= e!4258987 e!4258986)))

(declare-fun res!2894083 () Bool)

(declare-fun nullable!7381 (Regex!17724) Bool)

(assert (=> b!7084140 (= res!2894083 (not (nullable!7381 (reg!18053 r!11554))))))

(assert (=> b!7084140 (=> (not res!2894083) (not e!4258986))))

(declare-fun bm!643659 () Bool)

(assert (=> bm!643659 (= call!643662 call!643664)))

(declare-fun b!7084141 () Bool)

(declare-fun res!2894081 () Bool)

(assert (=> b!7084141 (=> res!2894081 e!4258989)))

(assert (=> b!7084141 (= res!2894081 (not (is-Concat!26569 r!11554)))))

(assert (=> b!7084141 (= e!4258985 e!4258989)))

(assert (= (and d!2215744 (not res!2894085)) b!7084138))

(assert (= (and b!7084138 c!1322266) b!7084140))

(assert (= (and b!7084138 (not c!1322266)) b!7084133))

(assert (= (and b!7084140 res!2894083) b!7084137))

(assert (= (and b!7084133 c!1322265) b!7084136))

(assert (= (and b!7084133 (not c!1322265)) b!7084141))

(assert (= (and b!7084136 res!2894084) b!7084134))

(assert (= (and b!7084141 (not res!2894081)) b!7084139))

(assert (= (and b!7084139 res!2894082) b!7084135))

(assert (= (or b!7084136 b!7084135) bm!643657))

(assert (= (or b!7084134 b!7084139) bm!643659))

(assert (= (or b!7084137 bm!643659) bm!643658))

(declare-fun m!7816000 () Bool)

(assert (=> bm!643658 m!7816000))

(declare-fun m!7816002 () Bool)

(assert (=> bm!643657 m!7816002))

(declare-fun m!7816004 () Bool)

(assert (=> b!7084140 m!7816004))

(assert (=> start!689490 d!2215744))

(declare-fun bs!1882769 () Bool)

(declare-fun d!2215746 () Bool)

(assert (= bs!1882769 (and d!2215746 b!7084082)))

(declare-fun lambda!428806 () Int)

(assert (=> bs!1882769 (= lambda!428806 lambda!428793)))

(assert (=> d!2215746 (= (inv!87176 c!9994) (forall!16680 (exprs!7220 c!9994) lambda!428806))))

(declare-fun bs!1882770 () Bool)

(assert (= bs!1882770 d!2215746))

(declare-fun m!7816006 () Bool)

(assert (=> bs!1882770 m!7816006))

(assert (=> start!689490 d!2215746))

(declare-fun bs!1882771 () Bool)

(declare-fun d!2215748 () Bool)

(assert (= bs!1882771 (and d!2215748 b!7084082)))

(declare-fun lambda!428807 () Int)

(assert (=> bs!1882771 (= lambda!428807 lambda!428793)))

(declare-fun bs!1882772 () Bool)

(assert (= bs!1882772 (and d!2215748 d!2215746)))

(assert (=> bs!1882772 (= lambda!428807 lambda!428806)))

(assert (=> d!2215748 (= (inv!87176 auxCtx!45) (forall!16680 (exprs!7220 auxCtx!45) lambda!428807))))

(declare-fun bs!1882773 () Bool)

(assert (= bs!1882773 d!2215748))

(declare-fun m!7816008 () Bool)

(assert (=> bs!1882773 m!7816008))

(assert (=> start!689490 d!2215748))

(declare-fun d!2215750 () Bool)

(assert (=> d!2215750 (forall!16680 (++!15901 (exprs!7220 c!9994) (exprs!7220 auxCtx!45)) lambda!428793)))

(declare-fun lt!2554293 () Unit!162155)

(declare-fun choose!54582 (List!68687 List!68687 Int) Unit!162155)

(assert (=> d!2215750 (= lt!2554293 (choose!54582 (exprs!7220 c!9994) (exprs!7220 auxCtx!45) lambda!428793))))

(assert (=> d!2215750 (forall!16680 (exprs!7220 c!9994) lambda!428793)))

(assert (=> d!2215750 (= (lemmaConcatPreservesForall!1031 (exprs!7220 c!9994) (exprs!7220 auxCtx!45) lambda!428793) lt!2554293)))

(declare-fun bs!1882774 () Bool)

(assert (= bs!1882774 d!2215750))

(assert (=> bs!1882774 m!7815968))

(assert (=> bs!1882774 m!7815968))

(declare-fun m!7816010 () Bool)

(assert (=> bs!1882774 m!7816010))

(declare-fun m!7816012 () Bool)

(assert (=> bs!1882774 m!7816012))

(assert (=> bs!1882774 m!7815972))

(assert (=> b!7084082 d!2215750))

(declare-fun b!7084150 () Bool)

(declare-fun e!4258995 () List!68687)

(assert (=> b!7084150 (= e!4258995 (exprs!7220 auxCtx!45))))

(declare-fun b!7084151 () Bool)

(assert (=> b!7084151 (= e!4258995 (Cons!68563 (h!75011 (exprs!7220 c!9994)) (++!15901 (t!382472 (exprs!7220 c!9994)) (exprs!7220 auxCtx!45))))))

(declare-fun lt!2554296 () List!68687)

(declare-fun b!7084153 () Bool)

(declare-fun e!4258994 () Bool)

(assert (=> b!7084153 (= e!4258994 (or (not (= (exprs!7220 auxCtx!45) Nil!68563)) (= lt!2554296 (exprs!7220 c!9994))))))

(declare-fun b!7084152 () Bool)

(declare-fun res!2894091 () Bool)

(assert (=> b!7084152 (=> (not res!2894091) (not e!4258994))))

(declare-fun size!41286 (List!68687) Int)

(assert (=> b!7084152 (= res!2894091 (= (size!41286 lt!2554296) (+ (size!41286 (exprs!7220 c!9994)) (size!41286 (exprs!7220 auxCtx!45)))))))

(declare-fun d!2215754 () Bool)

(assert (=> d!2215754 e!4258994))

(declare-fun res!2894090 () Bool)

(assert (=> d!2215754 (=> (not res!2894090) (not e!4258994))))

(declare-fun content!13911 (List!68687) (Set Regex!17724))

(assert (=> d!2215754 (= res!2894090 (= (content!13911 lt!2554296) (set.union (content!13911 (exprs!7220 c!9994)) (content!13911 (exprs!7220 auxCtx!45)))))))

(assert (=> d!2215754 (= lt!2554296 e!4258995)))

(declare-fun c!1322269 () Bool)

(assert (=> d!2215754 (= c!1322269 (is-Nil!68563 (exprs!7220 c!9994)))))

(assert (=> d!2215754 (= (++!15901 (exprs!7220 c!9994) (exprs!7220 auxCtx!45)) lt!2554296)))

(assert (= (and d!2215754 c!1322269) b!7084150))

(assert (= (and d!2215754 (not c!1322269)) b!7084151))

(assert (= (and d!2215754 res!2894090) b!7084152))

(assert (= (and b!7084152 res!2894091) b!7084153))

(declare-fun m!7816016 () Bool)

(assert (=> b!7084151 m!7816016))

(declare-fun m!7816018 () Bool)

(assert (=> b!7084152 m!7816018))

(declare-fun m!7816020 () Bool)

(assert (=> b!7084152 m!7816020))

(declare-fun m!7816022 () Bool)

(assert (=> b!7084152 m!7816022))

(declare-fun m!7816024 () Bool)

(assert (=> d!2215754 m!7816024))

(declare-fun m!7816026 () Bool)

(assert (=> d!2215754 m!7816026))

(declare-fun m!7816028 () Bool)

(assert (=> d!2215754 m!7816028))

(assert (=> b!7084082 d!2215754))

(declare-fun d!2215758 () Bool)

(declare-fun dynLambda!27953 (Int Context!13440) Context!13440)

(assert (=> d!2215758 (= (map!16077 lt!2554277 lambda!428792) (set.insert (dynLambda!27953 lambda!428792 c!9994) (as set.empty (Set Context!13440))))))

(declare-fun lt!2554301 () Unit!162155)

(declare-fun choose!54583 ((Set Context!13440) Context!13440 Int) Unit!162155)

(assert (=> d!2215758 (= lt!2554301 (choose!54583 lt!2554277 c!9994 lambda!428792))))

(assert (=> d!2215758 (= lt!2554277 (set.insert c!9994 (as set.empty (Set Context!13440))))))

(assert (=> d!2215758 (= (lemmaMapOnSingletonSet!437 lt!2554277 c!9994 lambda!428792) lt!2554301)))

(declare-fun b_lambda!270753 () Bool)

(assert (=> (not b_lambda!270753) (not d!2215758)))

(declare-fun bs!1882776 () Bool)

(assert (= bs!1882776 d!2215758))

(assert (=> bs!1882776 m!7815970))

(assert (=> bs!1882776 m!7815960))

(declare-fun m!7816030 () Bool)

(assert (=> bs!1882776 m!7816030))

(assert (=> bs!1882776 m!7816030))

(declare-fun m!7816032 () Bool)

(assert (=> bs!1882776 m!7816032))

(declare-fun m!7816034 () Bool)

(assert (=> bs!1882776 m!7816034))

(assert (=> b!7084082 d!2215758))

(declare-fun d!2215760 () Bool)

(declare-fun res!2894100 () Bool)

(declare-fun e!4259004 () Bool)

(assert (=> d!2215760 (=> res!2894100 e!4259004)))

(assert (=> d!2215760 (= res!2894100 (is-Nil!68563 (exprs!7220 c!9994)))))

(assert (=> d!2215760 (= (forall!16680 (exprs!7220 c!9994) lambda!428793) e!4259004)))

(declare-fun b!7084166 () Bool)

(declare-fun e!4259005 () Bool)

(assert (=> b!7084166 (= e!4259004 e!4259005)))

(declare-fun res!2894101 () Bool)

(assert (=> b!7084166 (=> (not res!2894101) (not e!4259005))))

(declare-fun dynLambda!27954 (Int Regex!17724) Bool)

(assert (=> b!7084166 (= res!2894101 (dynLambda!27954 lambda!428793 (h!75011 (exprs!7220 c!9994))))))

(declare-fun b!7084167 () Bool)

(assert (=> b!7084167 (= e!4259005 (forall!16680 (t!382472 (exprs!7220 c!9994)) lambda!428793))))

(assert (= (and d!2215760 (not res!2894100)) b!7084166))

(assert (= (and b!7084166 res!2894101) b!7084167))

(declare-fun b_lambda!270755 () Bool)

(assert (=> (not b_lambda!270755) (not b!7084166)))

(declare-fun m!7816036 () Bool)

(assert (=> b!7084166 m!7816036))

(declare-fun m!7816038 () Bool)

(assert (=> b!7084167 m!7816038))

(assert (=> b!7084082 d!2215760))

(declare-fun d!2215762 () Bool)

(declare-fun choose!54584 ((Set Context!13440) Int) (Set Context!13440))

(assert (=> d!2215762 (= (map!16077 lt!2554277 lambda!428792) (choose!54584 lt!2554277 lambda!428792))))

(declare-fun bs!1882777 () Bool)

(assert (= bs!1882777 d!2215762))

(declare-fun m!7816040 () Bool)

(assert (=> bs!1882777 m!7816040))

(assert (=> b!7084082 d!2215762))

(declare-fun b!7084185 () Bool)

(declare-fun e!4259010 () Bool)

(declare-fun tp!1944506 () Bool)

(declare-fun tp!1944505 () Bool)

(assert (=> b!7084185 (= e!4259010 (and tp!1944506 tp!1944505))))

(declare-fun b!7084182 () Bool)

(assert (=> b!7084182 (= e!4259010 tp_is_empty!44681)))

(declare-fun b!7084183 () Bool)

(declare-fun tp!1944504 () Bool)

(declare-fun tp!1944503 () Bool)

(assert (=> b!7084183 (= e!4259010 (and tp!1944504 tp!1944503))))

(assert (=> b!7084081 (= tp!1944471 e!4259010)))

(declare-fun b!7084184 () Bool)

(declare-fun tp!1944507 () Bool)

(assert (=> b!7084184 (= e!4259010 tp!1944507)))

(assert (= (and b!7084081 (is-ElementMatch!17724 (regOne!35960 r!11554))) b!7084182))

(assert (= (and b!7084081 (is-Concat!26569 (regOne!35960 r!11554))) b!7084183))

(assert (= (and b!7084081 (is-Star!17724 (regOne!35960 r!11554))) b!7084184))

(assert (= (and b!7084081 (is-Union!17724 (regOne!35960 r!11554))) b!7084185))

(declare-fun b!7084189 () Bool)

(declare-fun e!4259011 () Bool)

(declare-fun tp!1944511 () Bool)

(declare-fun tp!1944510 () Bool)

(assert (=> b!7084189 (= e!4259011 (and tp!1944511 tp!1944510))))

(declare-fun b!7084186 () Bool)

(assert (=> b!7084186 (= e!4259011 tp_is_empty!44681)))

(declare-fun b!7084187 () Bool)

(declare-fun tp!1944509 () Bool)

(declare-fun tp!1944508 () Bool)

(assert (=> b!7084187 (= e!4259011 (and tp!1944509 tp!1944508))))

(assert (=> b!7084081 (= tp!1944470 e!4259011)))

(declare-fun b!7084188 () Bool)

(declare-fun tp!1944512 () Bool)

(assert (=> b!7084188 (= e!4259011 tp!1944512)))

(assert (= (and b!7084081 (is-ElementMatch!17724 (regTwo!35960 r!11554))) b!7084186))

(assert (= (and b!7084081 (is-Concat!26569 (regTwo!35960 r!11554))) b!7084187))

(assert (= (and b!7084081 (is-Star!17724 (regTwo!35960 r!11554))) b!7084188))

(assert (= (and b!7084081 (is-Union!17724 (regTwo!35960 r!11554))) b!7084189))

(declare-fun b!7084193 () Bool)

(declare-fun e!4259012 () Bool)

(declare-fun tp!1944516 () Bool)

(declare-fun tp!1944515 () Bool)

(assert (=> b!7084193 (= e!4259012 (and tp!1944516 tp!1944515))))

(declare-fun b!7084190 () Bool)

(assert (=> b!7084190 (= e!4259012 tp_is_empty!44681)))

(declare-fun b!7084191 () Bool)

(declare-fun tp!1944514 () Bool)

(declare-fun tp!1944513 () Bool)

(assert (=> b!7084191 (= e!4259012 (and tp!1944514 tp!1944513))))

(assert (=> b!7084080 (= tp!1944466 e!4259012)))

(declare-fun b!7084192 () Bool)

(declare-fun tp!1944517 () Bool)

(assert (=> b!7084192 (= e!4259012 tp!1944517)))

(assert (= (and b!7084080 (is-ElementMatch!17724 (regOne!35961 r!11554))) b!7084190))

(assert (= (and b!7084080 (is-Concat!26569 (regOne!35961 r!11554))) b!7084191))

(assert (= (and b!7084080 (is-Star!17724 (regOne!35961 r!11554))) b!7084192))

(assert (= (and b!7084080 (is-Union!17724 (regOne!35961 r!11554))) b!7084193))

(declare-fun b!7084197 () Bool)

(declare-fun e!4259013 () Bool)

(declare-fun tp!1944521 () Bool)

(declare-fun tp!1944520 () Bool)

(assert (=> b!7084197 (= e!4259013 (and tp!1944521 tp!1944520))))

(declare-fun b!7084194 () Bool)

(assert (=> b!7084194 (= e!4259013 tp_is_empty!44681)))

(declare-fun b!7084195 () Bool)

(declare-fun tp!1944519 () Bool)

(declare-fun tp!1944518 () Bool)

(assert (=> b!7084195 (= e!4259013 (and tp!1944519 tp!1944518))))

(assert (=> b!7084080 (= tp!1944467 e!4259013)))

(declare-fun b!7084196 () Bool)

(declare-fun tp!1944522 () Bool)

(assert (=> b!7084196 (= e!4259013 tp!1944522)))

(assert (= (and b!7084080 (is-ElementMatch!17724 (regTwo!35961 r!11554))) b!7084194))

(assert (= (and b!7084080 (is-Concat!26569 (regTwo!35961 r!11554))) b!7084195))

(assert (= (and b!7084080 (is-Star!17724 (regTwo!35961 r!11554))) b!7084196))

(assert (= (and b!7084080 (is-Union!17724 (regTwo!35961 r!11554))) b!7084197))

(declare-fun b!7084202 () Bool)

(declare-fun e!4259016 () Bool)

(declare-fun tp!1944527 () Bool)

(declare-fun tp!1944528 () Bool)

(assert (=> b!7084202 (= e!4259016 (and tp!1944527 tp!1944528))))

(assert (=> b!7084085 (= tp!1944468 e!4259016)))

(assert (= (and b!7084085 (is-Cons!68563 (exprs!7220 auxCtx!45))) b!7084202))

(declare-fun b!7084206 () Bool)

(declare-fun e!4259017 () Bool)

(declare-fun tp!1944532 () Bool)

(declare-fun tp!1944531 () Bool)

(assert (=> b!7084206 (= e!4259017 (and tp!1944532 tp!1944531))))

(declare-fun b!7084203 () Bool)

(assert (=> b!7084203 (= e!4259017 tp_is_empty!44681)))

(declare-fun b!7084204 () Bool)

(declare-fun tp!1944530 () Bool)

(declare-fun tp!1944529 () Bool)

(assert (=> b!7084204 (= e!4259017 (and tp!1944530 tp!1944529))))

(assert (=> b!7084084 (= tp!1944469 e!4259017)))

(declare-fun b!7084205 () Bool)

(declare-fun tp!1944533 () Bool)

(assert (=> b!7084205 (= e!4259017 tp!1944533)))

(assert (= (and b!7084084 (is-ElementMatch!17724 (reg!18053 r!11554))) b!7084203))

(assert (= (and b!7084084 (is-Concat!26569 (reg!18053 r!11554))) b!7084204))

(assert (= (and b!7084084 (is-Star!17724 (reg!18053 r!11554))) b!7084205))

(assert (= (and b!7084084 (is-Union!17724 (reg!18053 r!11554))) b!7084206))

(declare-fun b!7084207 () Bool)

(declare-fun e!4259018 () Bool)

(declare-fun tp!1944534 () Bool)

(declare-fun tp!1944535 () Bool)

(assert (=> b!7084207 (= e!4259018 (and tp!1944534 tp!1944535))))

(assert (=> b!7084083 (= tp!1944465 e!4259018)))

(assert (= (and b!7084083 (is-Cons!68563 (exprs!7220 c!9994))) b!7084207))

(declare-fun b_lambda!270757 () Bool)

(assert (= b_lambda!270753 (or b!7084079 b_lambda!270757)))

(declare-fun bs!1882778 () Bool)

(declare-fun d!2215766 () Bool)

(assert (= bs!1882778 (and d!2215766 b!7084079)))

(declare-fun bs!1882779 () Bool)

(assert (= bs!1882779 (and d!2215766 b!7084079 b!7084082)))

(declare-fun lambda!428808 () Int)

(assert (=> bs!1882779 (= lambda!428808 lambda!428793)))

(declare-fun bs!1882780 () Bool)

(assert (= bs!1882780 (and d!2215766 b!7084079 d!2215746)))

(assert (=> bs!1882780 (= lambda!428808 lambda!428806)))

(declare-fun bs!1882781 () Bool)

(assert (= bs!1882781 (and d!2215766 b!7084079 d!2215748)))

(assert (=> bs!1882781 (= lambda!428808 lambda!428807)))

(declare-fun lt!2554303 () Unit!162155)

(assert (=> bs!1882778 (= lt!2554303 (lemmaConcatPreservesForall!1031 (exprs!7220 c!9994) (exprs!7220 auxCtx!45) lambda!428808))))

(assert (=> bs!1882778 (= (dynLambda!27953 lambda!428792 c!9994) (Context!13441 (++!15901 (exprs!7220 c!9994) (exprs!7220 auxCtx!45))))))

(declare-fun m!7816056 () Bool)

(assert (=> bs!1882778 m!7816056))

(assert (=> bs!1882778 m!7815968))

(assert (=> d!2215758 d!2215766))

(declare-fun b_lambda!270759 () Bool)

(assert (= b_lambda!270755 (or b!7084082 b_lambda!270759)))

(declare-fun bs!1882782 () Bool)

(declare-fun d!2215768 () Bool)

(assert (= bs!1882782 (and d!2215768 b!7084082)))

(assert (=> bs!1882782 (= (dynLambda!27954 lambda!428793 (h!75011 (exprs!7220 c!9994))) (validRegex!8999 (h!75011 (exprs!7220 c!9994))))))

(declare-fun m!7816058 () Bool)

(assert (=> bs!1882782 m!7816058))

(assert (=> b!7084166 d!2215768))

(push 1)

(assert (not d!2215758))

(assert (not b!7084193))

(assert (not b_lambda!270759))

(assert (not b!7084191))

(assert (not b!7084206))

(assert (not b!7084140))

(assert (not d!2215746))

(assert (not d!2215748))

(assert (not b!7084202))

(assert (not b!7084207))

(assert (not b!7084196))

(assert (not d!2215754))

(assert (not b!7084189))

(assert (not b!7084195))

(assert (not b!7084167))

(assert (not b_lambda!270757))

(assert (not d!2215762))

(assert (not bs!1882778))

(assert (not b!7084187))

(assert (not b!7084151))

(assert (not b!7084185))

(assert (not bs!1882782))

(assert tp_is_empty!44681)

(assert (not b!7084188))

(assert (not bm!643658))

(assert (not b!7084204))

(assert (not b!7084183))

(assert (not b!7084205))

(assert (not b!7084197))

(assert (not b!7084192))

(assert (not d!2215750))

(assert (not bm!643657))

(assert (not b!7084184))

(assert (not b!7084152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

