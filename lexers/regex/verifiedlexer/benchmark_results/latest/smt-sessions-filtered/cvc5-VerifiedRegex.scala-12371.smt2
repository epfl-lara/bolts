; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692950 () Bool)

(assert start!692950)

(declare-fun b!7119942 () Bool)

(assert (=> b!7119942 true))

(declare-fun b!7119941 () Bool)

(declare-fun e!4278099 () Bool)

(declare-datatypes ((C!36238 0))(
  ( (C!36239 (val!27825 Int)) )
))
(declare-datatypes ((Regex!17984 0))(
  ( (ElementMatch!17984 (c!1328759 C!36238)) (Concat!26829 (regOne!36480 Regex!17984) (regTwo!36480 Regex!17984)) (EmptyExpr!17984) (Star!17984 (reg!18313 Regex!17984)) (EmptyLang!17984) (Union!17984 (regOne!36481 Regex!17984) (regTwo!36481 Regex!17984)) )
))
(declare-fun r!11554 () Regex!17984)

(declare-fun nullable!7621 (Regex!17984) Bool)

(assert (=> b!7119941 (= e!4278099 (not (nullable!7621 (regOne!36480 r!11554))))))

(declare-fun e!4278098 () Bool)

(declare-fun e!4278101 () Bool)

(assert (=> b!7119942 (= e!4278098 e!4278101)))

(declare-fun res!2904492 () Bool)

(assert (=> b!7119942 (=> (not res!2904492) (not e!4278101))))

(declare-fun a!1901 () C!36238)

(assert (=> b!7119942 (= res!2904492 (and (or (not (is-ElementMatch!17984 r!11554)) (not (= (c!1328759 r!11554) a!1901))) (not (is-Union!17984 r!11554))))))

(declare-fun b!7119943 () Bool)

(declare-fun e!4278102 () Bool)

(declare-fun tp!1960059 () Bool)

(assert (=> b!7119943 (= e!4278102 tp!1960059)))

(declare-fun b!7119944 () Bool)

(declare-datatypes ((List!68945 0))(
  ( (Nil!68821) (Cons!68821 (h!75269 Regex!17984) (t!382808 List!68945)) )
))
(declare-datatypes ((Context!13956 0))(
  ( (Context!13957 (exprs!7478 List!68945)) )
))
(declare-fun c!9994 () Context!13956)

(declare-fun auxCtx!45 () Context!13956)

(declare-fun inv!87824 (Context!13956) Bool)

(declare-fun ++!16136 (List!68945 List!68945) List!68945)

(assert (=> b!7119944 (= e!4278101 (not (inv!87824 (Context!13957 (++!16136 (exprs!7478 c!9994) (exprs!7478 auxCtx!45))))))))

(declare-datatypes ((Unit!162639 0))(
  ( (Unit!162640) )
))
(declare-fun lt!2561211 () Unit!162639)

(declare-fun lambda!432655 () Int)

(declare-fun lemmaConcatPreservesForall!1269 (List!68945 List!68945 Int) Unit!162639)

(assert (=> b!7119944 (= lt!2561211 (lemmaConcatPreservesForall!1269 (exprs!7478 c!9994) (exprs!7478 auxCtx!45) lambda!432655))))

(declare-fun lambda!432654 () Int)

(declare-fun map!16316 ((Set Context!13956) Int) (Set Context!13956))

(assert (=> b!7119944 (= (map!16316 (as set.empty (Set Context!13956)) lambda!432654) (as set.empty (Set Context!13956)))))

(declare-fun lt!2561212 () Unit!162639)

(declare-fun lemmaMapOnEmptySetIsEmpty!15 ((Set Context!13956) Int) Unit!162639)

(assert (=> b!7119944 (= lt!2561212 (lemmaMapOnEmptySetIsEmpty!15 (as set.empty (Set Context!13956)) lambda!432654))))

(declare-fun res!2904489 () Bool)

(assert (=> start!692950 (=> (not res!2904489) (not e!4278098))))

(declare-fun validRegex!9257 (Regex!17984) Bool)

(assert (=> start!692950 (= res!2904489 (validRegex!9257 r!11554))))

(assert (=> start!692950 e!4278098))

(assert (=> start!692950 e!4278102))

(declare-fun e!4278100 () Bool)

(assert (=> start!692950 (and (inv!87824 c!9994) e!4278100)))

(declare-fun tp_is_empty!45201 () Bool)

(assert (=> start!692950 tp_is_empty!45201))

(declare-fun e!4278097 () Bool)

(assert (=> start!692950 (and (inv!87824 auxCtx!45) e!4278097)))

(declare-fun b!7119945 () Bool)

(declare-fun tp!1960058 () Bool)

(declare-fun tp!1960057 () Bool)

(assert (=> b!7119945 (= e!4278102 (and tp!1960058 tp!1960057))))

(declare-fun b!7119946 () Bool)

(assert (=> b!7119946 (= e!4278102 tp_is_empty!45201)))

(declare-fun b!7119947 () Bool)

(declare-fun res!2904491 () Bool)

(assert (=> b!7119947 (=> (not res!2904491) (not e!4278101))))

(assert (=> b!7119947 (= res!2904491 e!4278099)))

(declare-fun res!2904493 () Bool)

(assert (=> b!7119947 (=> res!2904493 e!4278099)))

(assert (=> b!7119947 (= res!2904493 (not (is-Concat!26829 r!11554)))))

(declare-fun b!7119948 () Bool)

(declare-fun res!2904490 () Bool)

(assert (=> b!7119948 (=> (not res!2904490) (not e!4278101))))

(assert (=> b!7119948 (= res!2904490 (and (not (is-Concat!26829 r!11554)) (not (is-Star!17984 r!11554))))))

(declare-fun b!7119949 () Bool)

(declare-fun tp!1960056 () Bool)

(assert (=> b!7119949 (= e!4278097 tp!1960056)))

(declare-fun b!7119950 () Bool)

(declare-fun tp!1960060 () Bool)

(declare-fun tp!1960055 () Bool)

(assert (=> b!7119950 (= e!4278102 (and tp!1960060 tp!1960055))))

(declare-fun b!7119951 () Bool)

(declare-fun tp!1960061 () Bool)

(assert (=> b!7119951 (= e!4278100 tp!1960061)))

(assert (= (and start!692950 res!2904489) b!7119942))

(assert (= (and b!7119942 res!2904492) b!7119947))

(assert (= (and b!7119947 (not res!2904493)) b!7119941))

(assert (= (and b!7119947 res!2904491) b!7119948))

(assert (= (and b!7119948 res!2904490) b!7119944))

(assert (= (and start!692950 (is-ElementMatch!17984 r!11554)) b!7119946))

(assert (= (and start!692950 (is-Concat!26829 r!11554)) b!7119950))

(assert (= (and start!692950 (is-Star!17984 r!11554)) b!7119943))

(assert (= (and start!692950 (is-Union!17984 r!11554)) b!7119945))

(assert (= start!692950 b!7119951))

(assert (= start!692950 b!7119949))

(declare-fun m!7837168 () Bool)

(assert (=> b!7119941 m!7837168))

(declare-fun m!7837170 () Bool)

(assert (=> b!7119944 m!7837170))

(declare-fun m!7837172 () Bool)

(assert (=> b!7119944 m!7837172))

(declare-fun m!7837174 () Bool)

(assert (=> b!7119944 m!7837174))

(declare-fun m!7837176 () Bool)

(assert (=> b!7119944 m!7837176))

(declare-fun m!7837178 () Bool)

(assert (=> b!7119944 m!7837178))

(declare-fun m!7837180 () Bool)

(assert (=> start!692950 m!7837180))

(declare-fun m!7837182 () Bool)

(assert (=> start!692950 m!7837182))

(declare-fun m!7837184 () Bool)

(assert (=> start!692950 m!7837184))

(push 1)

(assert (not b!7119951))

(assert (not start!692950))

(assert (not b!7119944))

(assert tp_is_empty!45201)

(assert (not b!7119949))

(assert (not b!7119950))

(assert (not b!7119945))

(assert (not b!7119941))

(assert (not b!7119943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2221790 () Bool)

(assert (=> d!2221790 (= (map!16316 (as set.empty (Set Context!13956)) lambda!432654) (as set.empty (Set Context!13956)))))

(declare-fun lt!2561223 () Unit!162639)

(declare-fun choose!54910 ((Set Context!13956) Int) Unit!162639)

(assert (=> d!2221790 (= lt!2561223 (choose!54910 (as set.empty (Set Context!13956)) lambda!432654))))

(assert (=> d!2221790 (= (as set.empty (Set Context!13956)) (as set.empty (Set Context!13956)))))

(assert (=> d!2221790 (= (lemmaMapOnEmptySetIsEmpty!15 (as set.empty (Set Context!13956)) lambda!432654) lt!2561223)))

(declare-fun bs!1885812 () Bool)

(assert (= bs!1885812 d!2221790))

(assert (=> bs!1885812 m!7837174))

(declare-fun m!7837206 () Bool)

(assert (=> bs!1885812 m!7837206))

(assert (=> b!7119944 d!2221790))

(declare-fun bs!1885813 () Bool)

(declare-fun d!2221792 () Bool)

(assert (= bs!1885813 (and d!2221792 b!7119944)))

(declare-fun lambda!432666 () Int)

(assert (=> bs!1885813 (= lambda!432666 lambda!432655)))

(declare-fun forall!16872 (List!68945 Int) Bool)

(assert (=> d!2221792 (= (inv!87824 (Context!13957 (++!16136 (exprs!7478 c!9994) (exprs!7478 auxCtx!45)))) (forall!16872 (exprs!7478 (Context!13957 (++!16136 (exprs!7478 c!9994) (exprs!7478 auxCtx!45)))) lambda!432666))))

(declare-fun bs!1885814 () Bool)

(assert (= bs!1885814 d!2221792))

(declare-fun m!7837208 () Bool)

(assert (=> bs!1885814 m!7837208))

(assert (=> b!7119944 d!2221792))

(declare-fun d!2221794 () Bool)

(assert (=> d!2221794 (forall!16872 (++!16136 (exprs!7478 c!9994) (exprs!7478 auxCtx!45)) lambda!432655)))

(declare-fun lt!2561226 () Unit!162639)

(declare-fun choose!54911 (List!68945 List!68945 Int) Unit!162639)

(assert (=> d!2221794 (= lt!2561226 (choose!54911 (exprs!7478 c!9994) (exprs!7478 auxCtx!45) lambda!432655))))

(assert (=> d!2221794 (forall!16872 (exprs!7478 c!9994) lambda!432655)))

(assert (=> d!2221794 (= (lemmaConcatPreservesForall!1269 (exprs!7478 c!9994) (exprs!7478 auxCtx!45) lambda!432655) lt!2561226)))

(declare-fun bs!1885815 () Bool)

(assert (= bs!1885815 d!2221794))

(assert (=> bs!1885815 m!7837176))

(assert (=> bs!1885815 m!7837176))

(declare-fun m!7837210 () Bool)

(assert (=> bs!1885815 m!7837210))

(declare-fun m!7837212 () Bool)

(assert (=> bs!1885815 m!7837212))

(declare-fun m!7837214 () Bool)

(assert (=> bs!1885815 m!7837214))

(assert (=> b!7119944 d!2221794))

(declare-fun d!2221796 () Bool)

(declare-fun choose!54912 ((Set Context!13956) Int) (Set Context!13956))

(assert (=> d!2221796 (= (map!16316 (as set.empty (Set Context!13956)) lambda!432654) (choose!54912 (as set.empty (Set Context!13956)) lambda!432654))))

(declare-fun bs!1885816 () Bool)

(assert (= bs!1885816 d!2221796))

(declare-fun m!7837216 () Bool)

(assert (=> bs!1885816 m!7837216))

(assert (=> b!7119944 d!2221796))

(declare-fun b!7120015 () Bool)

(declare-fun e!4278140 () List!68945)

(assert (=> b!7120015 (= e!4278140 (exprs!7478 auxCtx!45))))

(declare-fun b!7120018 () Bool)

(declare-fun lt!2561229 () List!68945)

(declare-fun e!4278139 () Bool)

(assert (=> b!7120018 (= e!4278139 (or (not (= (exprs!7478 auxCtx!45) Nil!68821)) (= lt!2561229 (exprs!7478 c!9994))))))

(declare-fun b!7120017 () Bool)

(declare-fun res!2904525 () Bool)

(assert (=> b!7120017 (=> (not res!2904525) (not e!4278139))))

(declare-fun size!41430 (List!68945) Int)

(assert (=> b!7120017 (= res!2904525 (= (size!41430 lt!2561229) (+ (size!41430 (exprs!7478 c!9994)) (size!41430 (exprs!7478 auxCtx!45)))))))

(declare-fun b!7120016 () Bool)

(assert (=> b!7120016 (= e!4278140 (Cons!68821 (h!75269 (exprs!7478 c!9994)) (++!16136 (t!382808 (exprs!7478 c!9994)) (exprs!7478 auxCtx!45))))))

(declare-fun d!2221798 () Bool)

(assert (=> d!2221798 e!4278139))

(declare-fun res!2904526 () Bool)

(assert (=> d!2221798 (=> (not res!2904526) (not e!4278139))))

(declare-fun content!14055 (List!68945) (Set Regex!17984))

(assert (=> d!2221798 (= res!2904526 (= (content!14055 lt!2561229) (set.union (content!14055 (exprs!7478 c!9994)) (content!14055 (exprs!7478 auxCtx!45)))))))

(assert (=> d!2221798 (= lt!2561229 e!4278140)))

(declare-fun c!1328767 () Bool)

(assert (=> d!2221798 (= c!1328767 (is-Nil!68821 (exprs!7478 c!9994)))))

(assert (=> d!2221798 (= (++!16136 (exprs!7478 c!9994) (exprs!7478 auxCtx!45)) lt!2561229)))

(assert (= (and d!2221798 c!1328767) b!7120015))

(assert (= (and d!2221798 (not c!1328767)) b!7120016))

(assert (= (and d!2221798 res!2904526) b!7120017))

(assert (= (and b!7120017 res!2904525) b!7120018))

(declare-fun m!7837218 () Bool)

(assert (=> b!7120017 m!7837218))

(declare-fun m!7837220 () Bool)

(assert (=> b!7120017 m!7837220))

(declare-fun m!7837222 () Bool)

(assert (=> b!7120017 m!7837222))

(declare-fun m!7837224 () Bool)

(assert (=> b!7120016 m!7837224))

(declare-fun m!7837226 () Bool)

(assert (=> d!2221798 m!7837226))

(declare-fun m!7837228 () Bool)

(assert (=> d!2221798 m!7837228))

(declare-fun m!7837230 () Bool)

(assert (=> d!2221798 m!7837230))

(assert (=> b!7119944 d!2221798))

(declare-fun d!2221800 () Bool)

(declare-fun nullableFct!2960 (Regex!17984) Bool)

(assert (=> d!2221800 (= (nullable!7621 (regOne!36480 r!11554)) (nullableFct!2960 (regOne!36480 r!11554)))))

(declare-fun bs!1885817 () Bool)

(assert (= bs!1885817 d!2221800))

(declare-fun m!7837232 () Bool)

(assert (=> bs!1885817 m!7837232))

(assert (=> b!7119941 d!2221800))

(declare-fun b!7120047 () Bool)

(declare-fun res!2904543 () Bool)

(declare-fun e!4278167 () Bool)

(assert (=> b!7120047 (=> (not res!2904543) (not e!4278167))))

(declare-fun call!650596 () Bool)

(assert (=> b!7120047 (= res!2904543 call!650596)))

(declare-fun e!4278166 () Bool)

(assert (=> b!7120047 (= e!4278166 e!4278167)))

(declare-fun b!7120048 () Bool)

(declare-fun e!4278162 () Bool)

(declare-fun e!4278168 () Bool)

(assert (=> b!7120048 (= e!4278162 e!4278168)))

(declare-fun c!1328774 () Bool)

(assert (=> b!7120048 (= c!1328774 (is-Star!17984 r!11554))))

(declare-fun bm!650590 () Bool)

(declare-fun c!1328775 () Bool)

(assert (=> bm!650590 (= call!650596 (validRegex!9257 (ite c!1328775 (regOne!36481 r!11554) (regTwo!36480 r!11554))))))

(declare-fun b!7120049 () Bool)

(declare-fun e!4278165 () Bool)

(declare-fun e!4278163 () Bool)

(assert (=> b!7120049 (= e!4278165 e!4278163)))

(declare-fun res!2904542 () Bool)

(assert (=> b!7120049 (=> (not res!2904542) (not e!4278163))))

(declare-fun call!650597 () Bool)

(assert (=> b!7120049 (= res!2904542 call!650597)))

(declare-fun b!7120050 () Bool)

(assert (=> b!7120050 (= e!4278163 call!650596)))

(declare-fun bm!650591 () Bool)

(declare-fun call!650595 () Bool)

(assert (=> bm!650591 (= call!650595 (validRegex!9257 (ite c!1328774 (reg!18313 r!11554) (ite c!1328775 (regTwo!36481 r!11554) (regOne!36480 r!11554)))))))

(declare-fun b!7120051 () Bool)

(assert (=> b!7120051 (= e!4278168 e!4278166)))

(assert (=> b!7120051 (= c!1328775 (is-Union!17984 r!11554))))

(declare-fun b!7120046 () Bool)

(declare-fun e!4278164 () Bool)

(assert (=> b!7120046 (= e!4278168 e!4278164)))

(declare-fun res!2904545 () Bool)

(assert (=> b!7120046 (= res!2904545 (not (nullable!7621 (reg!18313 r!11554))))))

(assert (=> b!7120046 (=> (not res!2904545) (not e!4278164))))

(declare-fun d!2221802 () Bool)

(declare-fun res!2904544 () Bool)

(assert (=> d!2221802 (=> res!2904544 e!4278162)))

(assert (=> d!2221802 (= res!2904544 (is-ElementMatch!17984 r!11554))))

(assert (=> d!2221802 (= (validRegex!9257 r!11554) e!4278162)))

(declare-fun b!7120052 () Bool)

(assert (=> b!7120052 (= e!4278164 call!650595)))

(declare-fun b!7120053 () Bool)

(assert (=> b!7120053 (= e!4278167 call!650597)))

(declare-fun b!7120054 () Bool)

(declare-fun res!2904546 () Bool)

(assert (=> b!7120054 (=> res!2904546 e!4278165)))

(assert (=> b!7120054 (= res!2904546 (not (is-Concat!26829 r!11554)))))

(assert (=> b!7120054 (= e!4278166 e!4278165)))

(declare-fun bm!650592 () Bool)

(assert (=> bm!650592 (= call!650597 call!650595)))

(assert (= (and d!2221802 (not res!2904544)) b!7120048))

(assert (= (and b!7120048 c!1328774) b!7120046))

(assert (= (and b!7120048 (not c!1328774)) b!7120051))

(assert (= (and b!7120046 res!2904545) b!7120052))

(assert (= (and b!7120051 c!1328775) b!7120047))

(assert (= (and b!7120051 (not c!1328775)) b!7120054))

(assert (= (and b!7120047 res!2904543) b!7120053))

(assert (= (and b!7120054 (not res!2904546)) b!7120049))

(assert (= (and b!7120049 res!2904542) b!7120050))

(assert (= (or b!7120047 b!7120050) bm!650590))

(assert (= (or b!7120053 b!7120049) bm!650592))

(assert (= (or b!7120052 bm!650592) bm!650591))

(declare-fun m!7837240 () Bool)

(assert (=> bm!650590 m!7837240))

(declare-fun m!7837242 () Bool)

(assert (=> bm!650591 m!7837242))

(declare-fun m!7837244 () Bool)

(assert (=> b!7120046 m!7837244))

(assert (=> start!692950 d!2221802))

(declare-fun bs!1885820 () Bool)

(declare-fun d!2221806 () Bool)

(assert (= bs!1885820 (and d!2221806 b!7119944)))

(declare-fun lambda!432670 () Int)

(assert (=> bs!1885820 (= lambda!432670 lambda!432655)))

(declare-fun bs!1885821 () Bool)

(assert (= bs!1885821 (and d!2221806 d!2221792)))

(assert (=> bs!1885821 (= lambda!432670 lambda!432666)))

(assert (=> d!2221806 (= (inv!87824 c!9994) (forall!16872 (exprs!7478 c!9994) lambda!432670))))

(declare-fun bs!1885822 () Bool)

(assert (= bs!1885822 d!2221806))

(declare-fun m!7837248 () Bool)

(assert (=> bs!1885822 m!7837248))

(assert (=> start!692950 d!2221806))

(declare-fun bs!1885824 () Bool)

(declare-fun d!2221810 () Bool)

(assert (= bs!1885824 (and d!2221810 b!7119944)))

(declare-fun lambda!432672 () Int)

(assert (=> bs!1885824 (= lambda!432672 lambda!432655)))

(declare-fun bs!1885825 () Bool)

(assert (= bs!1885825 (and d!2221810 d!2221792)))

(assert (=> bs!1885825 (= lambda!432672 lambda!432666)))

(declare-fun bs!1885827 () Bool)

(assert (= bs!1885827 (and d!2221810 d!2221806)))

(assert (=> bs!1885827 (= lambda!432672 lambda!432670)))

(assert (=> d!2221810 (= (inv!87824 auxCtx!45) (forall!16872 (exprs!7478 auxCtx!45) lambda!432672))))

(declare-fun bs!1885828 () Bool)

(assert (= bs!1885828 d!2221810))

(declare-fun m!7837250 () Bool)

(assert (=> bs!1885828 m!7837250))

(assert (=> start!692950 d!2221810))

(declare-fun b!7120067 () Bool)

(declare-fun e!4278171 () Bool)

(declare-fun tp!1960097 () Bool)

(assert (=> b!7120067 (= e!4278171 tp!1960097)))

(declare-fun b!7120066 () Bool)

(declare-fun tp!1960093 () Bool)

(declare-fun tp!1960094 () Bool)

(assert (=> b!7120066 (= e!4278171 (and tp!1960093 tp!1960094))))

(declare-fun b!7120065 () Bool)

(assert (=> b!7120065 (= e!4278171 tp_is_empty!45201)))

(assert (=> b!7119943 (= tp!1960059 e!4278171)))

(declare-fun b!7120068 () Bool)

(declare-fun tp!1960095 () Bool)

(declare-fun tp!1960096 () Bool)

(assert (=> b!7120068 (= e!4278171 (and tp!1960095 tp!1960096))))

(assert (= (and b!7119943 (is-ElementMatch!17984 (reg!18313 r!11554))) b!7120065))

(assert (= (and b!7119943 (is-Concat!26829 (reg!18313 r!11554))) b!7120066))

(assert (= (and b!7119943 (is-Star!17984 (reg!18313 r!11554))) b!7120067))

(assert (= (and b!7119943 (is-Union!17984 (reg!18313 r!11554))) b!7120068))

(declare-fun b!7120073 () Bool)

(declare-fun e!4278174 () Bool)

(declare-fun tp!1960102 () Bool)

(declare-fun tp!1960103 () Bool)

(assert (=> b!7120073 (= e!4278174 (and tp!1960102 tp!1960103))))

(assert (=> b!7119949 (= tp!1960056 e!4278174)))

(assert (= (and b!7119949 (is-Cons!68821 (exprs!7478 auxCtx!45))) b!7120073))

(declare-fun b!7120076 () Bool)

(declare-fun e!4278175 () Bool)

(declare-fun tp!1960108 () Bool)

(assert (=> b!7120076 (= e!4278175 tp!1960108)))

(declare-fun b!7120075 () Bool)

(declare-fun tp!1960104 () Bool)

(declare-fun tp!1960105 () Bool)

(assert (=> b!7120075 (= e!4278175 (and tp!1960104 tp!1960105))))

(declare-fun b!7120074 () Bool)

(assert (=> b!7120074 (= e!4278175 tp_is_empty!45201)))

(assert (=> b!7119950 (= tp!1960060 e!4278175)))

(declare-fun b!7120077 () Bool)

(declare-fun tp!1960106 () Bool)

(declare-fun tp!1960107 () Bool)

(assert (=> b!7120077 (= e!4278175 (and tp!1960106 tp!1960107))))

(assert (= (and b!7119950 (is-ElementMatch!17984 (regOne!36480 r!11554))) b!7120074))

(assert (= (and b!7119950 (is-Concat!26829 (regOne!36480 r!11554))) b!7120075))

(assert (= (and b!7119950 (is-Star!17984 (regOne!36480 r!11554))) b!7120076))

(assert (= (and b!7119950 (is-Union!17984 (regOne!36480 r!11554))) b!7120077))

(declare-fun b!7120080 () Bool)

(declare-fun e!4278176 () Bool)

(declare-fun tp!1960113 () Bool)

(assert (=> b!7120080 (= e!4278176 tp!1960113)))

(declare-fun b!7120079 () Bool)

(declare-fun tp!1960109 () Bool)

(declare-fun tp!1960110 () Bool)

(assert (=> b!7120079 (= e!4278176 (and tp!1960109 tp!1960110))))

(declare-fun b!7120078 () Bool)

(assert (=> b!7120078 (= e!4278176 tp_is_empty!45201)))

(assert (=> b!7119950 (= tp!1960055 e!4278176)))

(declare-fun b!7120081 () Bool)

(declare-fun tp!1960111 () Bool)

(declare-fun tp!1960112 () Bool)

(assert (=> b!7120081 (= e!4278176 (and tp!1960111 tp!1960112))))

(assert (= (and b!7119950 (is-ElementMatch!17984 (regTwo!36480 r!11554))) b!7120078))

(assert (= (and b!7119950 (is-Concat!26829 (regTwo!36480 r!11554))) b!7120079))

(assert (= (and b!7119950 (is-Star!17984 (regTwo!36480 r!11554))) b!7120080))

(assert (= (and b!7119950 (is-Union!17984 (regTwo!36480 r!11554))) b!7120081))

(declare-fun b!7120084 () Bool)

(declare-fun e!4278177 () Bool)

(declare-fun tp!1960118 () Bool)

(assert (=> b!7120084 (= e!4278177 tp!1960118)))

(declare-fun b!7120083 () Bool)

(declare-fun tp!1960114 () Bool)

(declare-fun tp!1960115 () Bool)

(assert (=> b!7120083 (= e!4278177 (and tp!1960114 tp!1960115))))

(declare-fun b!7120082 () Bool)

(assert (=> b!7120082 (= e!4278177 tp_is_empty!45201)))

(assert (=> b!7119945 (= tp!1960058 e!4278177)))

(declare-fun b!7120085 () Bool)

(declare-fun tp!1960116 () Bool)

(declare-fun tp!1960117 () Bool)

(assert (=> b!7120085 (= e!4278177 (and tp!1960116 tp!1960117))))

(assert (= (and b!7119945 (is-ElementMatch!17984 (regOne!36481 r!11554))) b!7120082))

(assert (= (and b!7119945 (is-Concat!26829 (regOne!36481 r!11554))) b!7120083))

(assert (= (and b!7119945 (is-Star!17984 (regOne!36481 r!11554))) b!7120084))

(assert (= (and b!7119945 (is-Union!17984 (regOne!36481 r!11554))) b!7120085))

(declare-fun b!7120088 () Bool)

(declare-fun e!4278178 () Bool)

(declare-fun tp!1960123 () Bool)

(assert (=> b!7120088 (= e!4278178 tp!1960123)))

(declare-fun b!7120087 () Bool)

(declare-fun tp!1960119 () Bool)

(declare-fun tp!1960120 () Bool)

(assert (=> b!7120087 (= e!4278178 (and tp!1960119 tp!1960120))))

(declare-fun b!7120086 () Bool)

(assert (=> b!7120086 (= e!4278178 tp_is_empty!45201)))

(assert (=> b!7119945 (= tp!1960057 e!4278178)))

(declare-fun b!7120089 () Bool)

(declare-fun tp!1960121 () Bool)

(declare-fun tp!1960122 () Bool)

(assert (=> b!7120089 (= e!4278178 (and tp!1960121 tp!1960122))))

(assert (= (and b!7119945 (is-ElementMatch!17984 (regTwo!36481 r!11554))) b!7120086))

(assert (= (and b!7119945 (is-Concat!26829 (regTwo!36481 r!11554))) b!7120087))

(assert (= (and b!7119945 (is-Star!17984 (regTwo!36481 r!11554))) b!7120088))

(assert (= (and b!7119945 (is-Union!17984 (regTwo!36481 r!11554))) b!7120089))

(declare-fun b!7120090 () Bool)

(declare-fun e!4278179 () Bool)

(declare-fun tp!1960124 () Bool)

(declare-fun tp!1960125 () Bool)

(assert (=> b!7120090 (= e!4278179 (and tp!1960124 tp!1960125))))

(assert (=> b!7119951 (= tp!1960061 e!4278179)))

(assert (= (and b!7119951 (is-Cons!68821 (exprs!7478 c!9994))) b!7120090))

(push 1)

(assert (not b!7120083))

(assert (not b!7120067))

(assert (not b!7120017))

(assert (not b!7120089))

(assert (not b!7120016))

(assert (not d!2221800))

(assert tp_is_empty!45201)

(assert (not b!7120087))

(assert (not d!2221790))

(assert (not b!7120066))

(assert (not d!2221792))

(assert (not b!7120080))

(assert (not b!7120077))

(assert (not b!7120046))

(assert (not b!7120068))

(assert (not b!7120081))

(assert (not b!7120084))

(assert (not bm!650591))

(assert (not b!7120088))

(assert (not d!2221794))

(assert (not b!7120090))

(assert (not d!2221796))

(assert (not b!7120085))

(assert (not b!7120075))

(assert (not d!2221810))

(assert (not b!7120073))

(assert (not b!7120076))

(assert (not d!2221806))

(assert (not b!7120079))

(assert (not bm!650590))

(assert (not d!2221798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

