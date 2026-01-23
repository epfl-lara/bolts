; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710756 () Bool)

(assert start!710756)

(declare-fun b!7293605 () Bool)

(assert (=> b!7293605 true))

(declare-fun b!7293604 () Bool)

(declare-fun e!4368567 () Bool)

(declare-fun tp_is_empty!47161 () Bool)

(declare-fun tp!2061915 () Bool)

(assert (=> b!7293604 (= e!4368567 (and tp_is_empty!47161 tp!2061915))))

(declare-fun e!4368569 () Bool)

(declare-datatypes ((C!37970 0))(
  ( (C!37971 (val!28933 Int)) )
))
(declare-datatypes ((Regex!18848 0))(
  ( (ElementMatch!18848 (c!1355310 C!37970)) (Concat!27693 (regOne!38208 Regex!18848) (regTwo!38208 Regex!18848)) (EmptyExpr!18848) (Star!18848 (reg!19177 Regex!18848)) (EmptyLang!18848) (Union!18848 (regOne!38209 Regex!18848) (regTwo!38209 Regex!18848)) )
))
(declare-datatypes ((List!71013 0))(
  ( (Nil!70889) (Cons!70889 (h!77337 Regex!18848) (t!385087 List!71013)) )
))
(declare-datatypes ((Context!15576 0))(
  ( (Context!15577 (exprs!8288 List!71013)) )
))
(declare-fun lt!2597096 () Context!15576)

(declare-fun inv!90131 (Context!15576) Bool)

(assert (=> b!7293605 (= e!4368569 (not (inv!90131 lt!2597096)))))

(declare-fun ct1!250 () Context!15576)

(declare-fun lambda!449936 () Int)

(declare-datatypes ((Unit!164294 0))(
  ( (Unit!164295) )
))
(declare-fun lt!2597094 () Unit!164294)

(declare-fun ct2!346 () Context!15576)

(declare-fun lemmaConcatPreservesForall!1595 (List!71013 List!71013 Int) Unit!164294)

(assert (=> b!7293605 (= lt!2597094 (lemmaConcatPreservesForall!1595 (exprs!8288 ct1!250) (exprs!8288 ct2!346) lambda!449936))))

(declare-fun lt!2597097 () Unit!164294)

(assert (=> b!7293605 (= lt!2597097 (lemmaConcatPreservesForall!1595 (exprs!8288 ct1!250) (exprs!8288 ct2!346) lambda!449936))))

(declare-datatypes ((List!71014 0))(
  ( (Nil!70890) (Cons!70890 (h!77338 C!37970) (t!385088 List!71014)) )
))
(declare-fun s!7854 () List!71014)

(declare-fun lambda!449937 () Int)

(declare-fun lt!2597100 () (Set Context!15576))

(declare-fun flatMap!2943 ((Set Context!15576) Int) (Set Context!15576))

(declare-fun derivationStepZipperUp!2598 (Context!15576 C!37970) (Set Context!15576))

(assert (=> b!7293605 (= (flatMap!2943 lt!2597100 lambda!449937) (derivationStepZipperUp!2598 ct1!250 (h!77338 s!7854)))))

(declare-fun lt!2597098 () Unit!164294)

(declare-fun lemmaFlatMapOnSingletonSet!2341 ((Set Context!15576) Context!15576 Int) Unit!164294)

(assert (=> b!7293605 (= lt!2597098 (lemmaFlatMapOnSingletonSet!2341 lt!2597100 ct1!250 lambda!449937))))

(assert (=> b!7293605 (= lt!2597100 (set.insert ct1!250 (as set.empty (Set Context!15576))))))

(declare-fun lt!2597095 () (Set Context!15576))

(assert (=> b!7293605 (= lt!2597095 (derivationStepZipperUp!2598 lt!2597096 (h!77338 s!7854)))))

(declare-fun ++!16738 (List!71013 List!71013) List!71013)

(assert (=> b!7293605 (= lt!2597096 (Context!15577 (++!16738 (exprs!8288 ct1!250) (exprs!8288 ct2!346))))))

(declare-fun lt!2597099 () Unit!164294)

(assert (=> b!7293605 (= lt!2597099 (lemmaConcatPreservesForall!1595 (exprs!8288 ct1!250) (exprs!8288 ct2!346) lambda!449936))))

(declare-fun b!7293606 () Bool)

(declare-fun e!4368566 () Bool)

(declare-fun tp!2061914 () Bool)

(assert (=> b!7293606 (= e!4368566 tp!2061914)))

(declare-fun b!7293608 () Bool)

(declare-fun res!2950290 () Bool)

(assert (=> b!7293608 (=> (not res!2950290) (not e!4368569))))

(assert (=> b!7293608 (= res!2950290 (is-Cons!70890 s!7854))))

(declare-fun b!7293609 () Bool)

(declare-fun res!2950292 () Bool)

(assert (=> b!7293609 (=> (not res!2950292) (not e!4368569))))

(declare-fun nullableContext!338 (Context!15576) Bool)

(assert (=> b!7293609 (= res!2950292 (nullableContext!338 ct1!250))))

(declare-fun res!2950291 () Bool)

(assert (=> start!710756 (=> (not res!2950291) (not e!4368569))))

(declare-fun matchZipper!3752 ((Set Context!15576) List!71014) Bool)

(assert (=> start!710756 (= res!2950291 (matchZipper!3752 (set.insert ct2!346 (as set.empty (Set Context!15576))) s!7854))))

(assert (=> start!710756 e!4368569))

(assert (=> start!710756 (and (inv!90131 ct2!346) e!4368566)))

(assert (=> start!710756 e!4368567))

(declare-fun e!4368568 () Bool)

(assert (=> start!710756 (and (inv!90131 ct1!250) e!4368568)))

(declare-fun b!7293607 () Bool)

(declare-fun tp!2061913 () Bool)

(assert (=> b!7293607 (= e!4368568 tp!2061913)))

(assert (= (and start!710756 res!2950291) b!7293609))

(assert (= (and b!7293609 res!2950292) b!7293608))

(assert (= (and b!7293608 res!2950290) b!7293605))

(assert (= start!710756 b!7293606))

(assert (= (and start!710756 (is-Cons!70890 s!7854)) b!7293604))

(assert (= start!710756 b!7293607))

(declare-fun m!7964990 () Bool)

(assert (=> b!7293605 m!7964990))

(assert (=> b!7293605 m!7964990))

(declare-fun m!7964992 () Bool)

(assert (=> b!7293605 m!7964992))

(declare-fun m!7964994 () Bool)

(assert (=> b!7293605 m!7964994))

(declare-fun m!7964996 () Bool)

(assert (=> b!7293605 m!7964996))

(assert (=> b!7293605 m!7964990))

(declare-fun m!7964998 () Bool)

(assert (=> b!7293605 m!7964998))

(declare-fun m!7965000 () Bool)

(assert (=> b!7293605 m!7965000))

(declare-fun m!7965002 () Bool)

(assert (=> b!7293605 m!7965002))

(declare-fun m!7965004 () Bool)

(assert (=> b!7293605 m!7965004))

(declare-fun m!7965006 () Bool)

(assert (=> b!7293609 m!7965006))

(declare-fun m!7965008 () Bool)

(assert (=> start!710756 m!7965008))

(assert (=> start!710756 m!7965008))

(declare-fun m!7965010 () Bool)

(assert (=> start!710756 m!7965010))

(declare-fun m!7965012 () Bool)

(assert (=> start!710756 m!7965012))

(declare-fun m!7965014 () Bool)

(assert (=> start!710756 m!7965014))

(push 1)

(assert (not b!7293606))

(assert (not b!7293604))

(assert tp_is_empty!47161)

(assert (not b!7293609))

(assert (not b!7293607))

(assert (not start!710756))

(assert (not b!7293605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2265923 () Bool)

(declare-fun c!1355316 () Bool)

(declare-fun isEmpty!40773 (List!71014) Bool)

(assert (=> d!2265923 (= c!1355316 (isEmpty!40773 s!7854))))

(declare-fun e!4368584 () Bool)

(assert (=> d!2265923 (= (matchZipper!3752 (set.insert ct2!346 (as set.empty (Set Context!15576))) s!7854) e!4368584)))

(declare-fun b!7293636 () Bool)

(declare-fun nullableZipper!3047 ((Set Context!15576)) Bool)

(assert (=> b!7293636 (= e!4368584 (nullableZipper!3047 (set.insert ct2!346 (as set.empty (Set Context!15576)))))))

(declare-fun b!7293637 () Bool)

(declare-fun derivationStepZipper!3583 ((Set Context!15576) C!37970) (Set Context!15576))

(declare-fun head!15045 (List!71014) C!37970)

(declare-fun tail!14558 (List!71014) List!71014)

(assert (=> b!7293637 (= e!4368584 (matchZipper!3752 (derivationStepZipper!3583 (set.insert ct2!346 (as set.empty (Set Context!15576))) (head!15045 s!7854)) (tail!14558 s!7854)))))

(assert (= (and d!2265923 c!1355316) b!7293636))

(assert (= (and d!2265923 (not c!1355316)) b!7293637))

(declare-fun m!7965042 () Bool)

(assert (=> d!2265923 m!7965042))

(assert (=> b!7293636 m!7965008))

(declare-fun m!7965044 () Bool)

(assert (=> b!7293636 m!7965044))

(declare-fun m!7965046 () Bool)

(assert (=> b!7293637 m!7965046))

(assert (=> b!7293637 m!7965008))

(assert (=> b!7293637 m!7965046))

(declare-fun m!7965048 () Bool)

(assert (=> b!7293637 m!7965048))

(declare-fun m!7965050 () Bool)

(assert (=> b!7293637 m!7965050))

(assert (=> b!7293637 m!7965048))

(assert (=> b!7293637 m!7965050))

(declare-fun m!7965052 () Bool)

(assert (=> b!7293637 m!7965052))

(assert (=> start!710756 d!2265923))

(declare-fun bs!1912531 () Bool)

(declare-fun d!2265925 () Bool)

(assert (= bs!1912531 (and d!2265925 b!7293605)))

(declare-fun lambda!449950 () Int)

(assert (=> bs!1912531 (= lambda!449950 lambda!449936)))

(declare-fun forall!17674 (List!71013 Int) Bool)

(assert (=> d!2265925 (= (inv!90131 ct2!346) (forall!17674 (exprs!8288 ct2!346) lambda!449950))))

(declare-fun bs!1912532 () Bool)

(assert (= bs!1912532 d!2265925))

(declare-fun m!7965054 () Bool)

(assert (=> bs!1912532 m!7965054))

(assert (=> start!710756 d!2265925))

(declare-fun bs!1912533 () Bool)

(declare-fun d!2265927 () Bool)

(assert (= bs!1912533 (and d!2265927 b!7293605)))

(declare-fun lambda!449951 () Int)

(assert (=> bs!1912533 (= lambda!449951 lambda!449936)))

(declare-fun bs!1912534 () Bool)

(assert (= bs!1912534 (and d!2265927 d!2265925)))

(assert (=> bs!1912534 (= lambda!449951 lambda!449950)))

(assert (=> d!2265927 (= (inv!90131 ct1!250) (forall!17674 (exprs!8288 ct1!250) lambda!449951))))

(declare-fun bs!1912535 () Bool)

(assert (= bs!1912535 d!2265927))

(declare-fun m!7965056 () Bool)

(assert (=> bs!1912535 m!7965056))

(assert (=> start!710756 d!2265927))

(declare-fun bs!1912536 () Bool)

(declare-fun d!2265929 () Bool)

(assert (= bs!1912536 (and d!2265929 b!7293605)))

(declare-fun lambda!449954 () Int)

(assert (=> bs!1912536 (not (= lambda!449954 lambda!449936))))

(declare-fun bs!1912537 () Bool)

(assert (= bs!1912537 (and d!2265929 d!2265925)))

(assert (=> bs!1912537 (not (= lambda!449954 lambda!449950))))

(declare-fun bs!1912538 () Bool)

(assert (= bs!1912538 (and d!2265929 d!2265927)))

(assert (=> bs!1912538 (not (= lambda!449954 lambda!449951))))

(assert (=> d!2265929 (= (nullableContext!338 ct1!250) (forall!17674 (exprs!8288 ct1!250) lambda!449954))))

(declare-fun bs!1912539 () Bool)

(assert (= bs!1912539 d!2265929))

(declare-fun m!7965058 () Bool)

(assert (=> bs!1912539 m!7965058))

(assert (=> b!7293609 d!2265929))

(declare-fun b!7293648 () Bool)

(declare-fun e!4368593 () (Set Context!15576))

(declare-fun e!4368591 () (Set Context!15576))

(assert (=> b!7293648 (= e!4368593 e!4368591)))

(declare-fun c!1355323 () Bool)

(assert (=> b!7293648 (= c!1355323 (is-Cons!70889 (exprs!8288 ct1!250)))))

(declare-fun b!7293649 () Bool)

(declare-fun call!664348 () (Set Context!15576))

(assert (=> b!7293649 (= e!4368591 call!664348)))

(declare-fun b!7293650 () Bool)

(assert (=> b!7293650 (= e!4368591 (as set.empty (Set Context!15576)))))

(declare-fun d!2265931 () Bool)

(declare-fun c!1355322 () Bool)

(declare-fun e!4368592 () Bool)

(assert (=> d!2265931 (= c!1355322 e!4368592)))

(declare-fun res!2950304 () Bool)

(assert (=> d!2265931 (=> (not res!2950304) (not e!4368592))))

(assert (=> d!2265931 (= res!2950304 (is-Cons!70889 (exprs!8288 ct1!250)))))

(assert (=> d!2265931 (= (derivationStepZipperUp!2598 ct1!250 (h!77338 s!7854)) e!4368593)))

(declare-fun bm!664343 () Bool)

(declare-fun derivationStepZipperDown!2756 (Regex!18848 Context!15576 C!37970) (Set Context!15576))

(assert (=> bm!664343 (= call!664348 (derivationStepZipperDown!2756 (h!77337 (exprs!8288 ct1!250)) (Context!15577 (t!385087 (exprs!8288 ct1!250))) (h!77338 s!7854)))))

(declare-fun b!7293651 () Bool)

(assert (=> b!7293651 (= e!4368593 (set.union call!664348 (derivationStepZipperUp!2598 (Context!15577 (t!385087 (exprs!8288 ct1!250))) (h!77338 s!7854))))))

(declare-fun b!7293652 () Bool)

(declare-fun nullable!8027 (Regex!18848) Bool)

(assert (=> b!7293652 (= e!4368592 (nullable!8027 (h!77337 (exprs!8288 ct1!250))))))

(assert (= (and d!2265931 res!2950304) b!7293652))

(assert (= (and d!2265931 c!1355322) b!7293651))

(assert (= (and d!2265931 (not c!1355322)) b!7293648))

(assert (= (and b!7293648 c!1355323) b!7293649))

(assert (= (and b!7293648 (not c!1355323)) b!7293650))

(assert (= (or b!7293651 b!7293649) bm!664343))

(declare-fun m!7965060 () Bool)

(assert (=> bm!664343 m!7965060))

(declare-fun m!7965062 () Bool)

(assert (=> b!7293651 m!7965062))

(declare-fun m!7965064 () Bool)

(assert (=> b!7293652 m!7965064))

(assert (=> b!7293605 d!2265931))

(declare-fun d!2265933 () Bool)

(assert (=> d!2265933 (forall!17674 (++!16738 (exprs!8288 ct1!250) (exprs!8288 ct2!346)) lambda!449936)))

(declare-fun lt!2597124 () Unit!164294)

(declare-fun choose!56499 (List!71013 List!71013 Int) Unit!164294)

(assert (=> d!2265933 (= lt!2597124 (choose!56499 (exprs!8288 ct1!250) (exprs!8288 ct2!346) lambda!449936))))

(assert (=> d!2265933 (forall!17674 (exprs!8288 ct1!250) lambda!449936)))

(assert (=> d!2265933 (= (lemmaConcatPreservesForall!1595 (exprs!8288 ct1!250) (exprs!8288 ct2!346) lambda!449936) lt!2597124)))

(declare-fun bs!1912540 () Bool)

(assert (= bs!1912540 d!2265933))

(assert (=> bs!1912540 m!7965002))

(assert (=> bs!1912540 m!7965002))

(declare-fun m!7965066 () Bool)

(assert (=> bs!1912540 m!7965066))

(declare-fun m!7965068 () Bool)

(assert (=> bs!1912540 m!7965068))

(declare-fun m!7965070 () Bool)

(assert (=> bs!1912540 m!7965070))

(assert (=> b!7293605 d!2265933))

(declare-fun e!4368599 () Bool)

(declare-fun lt!2597127 () List!71013)

(declare-fun b!7293664 () Bool)

(assert (=> b!7293664 (= e!4368599 (or (not (= (exprs!8288 ct2!346) Nil!70889)) (= lt!2597127 (exprs!8288 ct1!250))))))

(declare-fun b!7293661 () Bool)

(declare-fun e!4368598 () List!71013)

(assert (=> b!7293661 (= e!4368598 (exprs!8288 ct2!346))))

(declare-fun b!7293663 () Bool)

(declare-fun res!2950309 () Bool)

(assert (=> b!7293663 (=> (not res!2950309) (not e!4368599))))

(declare-fun size!41850 (List!71013) Int)

(assert (=> b!7293663 (= res!2950309 (= (size!41850 lt!2597127) (+ (size!41850 (exprs!8288 ct1!250)) (size!41850 (exprs!8288 ct2!346)))))))

(declare-fun b!7293662 () Bool)

(assert (=> b!7293662 (= e!4368598 (Cons!70889 (h!77337 (exprs!8288 ct1!250)) (++!16738 (t!385087 (exprs!8288 ct1!250)) (exprs!8288 ct2!346))))))

(declare-fun d!2265935 () Bool)

(assert (=> d!2265935 e!4368599))

(declare-fun res!2950310 () Bool)

(assert (=> d!2265935 (=> (not res!2950310) (not e!4368599))))

(declare-fun content!14804 (List!71013) (Set Regex!18848))

(assert (=> d!2265935 (= res!2950310 (= (content!14804 lt!2597127) (set.union (content!14804 (exprs!8288 ct1!250)) (content!14804 (exprs!8288 ct2!346)))))))

(assert (=> d!2265935 (= lt!2597127 e!4368598)))

(declare-fun c!1355326 () Bool)

(assert (=> d!2265935 (= c!1355326 (is-Nil!70889 (exprs!8288 ct1!250)))))

(assert (=> d!2265935 (= (++!16738 (exprs!8288 ct1!250) (exprs!8288 ct2!346)) lt!2597127)))

(assert (= (and d!2265935 c!1355326) b!7293661))

(assert (= (and d!2265935 (not c!1355326)) b!7293662))

(assert (= (and d!2265935 res!2950310) b!7293663))

(assert (= (and b!7293663 res!2950309) b!7293664))

(declare-fun m!7965072 () Bool)

(assert (=> b!7293663 m!7965072))

(declare-fun m!7965074 () Bool)

(assert (=> b!7293663 m!7965074))

(declare-fun m!7965076 () Bool)

(assert (=> b!7293663 m!7965076))

(declare-fun m!7965078 () Bool)

(assert (=> b!7293662 m!7965078))

(declare-fun m!7965080 () Bool)

(assert (=> d!2265935 m!7965080))

(declare-fun m!7965082 () Bool)

(assert (=> d!2265935 m!7965082))

(declare-fun m!7965084 () Bool)

(assert (=> d!2265935 m!7965084))

(assert (=> b!7293605 d!2265935))

(declare-fun bs!1912541 () Bool)

(declare-fun d!2265939 () Bool)

(assert (= bs!1912541 (and d!2265939 b!7293605)))

(declare-fun lambda!449955 () Int)

(assert (=> bs!1912541 (= lambda!449955 lambda!449936)))

(declare-fun bs!1912542 () Bool)

(assert (= bs!1912542 (and d!2265939 d!2265925)))

(assert (=> bs!1912542 (= lambda!449955 lambda!449950)))

(declare-fun bs!1912543 () Bool)

(assert (= bs!1912543 (and d!2265939 d!2265927)))

(assert (=> bs!1912543 (= lambda!449955 lambda!449951)))

(declare-fun bs!1912544 () Bool)

(assert (= bs!1912544 (and d!2265939 d!2265929)))

(assert (=> bs!1912544 (not (= lambda!449955 lambda!449954))))

(assert (=> d!2265939 (= (inv!90131 lt!2597096) (forall!17674 (exprs!8288 lt!2597096) lambda!449955))))

(declare-fun bs!1912545 () Bool)

(assert (= bs!1912545 d!2265939))

(declare-fun m!7965086 () Bool)

(assert (=> bs!1912545 m!7965086))

(assert (=> b!7293605 d!2265939))

(declare-fun d!2265941 () Bool)

(declare-fun dynLambda!28990 (Int Context!15576) (Set Context!15576))

(assert (=> d!2265941 (= (flatMap!2943 lt!2597100 lambda!449937) (dynLambda!28990 lambda!449937 ct1!250))))

(declare-fun lt!2597130 () Unit!164294)

(declare-fun choose!56500 ((Set Context!15576) Context!15576 Int) Unit!164294)

(assert (=> d!2265941 (= lt!2597130 (choose!56500 lt!2597100 ct1!250 lambda!449937))))

(assert (=> d!2265941 (= lt!2597100 (set.insert ct1!250 (as set.empty (Set Context!15576))))))

(assert (=> d!2265941 (= (lemmaFlatMapOnSingletonSet!2341 lt!2597100 ct1!250 lambda!449937) lt!2597130)))

(declare-fun b_lambda!281125 () Bool)

(assert (=> (not b_lambda!281125) (not d!2265941)))

(declare-fun bs!1912546 () Bool)

(assert (= bs!1912546 d!2265941))

(assert (=> bs!1912546 m!7964996))

(declare-fun m!7965088 () Bool)

(assert (=> bs!1912546 m!7965088))

(declare-fun m!7965090 () Bool)

(assert (=> bs!1912546 m!7965090))

(assert (=> bs!1912546 m!7965000))

(assert (=> b!7293605 d!2265941))

(declare-fun b!7293665 () Bool)

(declare-fun e!4368602 () (Set Context!15576))

(declare-fun e!4368600 () (Set Context!15576))

(assert (=> b!7293665 (= e!4368602 e!4368600)))

(declare-fun c!1355329 () Bool)

(assert (=> b!7293665 (= c!1355329 (is-Cons!70889 (exprs!8288 lt!2597096)))))

(declare-fun b!7293666 () Bool)

(declare-fun call!664349 () (Set Context!15576))

(assert (=> b!7293666 (= e!4368600 call!664349)))

(declare-fun b!7293667 () Bool)

(assert (=> b!7293667 (= e!4368600 (as set.empty (Set Context!15576)))))

(declare-fun d!2265943 () Bool)

(declare-fun c!1355328 () Bool)

(declare-fun e!4368601 () Bool)

(assert (=> d!2265943 (= c!1355328 e!4368601)))

(declare-fun res!2950311 () Bool)

(assert (=> d!2265943 (=> (not res!2950311) (not e!4368601))))

(assert (=> d!2265943 (= res!2950311 (is-Cons!70889 (exprs!8288 lt!2597096)))))

(assert (=> d!2265943 (= (derivationStepZipperUp!2598 lt!2597096 (h!77338 s!7854)) e!4368602)))

(declare-fun bm!664344 () Bool)

(assert (=> bm!664344 (= call!664349 (derivationStepZipperDown!2756 (h!77337 (exprs!8288 lt!2597096)) (Context!15577 (t!385087 (exprs!8288 lt!2597096))) (h!77338 s!7854)))))

(declare-fun b!7293668 () Bool)

(assert (=> b!7293668 (= e!4368602 (set.union call!664349 (derivationStepZipperUp!2598 (Context!15577 (t!385087 (exprs!8288 lt!2597096))) (h!77338 s!7854))))))

(declare-fun b!7293669 () Bool)

(assert (=> b!7293669 (= e!4368601 (nullable!8027 (h!77337 (exprs!8288 lt!2597096))))))

(assert (= (and d!2265943 res!2950311) b!7293669))

(assert (= (and d!2265943 c!1355328) b!7293668))

(assert (= (and d!2265943 (not c!1355328)) b!7293665))

(assert (= (and b!7293665 c!1355329) b!7293666))

(assert (= (and b!7293665 (not c!1355329)) b!7293667))

(assert (= (or b!7293668 b!7293666) bm!664344))

(declare-fun m!7965092 () Bool)

(assert (=> bm!664344 m!7965092))

(declare-fun m!7965094 () Bool)

(assert (=> b!7293668 m!7965094))

(declare-fun m!7965096 () Bool)

(assert (=> b!7293669 m!7965096))

(assert (=> b!7293605 d!2265943))

(declare-fun d!2265945 () Bool)

(declare-fun choose!56501 ((Set Context!15576) Int) (Set Context!15576))

(assert (=> d!2265945 (= (flatMap!2943 lt!2597100 lambda!449937) (choose!56501 lt!2597100 lambda!449937))))

(declare-fun bs!1912549 () Bool)

(assert (= bs!1912549 d!2265945))

(declare-fun m!7965100 () Bool)

(assert (=> bs!1912549 m!7965100))

(assert (=> b!7293605 d!2265945))

(declare-fun b!7293674 () Bool)

(declare-fun e!4368605 () Bool)

(declare-fun tp!2061927 () Bool)

(assert (=> b!7293674 (= e!4368605 (and tp_is_empty!47161 tp!2061927))))

(assert (=> b!7293604 (= tp!2061915 e!4368605)))

(assert (= (and b!7293604 (is-Cons!70890 (t!385088 s!7854))) b!7293674))

(declare-fun b!7293679 () Bool)

(declare-fun e!4368608 () Bool)

(declare-fun tp!2061932 () Bool)

(declare-fun tp!2061933 () Bool)

(assert (=> b!7293679 (= e!4368608 (and tp!2061932 tp!2061933))))

(assert (=> b!7293607 (= tp!2061913 e!4368608)))

(assert (= (and b!7293607 (is-Cons!70889 (exprs!8288 ct1!250))) b!7293679))

(declare-fun b!7293680 () Bool)

(declare-fun e!4368609 () Bool)

(declare-fun tp!2061934 () Bool)

(declare-fun tp!2061935 () Bool)

(assert (=> b!7293680 (= e!4368609 (and tp!2061934 tp!2061935))))

(assert (=> b!7293606 (= tp!2061914 e!4368609)))

(assert (= (and b!7293606 (is-Cons!70889 (exprs!8288 ct2!346))) b!7293680))

(declare-fun b_lambda!281127 () Bool)

(assert (= b_lambda!281125 (or b!7293605 b_lambda!281127)))

(declare-fun bs!1912550 () Bool)

(declare-fun d!2265949 () Bool)

(assert (= bs!1912550 (and d!2265949 b!7293605)))

(assert (=> bs!1912550 (= (dynLambda!28990 lambda!449937 ct1!250) (derivationStepZipperUp!2598 ct1!250 (h!77338 s!7854)))))

(assert (=> bs!1912550 m!7964994))

(assert (=> d!2265941 d!2265949))

(push 1)

(assert (not b!7293674))

(assert (not b!7293636))

(assert (not d!2265925))

(assert (not b!7293637))

(assert (not d!2265927))

(assert (not bm!664344))

(assert (not b!7293651))

(assert (not b!7293679))

(assert (not d!2265941))

(assert (not d!2265933))

(assert (not d!2265935))

(assert (not b!7293668))

(assert (not bm!664343))

(assert (not b!7293669))

(assert (not b!7293680))

(assert (not b_lambda!281127))

(assert (not d!2265939))

(assert (not d!2265945))

(assert (not d!2265929))

(assert tp_is_empty!47161)

(assert (not b!7293652))

(assert (not b!7293662))

(assert (not d!2265923))

(assert (not b!7293663))

(assert (not bs!1912550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

