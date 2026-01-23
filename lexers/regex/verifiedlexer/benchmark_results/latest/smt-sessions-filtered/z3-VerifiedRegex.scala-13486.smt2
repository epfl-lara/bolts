; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728000 () Bool)

(assert start!728000)

(declare-fun res!3014675 () Bool)

(declare-fun e!4483298 () Bool)

(assert (=> start!728000 (=> (not res!3014675) (not e!4483298))))

(declare-datatypes ((C!39860 0))(
  ( (C!39861 (val!30370 Int)) )
))
(declare-datatypes ((Regex!19767 0))(
  ( (ElementMatch!19767 (c!1389544 C!39860)) (Concat!28612 (regOne!40046 Regex!19767) (regTwo!40046 Regex!19767)) (EmptyExpr!19767) (Star!19767 (reg!20096 Regex!19767)) (EmptyLang!19767) (Union!19767 (regOne!40047 Regex!19767) (regTwo!40047 Regex!19767)) )
))
(declare-datatypes ((List!72678 0))(
  ( (Nil!72554) (Cons!72554 (h!79002 Regex!19767) (t!387379 List!72678)) )
))
(declare-datatypes ((Context!17038 0))(
  ( (Context!17039 (exprs!9019 List!72678)) )
))
(declare-fun context!41 () Context!17038)

(get-info :version)

(assert (=> start!728000 (= res!3014675 ((_ is Cons!72554) (exprs!9019 context!41)))))

(assert (=> start!728000 e!4483298))

(declare-fun e!4483299 () Bool)

(declare-fun inv!92710 (Context!17038) Bool)

(assert (=> start!728000 (and (inv!92710 context!41) e!4483299)))

(declare-fun b!7520713 () Bool)

(declare-fun res!3014676 () Bool)

(assert (=> b!7520713 (=> (not res!3014676) (not e!4483298))))

(declare-fun nullable!8603 (Regex!19767) Bool)

(assert (=> b!7520713 (= res!3014676 (nullable!8603 (h!79002 (exprs!9019 context!41))))))

(declare-fun b!7520714 () Bool)

(assert (=> b!7520714 (= e!4483298 (not (inv!92710 (Context!17039 (t!387379 (exprs!9019 context!41))))))))

(declare-fun b!7520715 () Bool)

(declare-fun tp!2184387 () Bool)

(assert (=> b!7520715 (= e!4483299 tp!2184387)))

(assert (= (and start!728000 res!3014675) b!7520713))

(assert (= (and b!7520713 res!3014676) b!7520714))

(assert (= start!728000 b!7520715))

(declare-fun m!8100142 () Bool)

(assert (=> start!728000 m!8100142))

(declare-fun m!8100144 () Bool)

(assert (=> b!7520713 m!8100144))

(declare-fun m!8100146 () Bool)

(assert (=> b!7520714 m!8100146))

(check-sat (not start!728000) (not b!7520713) (not b!7520714) (not b!7520715))
(check-sat)
(get-model)

(declare-fun d!2308937 () Bool)

(declare-fun lambda!466410 () Int)

(declare-fun forall!18407 (List!72678 Int) Bool)

(assert (=> d!2308937 (= (inv!92710 context!41) (forall!18407 (exprs!9019 context!41) lambda!466410))))

(declare-fun bs!1939630 () Bool)

(assert (= bs!1939630 d!2308937))

(declare-fun m!8100154 () Bool)

(assert (=> bs!1939630 m!8100154))

(assert (=> start!728000 d!2308937))

(declare-fun d!2308943 () Bool)

(declare-fun nullableFct!3440 (Regex!19767) Bool)

(assert (=> d!2308943 (= (nullable!8603 (h!79002 (exprs!9019 context!41))) (nullableFct!3440 (h!79002 (exprs!9019 context!41))))))

(declare-fun bs!1939631 () Bool)

(assert (= bs!1939631 d!2308943))

(declare-fun m!8100156 () Bool)

(assert (=> bs!1939631 m!8100156))

(assert (=> b!7520713 d!2308943))

(declare-fun bs!1939632 () Bool)

(declare-fun d!2308945 () Bool)

(assert (= bs!1939632 (and d!2308945 d!2308937)))

(declare-fun lambda!466411 () Int)

(assert (=> bs!1939632 (= lambda!466411 lambda!466410)))

(assert (=> d!2308945 (= (inv!92710 (Context!17039 (t!387379 (exprs!9019 context!41)))) (forall!18407 (exprs!9019 (Context!17039 (t!387379 (exprs!9019 context!41)))) lambda!466411))))

(declare-fun bs!1939633 () Bool)

(assert (= bs!1939633 d!2308945))

(declare-fun m!8100158 () Bool)

(assert (=> bs!1939633 m!8100158))

(assert (=> b!7520714 d!2308945))

(declare-fun b!7520725 () Bool)

(declare-fun e!4483305 () Bool)

(declare-fun tp!2184398 () Bool)

(declare-fun tp!2184399 () Bool)

(assert (=> b!7520725 (= e!4483305 (and tp!2184398 tp!2184399))))

(assert (=> b!7520715 (= tp!2184387 e!4483305)))

(assert (= (and b!7520715 ((_ is Cons!72554) (exprs!9019 context!41))) b!7520725))

(check-sat (not d!2308937) (not d!2308945) (not d!2308943) (not b!7520725))
(check-sat)
(get-model)

(declare-fun d!2308953 () Bool)

(declare-fun res!3014699 () Bool)

(declare-fun e!4483330 () Bool)

(assert (=> d!2308953 (=> res!3014699 e!4483330)))

(assert (=> d!2308953 (= res!3014699 ((_ is Nil!72554) (exprs!9019 context!41)))))

(assert (=> d!2308953 (= (forall!18407 (exprs!9019 context!41) lambda!466410) e!4483330)))

(declare-fun b!7520752 () Bool)

(declare-fun e!4483331 () Bool)

(assert (=> b!7520752 (= e!4483330 e!4483331)))

(declare-fun res!3014700 () Bool)

(assert (=> b!7520752 (=> (not res!3014700) (not e!4483331))))

(declare-fun dynLambda!29889 (Int Regex!19767) Bool)

(assert (=> b!7520752 (= res!3014700 (dynLambda!29889 lambda!466410 (h!79002 (exprs!9019 context!41))))))

(declare-fun b!7520753 () Bool)

(assert (=> b!7520753 (= e!4483331 (forall!18407 (t!387379 (exprs!9019 context!41)) lambda!466410))))

(assert (= (and d!2308953 (not res!3014699)) b!7520752))

(assert (= (and b!7520752 res!3014700) b!7520753))

(declare-fun b_lambda!288831 () Bool)

(assert (=> (not b_lambda!288831) (not b!7520752)))

(declare-fun m!8100168 () Bool)

(assert (=> b!7520752 m!8100168))

(declare-fun m!8100170 () Bool)

(assert (=> b!7520753 m!8100170))

(assert (=> d!2308937 d!2308953))

(declare-fun d!2308955 () Bool)

(declare-fun res!3014701 () Bool)

(declare-fun e!4483332 () Bool)

(assert (=> d!2308955 (=> res!3014701 e!4483332)))

(assert (=> d!2308955 (= res!3014701 ((_ is Nil!72554) (exprs!9019 (Context!17039 (t!387379 (exprs!9019 context!41))))))))

(assert (=> d!2308955 (= (forall!18407 (exprs!9019 (Context!17039 (t!387379 (exprs!9019 context!41)))) lambda!466411) e!4483332)))

(declare-fun b!7520754 () Bool)

(declare-fun e!4483333 () Bool)

(assert (=> b!7520754 (= e!4483332 e!4483333)))

(declare-fun res!3014702 () Bool)

(assert (=> b!7520754 (=> (not res!3014702) (not e!4483333))))

(assert (=> b!7520754 (= res!3014702 (dynLambda!29889 lambda!466411 (h!79002 (exprs!9019 (Context!17039 (t!387379 (exprs!9019 context!41)))))))))

(declare-fun b!7520755 () Bool)

(assert (=> b!7520755 (= e!4483333 (forall!18407 (t!387379 (exprs!9019 (Context!17039 (t!387379 (exprs!9019 context!41))))) lambda!466411))))

(assert (= (and d!2308955 (not res!3014701)) b!7520754))

(assert (= (and b!7520754 res!3014702) b!7520755))

(declare-fun b_lambda!288833 () Bool)

(assert (=> (not b_lambda!288833) (not b!7520754)))

(declare-fun m!8100172 () Bool)

(assert (=> b!7520754 m!8100172))

(declare-fun m!8100174 () Bool)

(assert (=> b!7520755 m!8100174))

(assert (=> d!2308945 d!2308955))

(declare-fun bm!689630 () Bool)

(declare-fun call!689636 () Bool)

(declare-fun c!1389550 () Bool)

(assert (=> bm!689630 (= call!689636 (nullable!8603 (ite c!1389550 (regOne!40047 (h!79002 (exprs!9019 context!41))) (regTwo!40046 (h!79002 (exprs!9019 context!41))))))))

(declare-fun b!7520792 () Bool)

(declare-fun e!4483360 () Bool)

(declare-fun e!4483356 () Bool)

(assert (=> b!7520792 (= e!4483360 e!4483356)))

(declare-fun res!3014721 () Bool)

(assert (=> b!7520792 (=> (not res!3014721) (not e!4483356))))

(assert (=> b!7520792 (= res!3014721 (and (not ((_ is EmptyLang!19767) (h!79002 (exprs!9019 context!41)))) (not ((_ is ElementMatch!19767) (h!79002 (exprs!9019 context!41))))))))

(declare-fun d!2308957 () Bool)

(declare-fun res!3014720 () Bool)

(assert (=> d!2308957 (=> res!3014720 e!4483360)))

(assert (=> d!2308957 (= res!3014720 ((_ is EmptyExpr!19767) (h!79002 (exprs!9019 context!41))))))

(assert (=> d!2308957 (= (nullableFct!3440 (h!79002 (exprs!9019 context!41))) e!4483360)))

(declare-fun b!7520793 () Bool)

(declare-fun e!4483358 () Bool)

(declare-fun e!4483357 () Bool)

(assert (=> b!7520793 (= e!4483358 e!4483357)))

(declare-fun res!3014719 () Bool)

(declare-fun call!689635 () Bool)

(assert (=> b!7520793 (= res!3014719 call!689635)))

(assert (=> b!7520793 (=> (not res!3014719) (not e!4483357))))

(declare-fun b!7520794 () Bool)

(declare-fun e!4483359 () Bool)

(assert (=> b!7520794 (= e!4483359 call!689635)))

(declare-fun b!7520795 () Bool)

(assert (=> b!7520795 (= e!4483358 e!4483359)))

(declare-fun res!3014722 () Bool)

(assert (=> b!7520795 (= res!3014722 call!689636)))

(assert (=> b!7520795 (=> res!3014722 e!4483359)))

(declare-fun b!7520796 () Bool)

(declare-fun e!4483361 () Bool)

(assert (=> b!7520796 (= e!4483356 e!4483361)))

(declare-fun res!3014718 () Bool)

(assert (=> b!7520796 (=> res!3014718 e!4483361)))

(assert (=> b!7520796 (= res!3014718 ((_ is Star!19767) (h!79002 (exprs!9019 context!41))))))

(declare-fun b!7520797 () Bool)

(assert (=> b!7520797 (= e!4483361 e!4483358)))

(assert (=> b!7520797 (= c!1389550 ((_ is Union!19767) (h!79002 (exprs!9019 context!41))))))

(declare-fun b!7520798 () Bool)

(assert (=> b!7520798 (= e!4483357 call!689636)))

(declare-fun bm!689631 () Bool)

(assert (=> bm!689631 (= call!689635 (nullable!8603 (ite c!1389550 (regTwo!40047 (h!79002 (exprs!9019 context!41))) (regOne!40046 (h!79002 (exprs!9019 context!41))))))))

(assert (= (and d!2308957 (not res!3014720)) b!7520792))

(assert (= (and b!7520792 res!3014721) b!7520796))

(assert (= (and b!7520796 (not res!3014718)) b!7520797))

(assert (= (and b!7520797 c!1389550) b!7520795))

(assert (= (and b!7520797 (not c!1389550)) b!7520793))

(assert (= (and b!7520795 (not res!3014722)) b!7520794))

(assert (= (and b!7520793 res!3014719) b!7520798))

(assert (= (or b!7520794 b!7520793) bm!689631))

(assert (= (or b!7520795 b!7520798) bm!689630))

(declare-fun m!8100184 () Bool)

(assert (=> bm!689630 m!8100184))

(declare-fun m!8100186 () Bool)

(assert (=> bm!689631 m!8100186))

(assert (=> d!2308943 d!2308957))

(declare-fun e!4483364 () Bool)

(assert (=> b!7520725 (= tp!2184398 e!4483364)))

(declare-fun b!7520809 () Bool)

(declare-fun tp_is_empty!49897 () Bool)

(assert (=> b!7520809 (= e!4483364 tp_is_empty!49897)))

(declare-fun b!7520812 () Bool)

(declare-fun tp!2184430 () Bool)

(declare-fun tp!2184431 () Bool)

(assert (=> b!7520812 (= e!4483364 (and tp!2184430 tp!2184431))))

(declare-fun b!7520811 () Bool)

(declare-fun tp!2184427 () Bool)

(assert (=> b!7520811 (= e!4483364 tp!2184427)))

(declare-fun b!7520810 () Bool)

(declare-fun tp!2184428 () Bool)

(declare-fun tp!2184429 () Bool)

(assert (=> b!7520810 (= e!4483364 (and tp!2184428 tp!2184429))))

(assert (= (and b!7520725 ((_ is ElementMatch!19767) (h!79002 (exprs!9019 context!41)))) b!7520809))

(assert (= (and b!7520725 ((_ is Concat!28612) (h!79002 (exprs!9019 context!41)))) b!7520810))

(assert (= (and b!7520725 ((_ is Star!19767) (h!79002 (exprs!9019 context!41)))) b!7520811))

(assert (= (and b!7520725 ((_ is Union!19767) (h!79002 (exprs!9019 context!41)))) b!7520812))

(declare-fun b!7520813 () Bool)

(declare-fun e!4483365 () Bool)

(declare-fun tp!2184432 () Bool)

(declare-fun tp!2184433 () Bool)

(assert (=> b!7520813 (= e!4483365 (and tp!2184432 tp!2184433))))

(assert (=> b!7520725 (= tp!2184399 e!4483365)))

(assert (= (and b!7520725 ((_ is Cons!72554) (t!387379 (exprs!9019 context!41)))) b!7520813))

(declare-fun b_lambda!288839 () Bool)

(assert (= b_lambda!288833 (or d!2308945 b_lambda!288839)))

(declare-fun bs!1939636 () Bool)

(declare-fun d!2308963 () Bool)

(assert (= bs!1939636 (and d!2308963 d!2308945)))

(declare-fun validRegex!10200 (Regex!19767) Bool)

(assert (=> bs!1939636 (= (dynLambda!29889 lambda!466411 (h!79002 (exprs!9019 (Context!17039 (t!387379 (exprs!9019 context!41)))))) (validRegex!10200 (h!79002 (exprs!9019 (Context!17039 (t!387379 (exprs!9019 context!41)))))))))

(declare-fun m!8100188 () Bool)

(assert (=> bs!1939636 m!8100188))

(assert (=> b!7520754 d!2308963))

(declare-fun b_lambda!288841 () Bool)

(assert (= b_lambda!288831 (or d!2308937 b_lambda!288841)))

(declare-fun bs!1939637 () Bool)

(declare-fun d!2308965 () Bool)

(assert (= bs!1939637 (and d!2308965 d!2308937)))

(assert (=> bs!1939637 (= (dynLambda!29889 lambda!466410 (h!79002 (exprs!9019 context!41))) (validRegex!10200 (h!79002 (exprs!9019 context!41))))))

(declare-fun m!8100190 () Bool)

(assert (=> bs!1939637 m!8100190))

(assert (=> b!7520752 d!2308965))

(check-sat (not bm!689631) (not b!7520811) (not bm!689630) (not b_lambda!288839) (not b!7520755) (not bs!1939636) (not b!7520813) (not b!7520753) (not bs!1939637) tp_is_empty!49897 (not b!7520812) (not b_lambda!288841) (not b!7520810))
(check-sat)
