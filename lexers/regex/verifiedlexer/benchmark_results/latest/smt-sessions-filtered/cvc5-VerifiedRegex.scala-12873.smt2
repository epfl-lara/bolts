; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710868 () Bool)

(assert start!710868)

(declare-fun b!7294034 () Bool)

(assert (=> b!7294034 true))

(declare-fun e!4368812 () Bool)

(declare-fun e!4368814 () Bool)

(assert (=> b!7294034 (= e!4368812 (not e!4368814))))

(declare-fun res!2950423 () Bool)

(assert (=> b!7294034 (=> res!2950423 e!4368814)))

(declare-datatypes ((C!37982 0))(
  ( (C!37983 (val!28939 Int)) )
))
(declare-datatypes ((Regex!18854 0))(
  ( (ElementMatch!18854 (c!1355429 C!37982)) (Concat!27699 (regOne!38220 Regex!18854) (regTwo!38220 Regex!18854)) (EmptyExpr!18854) (Star!18854 (reg!19183 Regex!18854)) (EmptyLang!18854) (Union!18854 (regOne!38221 Regex!18854) (regTwo!38221 Regex!18854)) )
))
(declare-datatypes ((List!71025 0))(
  ( (Nil!70901) (Cons!70901 (h!77349 Regex!18854) (t!385099 List!71025)) )
))
(declare-datatypes ((Context!15588 0))(
  ( (Context!15589 (exprs!8294 List!71025)) )
))
(declare-fun lt!2597320 () (Set Context!15588))

(declare-fun lt!2597324 () (Set Context!15588))

(declare-datatypes ((List!71026 0))(
  ( (Nil!70902) (Cons!70902 (h!77350 C!37982) (t!385100 List!71026)) )
))
(declare-fun s!7854 () List!71026)

(declare-fun derivationStepZipper!3587 ((Set Context!15588) C!37982) (Set Context!15588))

(assert (=> b!7294034 (= res!2950423 (not (= lt!2597324 (derivationStepZipper!3587 lt!2597320 (h!77350 s!7854)))))))

(declare-fun ct1!250 () Context!15588)

(declare-fun lambda!450066 () Int)

(declare-datatypes ((Unit!164306 0))(
  ( (Unit!164307) )
))
(declare-fun lt!2597327 () Unit!164306)

(declare-fun ct2!346 () Context!15588)

(declare-fun lemmaConcatPreservesForall!1601 (List!71025 List!71025 Int) Unit!164306)

(assert (=> b!7294034 (= lt!2597327 (lemmaConcatPreservesForall!1601 (exprs!8294 ct1!250) (exprs!8294 ct2!346) lambda!450066))))

(declare-fun lambda!450067 () Int)

(declare-fun lt!2597328 () Context!15588)

(declare-fun flatMap!2949 ((Set Context!15588) Int) (Set Context!15588))

(declare-fun derivationStepZipperUp!2604 (Context!15588 C!37982) (Set Context!15588))

(assert (=> b!7294034 (= (flatMap!2949 lt!2597320 lambda!450067) (derivationStepZipperUp!2604 lt!2597328 (h!77350 s!7854)))))

(declare-fun lt!2597322 () Unit!164306)

(declare-fun lemmaFlatMapOnSingletonSet!2347 ((Set Context!15588) Context!15588 Int) Unit!164306)

(assert (=> b!7294034 (= lt!2597322 (lemmaFlatMapOnSingletonSet!2347 lt!2597320 lt!2597328 lambda!450067))))

(assert (=> b!7294034 (= lt!2597320 (set.insert lt!2597328 (as set.empty (Set Context!15588))))))

(declare-fun lt!2597325 () Unit!164306)

(assert (=> b!7294034 (= lt!2597325 (lemmaConcatPreservesForall!1601 (exprs!8294 ct1!250) (exprs!8294 ct2!346) lambda!450066))))

(declare-fun lt!2597326 () Unit!164306)

(assert (=> b!7294034 (= lt!2597326 (lemmaConcatPreservesForall!1601 (exprs!8294 ct1!250) (exprs!8294 ct2!346) lambda!450066))))

(declare-fun lt!2597321 () (Set Context!15588))

(assert (=> b!7294034 (= (flatMap!2949 lt!2597321 lambda!450067) (derivationStepZipperUp!2604 ct1!250 (h!77350 s!7854)))))

(declare-fun lt!2597329 () Unit!164306)

(assert (=> b!7294034 (= lt!2597329 (lemmaFlatMapOnSingletonSet!2347 lt!2597321 ct1!250 lambda!450067))))

(assert (=> b!7294034 (= lt!2597321 (set.insert ct1!250 (as set.empty (Set Context!15588))))))

(assert (=> b!7294034 (= lt!2597324 (derivationStepZipperUp!2604 lt!2597328 (h!77350 s!7854)))))

(declare-fun ++!16744 (List!71025 List!71025) List!71025)

(assert (=> b!7294034 (= lt!2597328 (Context!15589 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346))))))

(declare-fun lt!2597323 () Unit!164306)

(assert (=> b!7294034 (= lt!2597323 (lemmaConcatPreservesForall!1601 (exprs!8294 ct1!250) (exprs!8294 ct2!346) lambda!450066))))

(declare-fun b!7294035 () Bool)

(declare-fun res!2950427 () Bool)

(assert (=> b!7294035 (=> res!2950427 e!4368814)))

(declare-fun isEmpty!40779 (List!71025) Bool)

(assert (=> b!7294035 (= res!2950427 (isEmpty!40779 (exprs!8294 ct1!250)))))

(declare-fun b!7294036 () Bool)

(declare-fun e!4368811 () Bool)

(declare-fun tp!2062034 () Bool)

(assert (=> b!7294036 (= e!4368811 tp!2062034)))

(declare-fun b!7294038 () Bool)

(declare-fun inv!90146 (Context!15588) Bool)

(declare-fun tail!14562 (List!71025) List!71025)

(assert (=> b!7294038 (= e!4368814 (inv!90146 (Context!15589 (tail!14562 (exprs!8294 ct1!250)))))))

(declare-fun b!7294039 () Bool)

(declare-fun res!2950422 () Bool)

(assert (=> b!7294039 (=> (not res!2950422) (not e!4368812))))

(assert (=> b!7294039 (= res!2950422 (is-Cons!70902 s!7854))))

(declare-fun b!7294040 () Bool)

(declare-fun res!2950424 () Bool)

(assert (=> b!7294040 (=> res!2950424 e!4368814)))

(assert (=> b!7294040 (= res!2950424 (not (is-Cons!70901 (exprs!8294 ct1!250))))))

(declare-fun res!2950426 () Bool)

(assert (=> start!710868 (=> (not res!2950426) (not e!4368812))))

(declare-fun matchZipper!3758 ((Set Context!15588) List!71026) Bool)

(assert (=> start!710868 (= res!2950426 (matchZipper!3758 (set.insert ct2!346 (as set.empty (Set Context!15588))) s!7854))))

(assert (=> start!710868 e!4368812))

(assert (=> start!710868 (and (inv!90146 ct2!346) e!4368811)))

(declare-fun e!4368813 () Bool)

(assert (=> start!710868 e!4368813))

(declare-fun e!4368815 () Bool)

(assert (=> start!710868 (and (inv!90146 ct1!250) e!4368815)))

(declare-fun b!7294037 () Bool)

(declare-fun tp!2062035 () Bool)

(assert (=> b!7294037 (= e!4368815 tp!2062035)))

(declare-fun b!7294041 () Bool)

(declare-fun res!2950425 () Bool)

(assert (=> b!7294041 (=> (not res!2950425) (not e!4368812))))

(declare-fun nullableContext!344 (Context!15588) Bool)

(assert (=> b!7294041 (= res!2950425 (nullableContext!344 ct1!250))))

(declare-fun b!7294042 () Bool)

(declare-fun tp_is_empty!47173 () Bool)

(declare-fun tp!2062033 () Bool)

(assert (=> b!7294042 (= e!4368813 (and tp_is_empty!47173 tp!2062033))))

(assert (= (and start!710868 res!2950426) b!7294041))

(assert (= (and b!7294041 res!2950425) b!7294039))

(assert (= (and b!7294039 res!2950422) b!7294034))

(assert (= (and b!7294034 (not res!2950423)) b!7294040))

(assert (= (and b!7294040 (not res!2950424)) b!7294035))

(assert (= (and b!7294035 (not res!2950427)) b!7294038))

(assert (= start!710868 b!7294036))

(assert (= (and start!710868 (is-Cons!70902 s!7854)) b!7294042))

(assert (= start!710868 b!7294037))

(declare-fun m!7965522 () Bool)

(assert (=> b!7294034 m!7965522))

(declare-fun m!7965524 () Bool)

(assert (=> b!7294034 m!7965524))

(declare-fun m!7965526 () Bool)

(assert (=> b!7294034 m!7965526))

(declare-fun m!7965528 () Bool)

(assert (=> b!7294034 m!7965528))

(declare-fun m!7965530 () Bool)

(assert (=> b!7294034 m!7965530))

(assert (=> b!7294034 m!7965530))

(declare-fun m!7965532 () Bool)

(assert (=> b!7294034 m!7965532))

(declare-fun m!7965534 () Bool)

(assert (=> b!7294034 m!7965534))

(assert (=> b!7294034 m!7965530))

(declare-fun m!7965536 () Bool)

(assert (=> b!7294034 m!7965536))

(declare-fun m!7965538 () Bool)

(assert (=> b!7294034 m!7965538))

(declare-fun m!7965540 () Bool)

(assert (=> b!7294034 m!7965540))

(assert (=> b!7294034 m!7965530))

(declare-fun m!7965542 () Bool)

(assert (=> b!7294034 m!7965542))

(declare-fun m!7965544 () Bool)

(assert (=> b!7294035 m!7965544))

(declare-fun m!7965546 () Bool)

(assert (=> b!7294041 m!7965546))

(declare-fun m!7965548 () Bool)

(assert (=> start!710868 m!7965548))

(assert (=> start!710868 m!7965548))

(declare-fun m!7965550 () Bool)

(assert (=> start!710868 m!7965550))

(declare-fun m!7965552 () Bool)

(assert (=> start!710868 m!7965552))

(declare-fun m!7965554 () Bool)

(assert (=> start!710868 m!7965554))

(declare-fun m!7965556 () Bool)

(assert (=> b!7294038 m!7965556))

(declare-fun m!7965558 () Bool)

(assert (=> b!7294038 m!7965558))

(push 1)

(assert (not b!7294035))

(assert (not start!710868))

(assert (not b!7294037))

(assert tp_is_empty!47173)

(assert (not b!7294038))

(assert (not b!7294041))

(assert (not b!7294036))

(assert (not b!7294034))

(assert (not b!7294042))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1912639 () Bool)

(declare-fun d!2266088 () Bool)

(assert (= bs!1912639 (and d!2266088 b!7294034)))

(declare-fun lambda!450084 () Int)

(assert (=> bs!1912639 (= lambda!450084 lambda!450066)))

(declare-fun forall!17679 (List!71025 Int) Bool)

(assert (=> d!2266088 (= (inv!90146 (Context!15589 (tail!14562 (exprs!8294 ct1!250)))) (forall!17679 (exprs!8294 (Context!15589 (tail!14562 (exprs!8294 ct1!250)))) lambda!450084))))

(declare-fun bs!1912640 () Bool)

(assert (= bs!1912640 d!2266088))

(declare-fun m!7965598 () Bool)

(assert (=> bs!1912640 m!7965598))

(assert (=> b!7294038 d!2266088))

(declare-fun d!2266090 () Bool)

(assert (=> d!2266090 (= (tail!14562 (exprs!8294 ct1!250)) (t!385099 (exprs!8294 ct1!250)))))

(assert (=> b!7294038 d!2266090))

(declare-fun d!2266092 () Bool)

(declare-fun choose!56509 ((Set Context!15588) Int) (Set Context!15588))

(assert (=> d!2266092 (= (flatMap!2949 lt!2597320 lambda!450067) (choose!56509 lt!2597320 lambda!450067))))

(declare-fun bs!1912641 () Bool)

(assert (= bs!1912641 d!2266092))

(declare-fun m!7965600 () Bool)

(assert (=> bs!1912641 m!7965600))

(assert (=> b!7294034 d!2266092))

(declare-fun b!7294084 () Bool)

(declare-fun e!4368838 () (Set Context!15588))

(declare-fun call!664372 () (Set Context!15588))

(assert (=> b!7294084 (= e!4368838 call!664372)))

(declare-fun d!2266094 () Bool)

(declare-fun c!1355440 () Bool)

(declare-fun e!4368839 () Bool)

(assert (=> d!2266094 (= c!1355440 e!4368839)))

(declare-fun res!2950448 () Bool)

(assert (=> d!2266094 (=> (not res!2950448) (not e!4368839))))

(assert (=> d!2266094 (= res!2950448 (is-Cons!70901 (exprs!8294 ct1!250)))))

(declare-fun e!4368837 () (Set Context!15588))

(assert (=> d!2266094 (= (derivationStepZipperUp!2604 ct1!250 (h!77350 s!7854)) e!4368837)))

(declare-fun b!7294085 () Bool)

(declare-fun nullable!8031 (Regex!18854) Bool)

(assert (=> b!7294085 (= e!4368839 (nullable!8031 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun b!7294086 () Bool)

(assert (=> b!7294086 (= e!4368837 (set.union call!664372 (derivationStepZipperUp!2604 (Context!15589 (t!385099 (exprs!8294 ct1!250))) (h!77350 s!7854))))))

(declare-fun b!7294087 () Bool)

(assert (=> b!7294087 (= e!4368837 e!4368838)))

(declare-fun c!1355439 () Bool)

(assert (=> b!7294087 (= c!1355439 (is-Cons!70901 (exprs!8294 ct1!250)))))

(declare-fun b!7294088 () Bool)

(assert (=> b!7294088 (= e!4368838 (as set.empty (Set Context!15588)))))

(declare-fun bm!664367 () Bool)

(declare-fun derivationStepZipperDown!2760 (Regex!18854 Context!15588 C!37982) (Set Context!15588))

(assert (=> bm!664367 (= call!664372 (derivationStepZipperDown!2760 (h!77349 (exprs!8294 ct1!250)) (Context!15589 (t!385099 (exprs!8294 ct1!250))) (h!77350 s!7854)))))

(assert (= (and d!2266094 res!2950448) b!7294085))

(assert (= (and d!2266094 c!1355440) b!7294086))

(assert (= (and d!2266094 (not c!1355440)) b!7294087))

(assert (= (and b!7294087 c!1355439) b!7294084))

(assert (= (and b!7294087 (not c!1355439)) b!7294088))

(assert (= (or b!7294086 b!7294084) bm!664367))

(declare-fun m!7965602 () Bool)

(assert (=> b!7294085 m!7965602))

(declare-fun m!7965604 () Bool)

(assert (=> b!7294086 m!7965604))

(declare-fun m!7965606 () Bool)

(assert (=> bm!664367 m!7965606))

(assert (=> b!7294034 d!2266094))

(declare-fun d!2266096 () Bool)

(assert (=> d!2266096 (= (flatMap!2949 lt!2597321 lambda!450067) (choose!56509 lt!2597321 lambda!450067))))

(declare-fun bs!1912642 () Bool)

(assert (= bs!1912642 d!2266096))

(declare-fun m!7965608 () Bool)

(assert (=> bs!1912642 m!7965608))

(assert (=> b!7294034 d!2266096))

(declare-fun bs!1912643 () Bool)

(declare-fun d!2266098 () Bool)

(assert (= bs!1912643 (and d!2266098 b!7294034)))

(declare-fun lambda!450087 () Int)

(assert (=> bs!1912643 (= lambda!450087 lambda!450067)))

(assert (=> d!2266098 true))

(assert (=> d!2266098 (= (derivationStepZipper!3587 lt!2597320 (h!77350 s!7854)) (flatMap!2949 lt!2597320 lambda!450087))))

(declare-fun bs!1912644 () Bool)

(assert (= bs!1912644 d!2266098))

(declare-fun m!7965610 () Bool)

(assert (=> bs!1912644 m!7965610))

(assert (=> b!7294034 d!2266098))

(declare-fun d!2266100 () Bool)

(declare-fun dynLambda!28994 (Int Context!15588) (Set Context!15588))

(assert (=> d!2266100 (= (flatMap!2949 lt!2597320 lambda!450067) (dynLambda!28994 lambda!450067 lt!2597328))))

(declare-fun lt!2597362 () Unit!164306)

(declare-fun choose!56510 ((Set Context!15588) Context!15588 Int) Unit!164306)

(assert (=> d!2266100 (= lt!2597362 (choose!56510 lt!2597320 lt!2597328 lambda!450067))))

(assert (=> d!2266100 (= lt!2597320 (set.insert lt!2597328 (as set.empty (Set Context!15588))))))

(assert (=> d!2266100 (= (lemmaFlatMapOnSingletonSet!2347 lt!2597320 lt!2597328 lambda!450067) lt!2597362)))

(declare-fun b_lambda!281165 () Bool)

(assert (=> (not b_lambda!281165) (not d!2266100)))

(declare-fun bs!1912645 () Bool)

(assert (= bs!1912645 d!2266100))

(assert (=> bs!1912645 m!7965536))

(declare-fun m!7965612 () Bool)

(assert (=> bs!1912645 m!7965612))

(declare-fun m!7965614 () Bool)

(assert (=> bs!1912645 m!7965614))

(assert (=> bs!1912645 m!7965522))

(assert (=> b!7294034 d!2266100))

(declare-fun d!2266102 () Bool)

(assert (=> d!2266102 (forall!17679 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346)) lambda!450066)))

(declare-fun lt!2597365 () Unit!164306)

(declare-fun choose!56511 (List!71025 List!71025 Int) Unit!164306)

(assert (=> d!2266102 (= lt!2597365 (choose!56511 (exprs!8294 ct1!250) (exprs!8294 ct2!346) lambda!450066))))

(assert (=> d!2266102 (forall!17679 (exprs!8294 ct1!250) lambda!450066)))

(assert (=> d!2266102 (= (lemmaConcatPreservesForall!1601 (exprs!8294 ct1!250) (exprs!8294 ct2!346) lambda!450066) lt!2597365)))

(declare-fun bs!1912646 () Bool)

(assert (= bs!1912646 d!2266102))

(assert (=> bs!1912646 m!7965534))

(assert (=> bs!1912646 m!7965534))

(declare-fun m!7965616 () Bool)

(assert (=> bs!1912646 m!7965616))

(declare-fun m!7965618 () Bool)

(assert (=> bs!1912646 m!7965618))

(declare-fun m!7965620 () Bool)

(assert (=> bs!1912646 m!7965620))

(assert (=> b!7294034 d!2266102))

(declare-fun d!2266104 () Bool)

(assert (=> d!2266104 (= (flatMap!2949 lt!2597321 lambda!450067) (dynLambda!28994 lambda!450067 ct1!250))))

(declare-fun lt!2597366 () Unit!164306)

(assert (=> d!2266104 (= lt!2597366 (choose!56510 lt!2597321 ct1!250 lambda!450067))))

(assert (=> d!2266104 (= lt!2597321 (set.insert ct1!250 (as set.empty (Set Context!15588))))))

(assert (=> d!2266104 (= (lemmaFlatMapOnSingletonSet!2347 lt!2597321 ct1!250 lambda!450067) lt!2597366)))

(declare-fun b_lambda!281167 () Bool)

(assert (=> (not b_lambda!281167) (not d!2266104)))

(declare-fun bs!1912647 () Bool)

(assert (= bs!1912647 d!2266104))

(assert (=> bs!1912647 m!7965526))

(declare-fun m!7965622 () Bool)

(assert (=> bs!1912647 m!7965622))

(declare-fun m!7965624 () Bool)

(assert (=> bs!1912647 m!7965624))

(assert (=> bs!1912647 m!7965532))

(assert (=> b!7294034 d!2266104))

(declare-fun b!7294091 () Bool)

(declare-fun e!4368841 () (Set Context!15588))

(declare-fun call!664373 () (Set Context!15588))

(assert (=> b!7294091 (= e!4368841 call!664373)))

(declare-fun d!2266106 () Bool)

(declare-fun c!1355444 () Bool)

(declare-fun e!4368842 () Bool)

(assert (=> d!2266106 (= c!1355444 e!4368842)))

(declare-fun res!2950449 () Bool)

(assert (=> d!2266106 (=> (not res!2950449) (not e!4368842))))

(assert (=> d!2266106 (= res!2950449 (is-Cons!70901 (exprs!8294 lt!2597328)))))

(declare-fun e!4368840 () (Set Context!15588))

(assert (=> d!2266106 (= (derivationStepZipperUp!2604 lt!2597328 (h!77350 s!7854)) e!4368840)))

(declare-fun b!7294092 () Bool)

(assert (=> b!7294092 (= e!4368842 (nullable!8031 (h!77349 (exprs!8294 lt!2597328))))))

(declare-fun b!7294093 () Bool)

(assert (=> b!7294093 (= e!4368840 (set.union call!664373 (derivationStepZipperUp!2604 (Context!15589 (t!385099 (exprs!8294 lt!2597328))) (h!77350 s!7854))))))

(declare-fun b!7294094 () Bool)

(assert (=> b!7294094 (= e!4368840 e!4368841)))

(declare-fun c!1355443 () Bool)

(assert (=> b!7294094 (= c!1355443 (is-Cons!70901 (exprs!8294 lt!2597328)))))

(declare-fun b!7294095 () Bool)

(assert (=> b!7294095 (= e!4368841 (as set.empty (Set Context!15588)))))

(declare-fun bm!664368 () Bool)

(assert (=> bm!664368 (= call!664373 (derivationStepZipperDown!2760 (h!77349 (exprs!8294 lt!2597328)) (Context!15589 (t!385099 (exprs!8294 lt!2597328))) (h!77350 s!7854)))))

(assert (= (and d!2266106 res!2950449) b!7294092))

(assert (= (and d!2266106 c!1355444) b!7294093))

(assert (= (and d!2266106 (not c!1355444)) b!7294094))

(assert (= (and b!7294094 c!1355443) b!7294091))

(assert (= (and b!7294094 (not c!1355443)) b!7294095))

(assert (= (or b!7294093 b!7294091) bm!664368))

(declare-fun m!7965626 () Bool)

(assert (=> b!7294092 m!7965626))

(declare-fun m!7965628 () Bool)

(assert (=> b!7294093 m!7965628))

(declare-fun m!7965630 () Bool)

(assert (=> bm!664368 m!7965630))

(assert (=> b!7294034 d!2266106))

(declare-fun b!7294106 () Bool)

(declare-fun res!2950455 () Bool)

(declare-fun e!4368848 () Bool)

(assert (=> b!7294106 (=> (not res!2950455) (not e!4368848))))

(declare-fun lt!2597369 () List!71025)

(declare-fun size!41853 (List!71025) Int)

(assert (=> b!7294106 (= res!2950455 (= (size!41853 lt!2597369) (+ (size!41853 (exprs!8294 ct1!250)) (size!41853 (exprs!8294 ct2!346)))))))

(declare-fun d!2266108 () Bool)

(assert (=> d!2266108 e!4368848))

(declare-fun res!2950454 () Bool)

(assert (=> d!2266108 (=> (not res!2950454) (not e!4368848))))

(declare-fun content!14807 (List!71025) (Set Regex!18854))

(assert (=> d!2266108 (= res!2950454 (= (content!14807 lt!2597369) (set.union (content!14807 (exprs!8294 ct1!250)) (content!14807 (exprs!8294 ct2!346)))))))

(declare-fun e!4368847 () List!71025)

(assert (=> d!2266108 (= lt!2597369 e!4368847)))

(declare-fun c!1355447 () Bool)

(assert (=> d!2266108 (= c!1355447 (is-Nil!70901 (exprs!8294 ct1!250)))))

(assert (=> d!2266108 (= (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346)) lt!2597369)))

(declare-fun b!7294104 () Bool)

(assert (=> b!7294104 (= e!4368847 (exprs!8294 ct2!346))))

(declare-fun b!7294105 () Bool)

(assert (=> b!7294105 (= e!4368847 (Cons!70901 (h!77349 (exprs!8294 ct1!250)) (++!16744 (t!385099 (exprs!8294 ct1!250)) (exprs!8294 ct2!346))))))

(declare-fun b!7294107 () Bool)

(assert (=> b!7294107 (= e!4368848 (or (not (= (exprs!8294 ct2!346) Nil!70901)) (= lt!2597369 (exprs!8294 ct1!250))))))

(assert (= (and d!2266108 c!1355447) b!7294104))

(assert (= (and d!2266108 (not c!1355447)) b!7294105))

(assert (= (and d!2266108 res!2950454) b!7294106))

(assert (= (and b!7294106 res!2950455) b!7294107))

(declare-fun m!7965632 () Bool)

(assert (=> b!7294106 m!7965632))

(declare-fun m!7965634 () Bool)

(assert (=> b!7294106 m!7965634))

(declare-fun m!7965636 () Bool)

(assert (=> b!7294106 m!7965636))

(declare-fun m!7965638 () Bool)

(assert (=> d!2266108 m!7965638))

(declare-fun m!7965640 () Bool)

(assert (=> d!2266108 m!7965640))

(declare-fun m!7965642 () Bool)

(assert (=> d!2266108 m!7965642))

(declare-fun m!7965644 () Bool)

(assert (=> b!7294105 m!7965644))

(assert (=> b!7294034 d!2266108))

(declare-fun d!2266110 () Bool)

(declare-fun c!1355450 () Bool)

(declare-fun isEmpty!40781 (List!71026) Bool)

(assert (=> d!2266110 (= c!1355450 (isEmpty!40781 s!7854))))

(declare-fun e!4368851 () Bool)

(assert (=> d!2266110 (= (matchZipper!3758 (set.insert ct2!346 (as set.empty (Set Context!15588))) s!7854) e!4368851)))

(declare-fun b!7294112 () Bool)

(declare-fun nullableZipper!3051 ((Set Context!15588)) Bool)

(assert (=> b!7294112 (= e!4368851 (nullableZipper!3051 (set.insert ct2!346 (as set.empty (Set Context!15588)))))))

(declare-fun b!7294113 () Bool)

(declare-fun head!15049 (List!71026) C!37982)

(declare-fun tail!14564 (List!71026) List!71026)

(assert (=> b!7294113 (= e!4368851 (matchZipper!3758 (derivationStepZipper!3587 (set.insert ct2!346 (as set.empty (Set Context!15588))) (head!15049 s!7854)) (tail!14564 s!7854)))))

(assert (= (and d!2266110 c!1355450) b!7294112))

(assert (= (and d!2266110 (not c!1355450)) b!7294113))

(declare-fun m!7965646 () Bool)

(assert (=> d!2266110 m!7965646))

(assert (=> b!7294112 m!7965548))

(declare-fun m!7965648 () Bool)

(assert (=> b!7294112 m!7965648))

(declare-fun m!7965650 () Bool)

(assert (=> b!7294113 m!7965650))

(assert (=> b!7294113 m!7965548))

(assert (=> b!7294113 m!7965650))

(declare-fun m!7965652 () Bool)

(assert (=> b!7294113 m!7965652))

(declare-fun m!7965654 () Bool)

(assert (=> b!7294113 m!7965654))

(assert (=> b!7294113 m!7965652))

(assert (=> b!7294113 m!7965654))

(declare-fun m!7965656 () Bool)

(assert (=> b!7294113 m!7965656))

(assert (=> start!710868 d!2266110))

(declare-fun bs!1912648 () Bool)

(declare-fun d!2266114 () Bool)

(assert (= bs!1912648 (and d!2266114 b!7294034)))

(declare-fun lambda!450088 () Int)

(assert (=> bs!1912648 (= lambda!450088 lambda!450066)))

(declare-fun bs!1912649 () Bool)

(assert (= bs!1912649 (and d!2266114 d!2266088)))

(assert (=> bs!1912649 (= lambda!450088 lambda!450084)))

(assert (=> d!2266114 (= (inv!90146 ct2!346) (forall!17679 (exprs!8294 ct2!346) lambda!450088))))

(declare-fun bs!1912650 () Bool)

(assert (= bs!1912650 d!2266114))

(declare-fun m!7965658 () Bool)

(assert (=> bs!1912650 m!7965658))

(assert (=> start!710868 d!2266114))

(declare-fun bs!1912651 () Bool)

(declare-fun d!2266116 () Bool)

(assert (= bs!1912651 (and d!2266116 b!7294034)))

(declare-fun lambda!450089 () Int)

(assert (=> bs!1912651 (= lambda!450089 lambda!450066)))

(declare-fun bs!1912652 () Bool)

(assert (= bs!1912652 (and d!2266116 d!2266088)))

(assert (=> bs!1912652 (= lambda!450089 lambda!450084)))

(declare-fun bs!1912653 () Bool)

(assert (= bs!1912653 (and d!2266116 d!2266114)))

(assert (=> bs!1912653 (= lambda!450089 lambda!450088)))

(assert (=> d!2266116 (= (inv!90146 ct1!250) (forall!17679 (exprs!8294 ct1!250) lambda!450089))))

(declare-fun bs!1912654 () Bool)

(assert (= bs!1912654 d!2266116))

(declare-fun m!7965660 () Bool)

(assert (=> bs!1912654 m!7965660))

(assert (=> start!710868 d!2266116))

(declare-fun d!2266118 () Bool)

(assert (=> d!2266118 (= (isEmpty!40779 (exprs!8294 ct1!250)) (is-Nil!70901 (exprs!8294 ct1!250)))))

(assert (=> b!7294035 d!2266118))

(declare-fun bs!1912655 () Bool)

(declare-fun d!2266120 () Bool)

(assert (= bs!1912655 (and d!2266120 b!7294034)))

(declare-fun lambda!450094 () Int)

(assert (=> bs!1912655 (not (= lambda!450094 lambda!450066))))

(declare-fun bs!1912656 () Bool)

(assert (= bs!1912656 (and d!2266120 d!2266088)))

(assert (=> bs!1912656 (not (= lambda!450094 lambda!450084))))

(declare-fun bs!1912657 () Bool)

(assert (= bs!1912657 (and d!2266120 d!2266114)))

(assert (=> bs!1912657 (not (= lambda!450094 lambda!450088))))

(declare-fun bs!1912658 () Bool)

(assert (= bs!1912658 (and d!2266120 d!2266116)))

(assert (=> bs!1912658 (not (= lambda!450094 lambda!450089))))

(assert (=> d!2266120 (= (nullableContext!344 ct1!250) (forall!17679 (exprs!8294 ct1!250) lambda!450094))))

(declare-fun bs!1912659 () Bool)

(assert (= bs!1912659 d!2266120))

(declare-fun m!7965662 () Bool)

(assert (=> bs!1912659 m!7965662))

(assert (=> b!7294041 d!2266120))

(declare-fun b!7294118 () Bool)

(declare-fun e!4368854 () Bool)

(declare-fun tp!2062049 () Bool)

(declare-fun tp!2062050 () Bool)

(assert (=> b!7294118 (= e!4368854 (and tp!2062049 tp!2062050))))

(assert (=> b!7294036 (= tp!2062034 e!4368854)))

(assert (= (and b!7294036 (is-Cons!70901 (exprs!8294 ct2!346))) b!7294118))

(declare-fun b!7294123 () Bool)

(declare-fun e!4368857 () Bool)

(declare-fun tp!2062053 () Bool)

(assert (=> b!7294123 (= e!4368857 (and tp_is_empty!47173 tp!2062053))))

(assert (=> b!7294042 (= tp!2062033 e!4368857)))

(assert (= (and b!7294042 (is-Cons!70902 (t!385100 s!7854))) b!7294123))

(declare-fun b!7294124 () Bool)

(declare-fun e!4368858 () Bool)

(declare-fun tp!2062054 () Bool)

(declare-fun tp!2062055 () Bool)

(assert (=> b!7294124 (= e!4368858 (and tp!2062054 tp!2062055))))

(assert (=> b!7294037 (= tp!2062035 e!4368858)))

(assert (= (and b!7294037 (is-Cons!70901 (exprs!8294 ct1!250))) b!7294124))

(declare-fun b_lambda!281169 () Bool)

(assert (= b_lambda!281165 (or b!7294034 b_lambda!281169)))

(declare-fun bs!1912661 () Bool)

(declare-fun d!2266122 () Bool)

(assert (= bs!1912661 (and d!2266122 b!7294034)))

(assert (=> bs!1912661 (= (dynLambda!28994 lambda!450067 lt!2597328) (derivationStepZipperUp!2604 lt!2597328 (h!77350 s!7854)))))

(assert (=> bs!1912661 m!7965528))

(assert (=> d!2266100 d!2266122))

(declare-fun b_lambda!281171 () Bool)

(assert (= b_lambda!281167 (or b!7294034 b_lambda!281171)))

(declare-fun bs!1912662 () Bool)

(declare-fun d!2266124 () Bool)

(assert (= bs!1912662 (and d!2266124 b!7294034)))

(assert (=> bs!1912662 (= (dynLambda!28994 lambda!450067 ct1!250) (derivationStepZipperUp!2604 ct1!250 (h!77350 s!7854)))))

(assert (=> bs!1912662 m!7965524))

(assert (=> d!2266104 d!2266124))

(push 1)

(assert (not b_lambda!281169))

(assert (not b!7294123))

(assert tp_is_empty!47173)

(assert (not d!2266100))

(assert (not d!2266108))

(assert (not b!7294093))

(assert (not bm!664368))

(assert (not d!2266120))

(assert (not b!7294092))

(assert (not d!2266088))

(assert (not b_lambda!281171))

(assert (not b!7294086))

(assert (not b!7294105))

(assert (not d!2266116))

(assert (not b!7294085))

(assert (not d!2266102))

(assert (not b!7294112))

(assert (not d!2266098))

(assert (not d!2266114))

(assert (not bm!664367))

(assert (not b!7294124))

(assert (not d!2266104))

(assert (not b!7294113))

(assert (not bs!1912662))

(assert (not bs!1912661))

(assert (not d!2266096))

(assert (not b!7294106))

(assert (not d!2266110))

(assert (not b!7294118))

(assert (not d!2266092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7294198 () Bool)

(declare-fun e!4368901 () (Set Context!15588))

(declare-fun call!664393 () (Set Context!15588))

(declare-fun call!664395 () (Set Context!15588))

(assert (=> b!7294198 (= e!4368901 (set.union call!664393 call!664395))))

(declare-fun b!7294199 () Bool)

(declare-fun e!4368902 () (Set Context!15588))

(declare-fun call!664390 () (Set Context!15588))

(assert (=> b!7294199 (= e!4368902 call!664390)))

(declare-fun b!7294200 () Bool)

(declare-fun e!4368903 () Bool)

(assert (=> b!7294200 (= e!4368903 (nullable!8031 (regOne!38220 (h!77349 (exprs!8294 ct1!250)))))))

(declare-fun call!664391 () (Set Context!15588))

(declare-fun c!1355480 () Bool)

(declare-fun c!1355479 () Bool)

(declare-fun bm!664385 () Bool)

(declare-fun c!1355482 () Bool)

(declare-fun call!664394 () List!71025)

(assert (=> bm!664385 (= call!664391 (derivationStepZipperDown!2760 (ite c!1355479 (regTwo!38221 (h!77349 (exprs!8294 ct1!250))) (ite c!1355482 (regTwo!38220 (h!77349 (exprs!8294 ct1!250))) (ite c!1355480 (regOne!38220 (h!77349 (exprs!8294 ct1!250))) (reg!19183 (h!77349 (exprs!8294 ct1!250)))))) (ite (or c!1355479 c!1355482) (Context!15589 (t!385099 (exprs!8294 ct1!250))) (Context!15589 call!664394)) (h!77350 s!7854)))))

(declare-fun call!664392 () List!71025)

(declare-fun bm!664386 () Bool)

(declare-fun $colon$colon!2988 (List!71025 Regex!18854) List!71025)

(assert (=> bm!664386 (= call!664392 ($colon$colon!2988 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 ct1!250)))) (ite (or c!1355482 c!1355480) (regTwo!38220 (h!77349 (exprs!8294 ct1!250))) (h!77349 (exprs!8294 ct1!250)))))))

(declare-fun b!7294202 () Bool)

(declare-fun c!1355481 () Bool)

(assert (=> b!7294202 (= c!1355481 (is-Star!18854 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun e!4368900 () (Set Context!15588))

(assert (=> b!7294202 (= e!4368902 e!4368900)))

(declare-fun b!7294203 () Bool)

(declare-fun e!4368899 () (Set Context!15588))

(declare-fun e!4368904 () (Set Context!15588))

(assert (=> b!7294203 (= e!4368899 e!4368904)))

(assert (=> b!7294203 (= c!1355479 (is-Union!18854 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun bm!664387 () Bool)

(assert (=> bm!664387 (= call!664390 call!664395)))

(declare-fun bm!664388 () Bool)

(assert (=> bm!664388 (= call!664395 call!664391)))

(declare-fun b!7294204 () Bool)

(assert (=> b!7294204 (= c!1355482 e!4368903)))

(declare-fun res!2950468 () Bool)

(assert (=> b!7294204 (=> (not res!2950468) (not e!4368903))))

(assert (=> b!7294204 (= res!2950468 (is-Concat!27699 (h!77349 (exprs!8294 ct1!250))))))

(assert (=> b!7294204 (= e!4368904 e!4368901)))

(declare-fun b!7294205 () Bool)

(assert (=> b!7294205 (= e!4368900 (as set.empty (Set Context!15588)))))

(declare-fun b!7294206 () Bool)

(assert (=> b!7294206 (= e!4368901 e!4368902)))

(assert (=> b!7294206 (= c!1355480 (is-Concat!27699 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun bm!664389 () Bool)

(assert (=> bm!664389 (= call!664393 (derivationStepZipperDown!2760 (ite c!1355479 (regOne!38221 (h!77349 (exprs!8294 ct1!250))) (regOne!38220 (h!77349 (exprs!8294 ct1!250)))) (ite c!1355479 (Context!15589 (t!385099 (exprs!8294 ct1!250))) (Context!15589 call!664392)) (h!77350 s!7854)))))

(declare-fun b!7294207 () Bool)

(assert (=> b!7294207 (= e!4368900 call!664390)))

(declare-fun b!7294201 () Bool)

(assert (=> b!7294201 (= e!4368899 (set.insert (Context!15589 (t!385099 (exprs!8294 ct1!250))) (as set.empty (Set Context!15588))))))

(declare-fun d!2266160 () Bool)

(declare-fun c!1355483 () Bool)

(assert (=> d!2266160 (= c!1355483 (and (is-ElementMatch!18854 (h!77349 (exprs!8294 ct1!250))) (= (c!1355429 (h!77349 (exprs!8294 ct1!250))) (h!77350 s!7854))))))

(assert (=> d!2266160 (= (derivationStepZipperDown!2760 (h!77349 (exprs!8294 ct1!250)) (Context!15589 (t!385099 (exprs!8294 ct1!250))) (h!77350 s!7854)) e!4368899)))

(declare-fun b!7294208 () Bool)

(assert (=> b!7294208 (= e!4368904 (set.union call!664393 call!664391))))

(declare-fun bm!664390 () Bool)

(assert (=> bm!664390 (= call!664394 call!664392)))

(assert (= (and d!2266160 c!1355483) b!7294201))

(assert (= (and d!2266160 (not c!1355483)) b!7294203))

(assert (= (and b!7294203 c!1355479) b!7294208))

(assert (= (and b!7294203 (not c!1355479)) b!7294204))

(assert (= (and b!7294204 res!2950468) b!7294200))

(assert (= (and b!7294204 c!1355482) b!7294198))

(assert (= (and b!7294204 (not c!1355482)) b!7294206))

(assert (= (and b!7294206 c!1355480) b!7294199))

(assert (= (and b!7294206 (not c!1355480)) b!7294202))

(assert (= (and b!7294202 c!1355481) b!7294207))

(assert (= (and b!7294202 (not c!1355481)) b!7294205))

(assert (= (or b!7294199 b!7294207) bm!664390))

(assert (= (or b!7294199 b!7294207) bm!664387))

(assert (= (or b!7294198 bm!664390) bm!664386))

(assert (= (or b!7294198 bm!664387) bm!664388))

(assert (= (or b!7294208 b!7294198) bm!664389))

(assert (= (or b!7294208 bm!664388) bm!664385))

(declare-fun m!7965730 () Bool)

(assert (=> bm!664385 m!7965730))

(declare-fun m!7965732 () Bool)

(assert (=> bm!664389 m!7965732))

(declare-fun m!7965734 () Bool)

(assert (=> bm!664386 m!7965734))

(declare-fun m!7965736 () Bool)

(assert (=> b!7294201 m!7965736))

(declare-fun m!7965738 () Bool)

(assert (=> b!7294200 m!7965738))

(assert (=> bm!664367 d!2266160))

(declare-fun d!2266162 () Bool)

(declare-fun c!1355486 () Bool)

(assert (=> d!2266162 (= c!1355486 (is-Nil!70901 lt!2597369))))

(declare-fun e!4368907 () (Set Regex!18854))

(assert (=> d!2266162 (= (content!14807 lt!2597369) e!4368907)))

(declare-fun b!7294213 () Bool)

(assert (=> b!7294213 (= e!4368907 (as set.empty (Set Regex!18854)))))

(declare-fun b!7294214 () Bool)

(assert (=> b!7294214 (= e!4368907 (set.union (set.insert (h!77349 lt!2597369) (as set.empty (Set Regex!18854))) (content!14807 (t!385099 lt!2597369))))))

(assert (= (and d!2266162 c!1355486) b!7294213))

(assert (= (and d!2266162 (not c!1355486)) b!7294214))

(declare-fun m!7965740 () Bool)

(assert (=> b!7294214 m!7965740))

(declare-fun m!7965742 () Bool)

(assert (=> b!7294214 m!7965742))

(assert (=> d!2266108 d!2266162))

(declare-fun d!2266164 () Bool)

(declare-fun c!1355487 () Bool)

(assert (=> d!2266164 (= c!1355487 (is-Nil!70901 (exprs!8294 ct1!250)))))

(declare-fun e!4368908 () (Set Regex!18854))

(assert (=> d!2266164 (= (content!14807 (exprs!8294 ct1!250)) e!4368908)))

(declare-fun b!7294215 () Bool)

(assert (=> b!7294215 (= e!4368908 (as set.empty (Set Regex!18854)))))

(declare-fun b!7294216 () Bool)

(assert (=> b!7294216 (= e!4368908 (set.union (set.insert (h!77349 (exprs!8294 ct1!250)) (as set.empty (Set Regex!18854))) (content!14807 (t!385099 (exprs!8294 ct1!250)))))))

(assert (= (and d!2266164 c!1355487) b!7294215))

(assert (= (and d!2266164 (not c!1355487)) b!7294216))

(declare-fun m!7965744 () Bool)

(assert (=> b!7294216 m!7965744))

(declare-fun m!7965746 () Bool)

(assert (=> b!7294216 m!7965746))

(assert (=> d!2266108 d!2266164))

(declare-fun d!2266166 () Bool)

(declare-fun c!1355488 () Bool)

(assert (=> d!2266166 (= c!1355488 (is-Nil!70901 (exprs!8294 ct2!346)))))

(declare-fun e!4368909 () (Set Regex!18854))

(assert (=> d!2266166 (= (content!14807 (exprs!8294 ct2!346)) e!4368909)))

(declare-fun b!7294217 () Bool)

(assert (=> b!7294217 (= e!4368909 (as set.empty (Set Regex!18854)))))

(declare-fun b!7294218 () Bool)

(assert (=> b!7294218 (= e!4368909 (set.union (set.insert (h!77349 (exprs!8294 ct2!346)) (as set.empty (Set Regex!18854))) (content!14807 (t!385099 (exprs!8294 ct2!346)))))))

(assert (= (and d!2266166 c!1355488) b!7294217))

(assert (= (and d!2266166 (not c!1355488)) b!7294218))

(declare-fun m!7965748 () Bool)

(assert (=> b!7294218 m!7965748))

(declare-fun m!7965750 () Bool)

(assert (=> b!7294218 m!7965750))

(assert (=> d!2266108 d!2266166))

(declare-fun b!7294219 () Bool)

(declare-fun e!4368911 () (Set Context!15588))

(declare-fun call!664396 () (Set Context!15588))

(assert (=> b!7294219 (= e!4368911 call!664396)))

(declare-fun d!2266168 () Bool)

(declare-fun c!1355490 () Bool)

(declare-fun e!4368912 () Bool)

(assert (=> d!2266168 (= c!1355490 e!4368912)))

(declare-fun res!2950469 () Bool)

(assert (=> d!2266168 (=> (not res!2950469) (not e!4368912))))

(assert (=> d!2266168 (= res!2950469 (is-Cons!70901 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 ct1!250))))))))

(declare-fun e!4368910 () (Set Context!15588))

(assert (=> d!2266168 (= (derivationStepZipperUp!2604 (Context!15589 (t!385099 (exprs!8294 ct1!250))) (h!77350 s!7854)) e!4368910)))

(declare-fun b!7294220 () Bool)

(assert (=> b!7294220 (= e!4368912 (nullable!8031 (h!77349 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 ct1!250)))))))))

(declare-fun b!7294221 () Bool)

(assert (=> b!7294221 (= e!4368910 (set.union call!664396 (derivationStepZipperUp!2604 (Context!15589 (t!385099 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 ct1!250)))))) (h!77350 s!7854))))))

(declare-fun b!7294222 () Bool)

(assert (=> b!7294222 (= e!4368910 e!4368911)))

(declare-fun c!1355489 () Bool)

(assert (=> b!7294222 (= c!1355489 (is-Cons!70901 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 ct1!250))))))))

(declare-fun b!7294223 () Bool)

(assert (=> b!7294223 (= e!4368911 (as set.empty (Set Context!15588)))))

(declare-fun bm!664391 () Bool)

(assert (=> bm!664391 (= call!664396 (derivationStepZipperDown!2760 (h!77349 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 ct1!250))))) (Context!15589 (t!385099 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 ct1!250)))))) (h!77350 s!7854)))))

(assert (= (and d!2266168 res!2950469) b!7294220))

(assert (= (and d!2266168 c!1355490) b!7294221))

(assert (= (and d!2266168 (not c!1355490)) b!7294222))

(assert (= (and b!7294222 c!1355489) b!7294219))

(assert (= (and b!7294222 (not c!1355489)) b!7294223))

(assert (= (or b!7294221 b!7294219) bm!664391))

(declare-fun m!7965752 () Bool)

(assert (=> b!7294220 m!7965752))

(declare-fun m!7965754 () Bool)

(assert (=> b!7294221 m!7965754))

(declare-fun m!7965756 () Bool)

(assert (=> bm!664391 m!7965756))

(assert (=> b!7294086 d!2266168))

(declare-fun b!7294226 () Bool)

(declare-fun res!2950471 () Bool)

(declare-fun e!4368914 () Bool)

(assert (=> b!7294226 (=> (not res!2950471) (not e!4368914))))

(declare-fun lt!2597380 () List!71025)

(assert (=> b!7294226 (= res!2950471 (= (size!41853 lt!2597380) (+ (size!41853 (t!385099 (exprs!8294 ct1!250))) (size!41853 (exprs!8294 ct2!346)))))))

(declare-fun d!2266170 () Bool)

(assert (=> d!2266170 e!4368914))

(declare-fun res!2950470 () Bool)

(assert (=> d!2266170 (=> (not res!2950470) (not e!4368914))))

(assert (=> d!2266170 (= res!2950470 (= (content!14807 lt!2597380) (set.union (content!14807 (t!385099 (exprs!8294 ct1!250))) (content!14807 (exprs!8294 ct2!346)))))))

(declare-fun e!4368913 () List!71025)

(assert (=> d!2266170 (= lt!2597380 e!4368913)))

(declare-fun c!1355491 () Bool)

(assert (=> d!2266170 (= c!1355491 (is-Nil!70901 (t!385099 (exprs!8294 ct1!250))))))

(assert (=> d!2266170 (= (++!16744 (t!385099 (exprs!8294 ct1!250)) (exprs!8294 ct2!346)) lt!2597380)))

(declare-fun b!7294224 () Bool)

(assert (=> b!7294224 (= e!4368913 (exprs!8294 ct2!346))))

(declare-fun b!7294225 () Bool)

(assert (=> b!7294225 (= e!4368913 (Cons!70901 (h!77349 (t!385099 (exprs!8294 ct1!250))) (++!16744 (t!385099 (t!385099 (exprs!8294 ct1!250))) (exprs!8294 ct2!346))))))

(declare-fun b!7294227 () Bool)

(assert (=> b!7294227 (= e!4368914 (or (not (= (exprs!8294 ct2!346) Nil!70901)) (= lt!2597380 (t!385099 (exprs!8294 ct1!250)))))))

(assert (= (and d!2266170 c!1355491) b!7294224))

(assert (= (and d!2266170 (not c!1355491)) b!7294225))

(assert (= (and d!2266170 res!2950470) b!7294226))

(assert (= (and b!7294226 res!2950471) b!7294227))

(declare-fun m!7965758 () Bool)

(assert (=> b!7294226 m!7965758))

(declare-fun m!7965760 () Bool)

(assert (=> b!7294226 m!7965760))

(assert (=> b!7294226 m!7965636))

(declare-fun m!7965762 () Bool)

(assert (=> d!2266170 m!7965762))

(assert (=> d!2266170 m!7965746))

(assert (=> d!2266170 m!7965642))

(declare-fun m!7965764 () Bool)

(assert (=> b!7294225 m!7965764))

(assert (=> b!7294105 d!2266170))

(declare-fun d!2266172 () Bool)

(declare-fun lt!2597383 () Int)

(assert (=> d!2266172 (>= lt!2597383 0)))

(declare-fun e!4368917 () Int)

(assert (=> d!2266172 (= lt!2597383 e!4368917)))

(declare-fun c!1355494 () Bool)

(assert (=> d!2266172 (= c!1355494 (is-Nil!70901 lt!2597369))))

(assert (=> d!2266172 (= (size!41853 lt!2597369) lt!2597383)))

(declare-fun b!7294232 () Bool)

(assert (=> b!7294232 (= e!4368917 0)))

(declare-fun b!7294233 () Bool)

(assert (=> b!7294233 (= e!4368917 (+ 1 (size!41853 (t!385099 lt!2597369))))))

(assert (= (and d!2266172 c!1355494) b!7294232))

(assert (= (and d!2266172 (not c!1355494)) b!7294233))

(declare-fun m!7965766 () Bool)

(assert (=> b!7294233 m!7965766))

(assert (=> b!7294106 d!2266172))

(declare-fun d!2266174 () Bool)

(declare-fun lt!2597384 () Int)

(assert (=> d!2266174 (>= lt!2597384 0)))

(declare-fun e!4368918 () Int)

(assert (=> d!2266174 (= lt!2597384 e!4368918)))

(declare-fun c!1355495 () Bool)

(assert (=> d!2266174 (= c!1355495 (is-Nil!70901 (exprs!8294 ct1!250)))))

(assert (=> d!2266174 (= (size!41853 (exprs!8294 ct1!250)) lt!2597384)))

(declare-fun b!7294234 () Bool)

(assert (=> b!7294234 (= e!4368918 0)))

(declare-fun b!7294235 () Bool)

(assert (=> b!7294235 (= e!4368918 (+ 1 (size!41853 (t!385099 (exprs!8294 ct1!250)))))))

(assert (= (and d!2266174 c!1355495) b!7294234))

(assert (= (and d!2266174 (not c!1355495)) b!7294235))

(assert (=> b!7294235 m!7965760))

(assert (=> b!7294106 d!2266174))

(declare-fun d!2266176 () Bool)

(declare-fun lt!2597385 () Int)

(assert (=> d!2266176 (>= lt!2597385 0)))

(declare-fun e!4368919 () Int)

(assert (=> d!2266176 (= lt!2597385 e!4368919)))

(declare-fun c!1355496 () Bool)

(assert (=> d!2266176 (= c!1355496 (is-Nil!70901 (exprs!8294 ct2!346)))))

(assert (=> d!2266176 (= (size!41853 (exprs!8294 ct2!346)) lt!2597385)))

(declare-fun b!7294236 () Bool)

(assert (=> b!7294236 (= e!4368919 0)))

(declare-fun b!7294237 () Bool)

(assert (=> b!7294237 (= e!4368919 (+ 1 (size!41853 (t!385099 (exprs!8294 ct2!346)))))))

(assert (= (and d!2266176 c!1355496) b!7294236))

(assert (= (and d!2266176 (not c!1355496)) b!7294237))

(declare-fun m!7965768 () Bool)

(assert (=> b!7294237 m!7965768))

(assert (=> b!7294106 d!2266176))

(declare-fun d!2266178 () Bool)

(declare-fun nullableFct!3173 (Regex!18854) Bool)

(assert (=> d!2266178 (= (nullable!8031 (h!77349 (exprs!8294 ct1!250))) (nullableFct!3173 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun bs!1912685 () Bool)

(assert (= bs!1912685 d!2266178))

(declare-fun m!7965770 () Bool)

(assert (=> bs!1912685 m!7965770))

(assert (=> b!7294085 d!2266178))

(declare-fun d!2266180 () Bool)

(assert (=> d!2266180 (= (isEmpty!40781 s!7854) (is-Nil!70902 s!7854))))

(assert (=> d!2266110 d!2266180))

(declare-fun d!2266182 () Bool)

(assert (=> d!2266182 (= (flatMap!2949 lt!2597320 lambda!450087) (choose!56509 lt!2597320 lambda!450087))))

(declare-fun bs!1912686 () Bool)

(assert (= bs!1912686 d!2266182))

(declare-fun m!7965772 () Bool)

(assert (=> bs!1912686 m!7965772))

(assert (=> d!2266098 d!2266182))

(assert (=> d!2266104 d!2266096))

(declare-fun d!2266184 () Bool)

(assert (=> d!2266184 (= (flatMap!2949 lt!2597321 lambda!450067) (dynLambda!28994 lambda!450067 ct1!250))))

(assert (=> d!2266184 true))

(declare-fun _$13!4664 () Unit!164306)

(assert (=> d!2266184 (= (choose!56510 lt!2597321 ct1!250 lambda!450067) _$13!4664)))

(declare-fun b_lambda!281181 () Bool)

(assert (=> (not b_lambda!281181) (not d!2266184)))

(declare-fun bs!1912687 () Bool)

(assert (= bs!1912687 d!2266184))

(assert (=> bs!1912687 m!7965526))

(assert (=> bs!1912687 m!7965622))

(assert (=> d!2266104 d!2266184))

(declare-fun d!2266186 () Bool)

(declare-fun res!2950476 () Bool)

(declare-fun e!4368924 () Bool)

(assert (=> d!2266186 (=> res!2950476 e!4368924)))

(assert (=> d!2266186 (= res!2950476 (is-Nil!70901 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346))))))

(assert (=> d!2266186 (= (forall!17679 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346)) lambda!450066) e!4368924)))

(declare-fun b!7294242 () Bool)

(declare-fun e!4368925 () Bool)

(assert (=> b!7294242 (= e!4368924 e!4368925)))

(declare-fun res!2950477 () Bool)

(assert (=> b!7294242 (=> (not res!2950477) (not e!4368925))))

(declare-fun dynLambda!28996 (Int Regex!18854) Bool)

(assert (=> b!7294242 (= res!2950477 (dynLambda!28996 lambda!450066 (h!77349 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346)))))))

(declare-fun b!7294243 () Bool)

(assert (=> b!7294243 (= e!4368925 (forall!17679 (t!385099 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346))) lambda!450066))))

(assert (= (and d!2266186 (not res!2950476)) b!7294242))

(assert (= (and b!7294242 res!2950477) b!7294243))

(declare-fun b_lambda!281183 () Bool)

(assert (=> (not b_lambda!281183) (not b!7294242)))

(declare-fun m!7965774 () Bool)

(assert (=> b!7294242 m!7965774))

(declare-fun m!7965776 () Bool)

(assert (=> b!7294243 m!7965776))

(assert (=> d!2266102 d!2266186))

(assert (=> d!2266102 d!2266108))

(declare-fun d!2266188 () Bool)

(assert (=> d!2266188 (forall!17679 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346)) lambda!450066)))

(assert (=> d!2266188 true))

(declare-fun _$78!846 () Unit!164306)

(assert (=> d!2266188 (= (choose!56511 (exprs!8294 ct1!250) (exprs!8294 ct2!346) lambda!450066) _$78!846)))

(declare-fun bs!1912688 () Bool)

(assert (= bs!1912688 d!2266188))

(assert (=> bs!1912688 m!7965534))

(assert (=> bs!1912688 m!7965534))

(assert (=> bs!1912688 m!7965616))

(assert (=> d!2266102 d!2266188))

(declare-fun d!2266190 () Bool)

(declare-fun res!2950478 () Bool)

(declare-fun e!4368926 () Bool)

(assert (=> d!2266190 (=> res!2950478 e!4368926)))

(assert (=> d!2266190 (= res!2950478 (is-Nil!70901 (exprs!8294 ct1!250)))))

(assert (=> d!2266190 (= (forall!17679 (exprs!8294 ct1!250) lambda!450066) e!4368926)))

(declare-fun b!7294244 () Bool)

(declare-fun e!4368927 () Bool)

(assert (=> b!7294244 (= e!4368926 e!4368927)))

(declare-fun res!2950479 () Bool)

(assert (=> b!7294244 (=> (not res!2950479) (not e!4368927))))

(assert (=> b!7294244 (= res!2950479 (dynLambda!28996 lambda!450066 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun b!7294245 () Bool)

(assert (=> b!7294245 (= e!4368927 (forall!17679 (t!385099 (exprs!8294 ct1!250)) lambda!450066))))

(assert (= (and d!2266190 (not res!2950478)) b!7294244))

(assert (= (and b!7294244 res!2950479) b!7294245))

(declare-fun b_lambda!281185 () Bool)

(assert (=> (not b_lambda!281185) (not b!7294244)))

(declare-fun m!7965778 () Bool)

(assert (=> b!7294244 m!7965778))

(declare-fun m!7965780 () Bool)

(assert (=> b!7294245 m!7965780))

(assert (=> d!2266102 d!2266190))

(declare-fun d!2266192 () Bool)

(declare-fun c!1355497 () Bool)

(assert (=> d!2266192 (= c!1355497 (isEmpty!40781 (tail!14564 s!7854)))))

(declare-fun e!4368928 () Bool)

(assert (=> d!2266192 (= (matchZipper!3758 (derivationStepZipper!3587 (set.insert ct2!346 (as set.empty (Set Context!15588))) (head!15049 s!7854)) (tail!14564 s!7854)) e!4368928)))

(declare-fun b!7294246 () Bool)

(assert (=> b!7294246 (= e!4368928 (nullableZipper!3051 (derivationStepZipper!3587 (set.insert ct2!346 (as set.empty (Set Context!15588))) (head!15049 s!7854))))))

(declare-fun b!7294247 () Bool)

(assert (=> b!7294247 (= e!4368928 (matchZipper!3758 (derivationStepZipper!3587 (derivationStepZipper!3587 (set.insert ct2!346 (as set.empty (Set Context!15588))) (head!15049 s!7854)) (head!15049 (tail!14564 s!7854))) (tail!14564 (tail!14564 s!7854))))))

(assert (= (and d!2266192 c!1355497) b!7294246))

(assert (= (and d!2266192 (not c!1355497)) b!7294247))

(assert (=> d!2266192 m!7965654))

(declare-fun m!7965782 () Bool)

(assert (=> d!2266192 m!7965782))

(assert (=> b!7294246 m!7965652))

(declare-fun m!7965784 () Bool)

(assert (=> b!7294246 m!7965784))

(assert (=> b!7294247 m!7965654))

(declare-fun m!7965786 () Bool)

(assert (=> b!7294247 m!7965786))

(assert (=> b!7294247 m!7965652))

(assert (=> b!7294247 m!7965786))

(declare-fun m!7965788 () Bool)

(assert (=> b!7294247 m!7965788))

(assert (=> b!7294247 m!7965654))

(declare-fun m!7965790 () Bool)

(assert (=> b!7294247 m!7965790))

(assert (=> b!7294247 m!7965788))

(assert (=> b!7294247 m!7965790))

(declare-fun m!7965792 () Bool)

(assert (=> b!7294247 m!7965792))

(assert (=> b!7294113 d!2266192))

(declare-fun bs!1912689 () Bool)

(declare-fun d!2266194 () Bool)

(assert (= bs!1912689 (and d!2266194 b!7294034)))

(declare-fun lambda!450104 () Int)

(assert (=> bs!1912689 (= (= (head!15049 s!7854) (h!77350 s!7854)) (= lambda!450104 lambda!450067))))

(declare-fun bs!1912690 () Bool)

(assert (= bs!1912690 (and d!2266194 d!2266098)))

(assert (=> bs!1912690 (= (= (head!15049 s!7854) (h!77350 s!7854)) (= lambda!450104 lambda!450087))))

(assert (=> d!2266194 true))

(assert (=> d!2266194 (= (derivationStepZipper!3587 (set.insert ct2!346 (as set.empty (Set Context!15588))) (head!15049 s!7854)) (flatMap!2949 (set.insert ct2!346 (as set.empty (Set Context!15588))) lambda!450104))))

(declare-fun bs!1912691 () Bool)

(assert (= bs!1912691 d!2266194))

(assert (=> bs!1912691 m!7965548))

(declare-fun m!7965794 () Bool)

(assert (=> bs!1912691 m!7965794))

(assert (=> b!7294113 d!2266194))

(declare-fun d!2266196 () Bool)

(assert (=> d!2266196 (= (head!15049 s!7854) (h!77350 s!7854))))

(assert (=> b!7294113 d!2266196))

(declare-fun d!2266198 () Bool)

(assert (=> d!2266198 (= (tail!14564 s!7854) (t!385100 s!7854))))

(assert (=> b!7294113 d!2266198))

(assert (=> d!2266100 d!2266092))

(declare-fun d!2266200 () Bool)

(assert (=> d!2266200 (= (flatMap!2949 lt!2597320 lambda!450067) (dynLambda!28994 lambda!450067 lt!2597328))))

(assert (=> d!2266200 true))

(declare-fun _$13!4665 () Unit!164306)

(assert (=> d!2266200 (= (choose!56510 lt!2597320 lt!2597328 lambda!450067) _$13!4665)))

(declare-fun b_lambda!281187 () Bool)

(assert (=> (not b_lambda!281187) (not d!2266200)))

(declare-fun bs!1912692 () Bool)

(assert (= bs!1912692 d!2266200))

(assert (=> bs!1912692 m!7965536))

(assert (=> bs!1912692 m!7965612))

(assert (=> d!2266100 d!2266200))

(assert (=> bs!1912662 d!2266094))

(declare-fun d!2266202 () Bool)

(declare-fun res!2950480 () Bool)

(declare-fun e!4368929 () Bool)

(assert (=> d!2266202 (=> res!2950480 e!4368929)))

(assert (=> d!2266202 (= res!2950480 (is-Nil!70901 (exprs!8294 ct1!250)))))

(assert (=> d!2266202 (= (forall!17679 (exprs!8294 ct1!250) lambda!450089) e!4368929)))

(declare-fun b!7294248 () Bool)

(declare-fun e!4368930 () Bool)

(assert (=> b!7294248 (= e!4368929 e!4368930)))

(declare-fun res!2950481 () Bool)

(assert (=> b!7294248 (=> (not res!2950481) (not e!4368930))))

(assert (=> b!7294248 (= res!2950481 (dynLambda!28996 lambda!450089 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun b!7294249 () Bool)

(assert (=> b!7294249 (= e!4368930 (forall!17679 (t!385099 (exprs!8294 ct1!250)) lambda!450089))))

(assert (= (and d!2266202 (not res!2950480)) b!7294248))

(assert (= (and b!7294248 res!2950481) b!7294249))

(declare-fun b_lambda!281189 () Bool)

(assert (=> (not b_lambda!281189) (not b!7294248)))

(declare-fun m!7965796 () Bool)

(assert (=> b!7294248 m!7965796))

(declare-fun m!7965798 () Bool)

(assert (=> b!7294249 m!7965798))

(assert (=> d!2266116 d!2266202))

(declare-fun d!2266204 () Bool)

(declare-fun res!2950482 () Bool)

(declare-fun e!4368931 () Bool)

(assert (=> d!2266204 (=> res!2950482 e!4368931)))

(assert (=> d!2266204 (= res!2950482 (is-Nil!70901 (exprs!8294 (Context!15589 (tail!14562 (exprs!8294 ct1!250))))))))

(assert (=> d!2266204 (= (forall!17679 (exprs!8294 (Context!15589 (tail!14562 (exprs!8294 ct1!250)))) lambda!450084) e!4368931)))

(declare-fun b!7294250 () Bool)

(declare-fun e!4368932 () Bool)

(assert (=> b!7294250 (= e!4368931 e!4368932)))

(declare-fun res!2950483 () Bool)

(assert (=> b!7294250 (=> (not res!2950483) (not e!4368932))))

(assert (=> b!7294250 (= res!2950483 (dynLambda!28996 lambda!450084 (h!77349 (exprs!8294 (Context!15589 (tail!14562 (exprs!8294 ct1!250)))))))))

(declare-fun b!7294251 () Bool)

(assert (=> b!7294251 (= e!4368932 (forall!17679 (t!385099 (exprs!8294 (Context!15589 (tail!14562 (exprs!8294 ct1!250))))) lambda!450084))))

(assert (= (and d!2266204 (not res!2950482)) b!7294250))

(assert (= (and b!7294250 res!2950483) b!7294251))

(declare-fun b_lambda!281191 () Bool)

(assert (=> (not b_lambda!281191) (not b!7294250)))

(declare-fun m!7965800 () Bool)

(assert (=> b!7294250 m!7965800))

(declare-fun m!7965802 () Bool)

(assert (=> b!7294251 m!7965802))

(assert (=> d!2266088 d!2266204))

(declare-fun b!7294252 () Bool)

(declare-fun e!4368935 () (Set Context!15588))

(declare-fun call!664400 () (Set Context!15588))

(declare-fun call!664402 () (Set Context!15588))

(assert (=> b!7294252 (= e!4368935 (set.union call!664400 call!664402))))

(declare-fun b!7294253 () Bool)

(declare-fun e!4368936 () (Set Context!15588))

(declare-fun call!664397 () (Set Context!15588))

(assert (=> b!7294253 (= e!4368936 call!664397)))

(declare-fun b!7294254 () Bool)

(declare-fun e!4368937 () Bool)

(assert (=> b!7294254 (= e!4368937 (nullable!8031 (regOne!38220 (h!77349 (exprs!8294 lt!2597328)))))))

(declare-fun c!1355499 () Bool)

(declare-fun call!664401 () List!71025)

(declare-fun call!664398 () (Set Context!15588))

(declare-fun bm!664392 () Bool)

(declare-fun c!1355501 () Bool)

(declare-fun c!1355498 () Bool)

(assert (=> bm!664392 (= call!664398 (derivationStepZipperDown!2760 (ite c!1355498 (regTwo!38221 (h!77349 (exprs!8294 lt!2597328))) (ite c!1355501 (regTwo!38220 (h!77349 (exprs!8294 lt!2597328))) (ite c!1355499 (regOne!38220 (h!77349 (exprs!8294 lt!2597328))) (reg!19183 (h!77349 (exprs!8294 lt!2597328)))))) (ite (or c!1355498 c!1355501) (Context!15589 (t!385099 (exprs!8294 lt!2597328))) (Context!15589 call!664401)) (h!77350 s!7854)))))

(declare-fun bm!664393 () Bool)

(declare-fun call!664399 () List!71025)

(assert (=> bm!664393 (= call!664399 ($colon$colon!2988 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 lt!2597328)))) (ite (or c!1355501 c!1355499) (regTwo!38220 (h!77349 (exprs!8294 lt!2597328))) (h!77349 (exprs!8294 lt!2597328)))))))

(declare-fun b!7294256 () Bool)

(declare-fun c!1355500 () Bool)

(assert (=> b!7294256 (= c!1355500 (is-Star!18854 (h!77349 (exprs!8294 lt!2597328))))))

(declare-fun e!4368934 () (Set Context!15588))

(assert (=> b!7294256 (= e!4368936 e!4368934)))

(declare-fun b!7294257 () Bool)

(declare-fun e!4368933 () (Set Context!15588))

(declare-fun e!4368938 () (Set Context!15588))

(assert (=> b!7294257 (= e!4368933 e!4368938)))

(assert (=> b!7294257 (= c!1355498 (is-Union!18854 (h!77349 (exprs!8294 lt!2597328))))))

(declare-fun bm!664394 () Bool)

(assert (=> bm!664394 (= call!664397 call!664402)))

(declare-fun bm!664395 () Bool)

(assert (=> bm!664395 (= call!664402 call!664398)))

(declare-fun b!7294258 () Bool)

(assert (=> b!7294258 (= c!1355501 e!4368937)))

(declare-fun res!2950484 () Bool)

(assert (=> b!7294258 (=> (not res!2950484) (not e!4368937))))

(assert (=> b!7294258 (= res!2950484 (is-Concat!27699 (h!77349 (exprs!8294 lt!2597328))))))

(assert (=> b!7294258 (= e!4368938 e!4368935)))

(declare-fun b!7294259 () Bool)

(assert (=> b!7294259 (= e!4368934 (as set.empty (Set Context!15588)))))

(declare-fun b!7294260 () Bool)

(assert (=> b!7294260 (= e!4368935 e!4368936)))

(assert (=> b!7294260 (= c!1355499 (is-Concat!27699 (h!77349 (exprs!8294 lt!2597328))))))

(declare-fun bm!664396 () Bool)

(assert (=> bm!664396 (= call!664400 (derivationStepZipperDown!2760 (ite c!1355498 (regOne!38221 (h!77349 (exprs!8294 lt!2597328))) (regOne!38220 (h!77349 (exprs!8294 lt!2597328)))) (ite c!1355498 (Context!15589 (t!385099 (exprs!8294 lt!2597328))) (Context!15589 call!664399)) (h!77350 s!7854)))))

(declare-fun b!7294261 () Bool)

(assert (=> b!7294261 (= e!4368934 call!664397)))

(declare-fun b!7294255 () Bool)

(assert (=> b!7294255 (= e!4368933 (set.insert (Context!15589 (t!385099 (exprs!8294 lt!2597328))) (as set.empty (Set Context!15588))))))

(declare-fun d!2266206 () Bool)

(declare-fun c!1355502 () Bool)

(assert (=> d!2266206 (= c!1355502 (and (is-ElementMatch!18854 (h!77349 (exprs!8294 lt!2597328))) (= (c!1355429 (h!77349 (exprs!8294 lt!2597328))) (h!77350 s!7854))))))

(assert (=> d!2266206 (= (derivationStepZipperDown!2760 (h!77349 (exprs!8294 lt!2597328)) (Context!15589 (t!385099 (exprs!8294 lt!2597328))) (h!77350 s!7854)) e!4368933)))

(declare-fun b!7294262 () Bool)

(assert (=> b!7294262 (= e!4368938 (set.union call!664400 call!664398))))

(declare-fun bm!664397 () Bool)

(assert (=> bm!664397 (= call!664401 call!664399)))

(assert (= (and d!2266206 c!1355502) b!7294255))

(assert (= (and d!2266206 (not c!1355502)) b!7294257))

(assert (= (and b!7294257 c!1355498) b!7294262))

(assert (= (and b!7294257 (not c!1355498)) b!7294258))

(assert (= (and b!7294258 res!2950484) b!7294254))

(assert (= (and b!7294258 c!1355501) b!7294252))

(assert (= (and b!7294258 (not c!1355501)) b!7294260))

(assert (= (and b!7294260 c!1355499) b!7294253))

(assert (= (and b!7294260 (not c!1355499)) b!7294256))

(assert (= (and b!7294256 c!1355500) b!7294261))

(assert (= (and b!7294256 (not c!1355500)) b!7294259))

(assert (= (or b!7294253 b!7294261) bm!664397))

(assert (= (or b!7294253 b!7294261) bm!664394))

(assert (= (or b!7294252 bm!664397) bm!664393))

(assert (= (or b!7294252 bm!664394) bm!664395))

(assert (= (or b!7294262 b!7294252) bm!664396))

(assert (= (or b!7294262 bm!664395) bm!664392))

(declare-fun m!7965804 () Bool)

(assert (=> bm!664392 m!7965804))

(declare-fun m!7965806 () Bool)

(assert (=> bm!664396 m!7965806))

(declare-fun m!7965808 () Bool)

(assert (=> bm!664393 m!7965808))

(declare-fun m!7965810 () Bool)

(assert (=> b!7294255 m!7965810))

(declare-fun m!7965812 () Bool)

(assert (=> b!7294254 m!7965812))

(assert (=> bm!664368 d!2266206))

(declare-fun d!2266208 () Bool)

(assert (=> d!2266208 (= (nullable!8031 (h!77349 (exprs!8294 lt!2597328))) (nullableFct!3173 (h!77349 (exprs!8294 lt!2597328))))))

(declare-fun bs!1912693 () Bool)

(assert (= bs!1912693 d!2266208))

(declare-fun m!7965814 () Bool)

(assert (=> bs!1912693 m!7965814))

(assert (=> b!7294092 d!2266208))

(assert (=> bs!1912661 d!2266106))

(declare-fun b!7294263 () Bool)

(declare-fun e!4368940 () (Set Context!15588))

(declare-fun call!664403 () (Set Context!15588))

(assert (=> b!7294263 (= e!4368940 call!664403)))

(declare-fun d!2266210 () Bool)

(declare-fun c!1355504 () Bool)

(declare-fun e!4368941 () Bool)

(assert (=> d!2266210 (= c!1355504 e!4368941)))

(declare-fun res!2950485 () Bool)

(assert (=> d!2266210 (=> (not res!2950485) (not e!4368941))))

(assert (=> d!2266210 (= res!2950485 (is-Cons!70901 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 lt!2597328))))))))

(declare-fun e!4368939 () (Set Context!15588))

(assert (=> d!2266210 (= (derivationStepZipperUp!2604 (Context!15589 (t!385099 (exprs!8294 lt!2597328))) (h!77350 s!7854)) e!4368939)))

(declare-fun b!7294264 () Bool)

(assert (=> b!7294264 (= e!4368941 (nullable!8031 (h!77349 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 lt!2597328)))))))))

(declare-fun b!7294265 () Bool)

(assert (=> b!7294265 (= e!4368939 (set.union call!664403 (derivationStepZipperUp!2604 (Context!15589 (t!385099 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 lt!2597328)))))) (h!77350 s!7854))))))

(declare-fun b!7294266 () Bool)

(assert (=> b!7294266 (= e!4368939 e!4368940)))

(declare-fun c!1355503 () Bool)

(assert (=> b!7294266 (= c!1355503 (is-Cons!70901 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 lt!2597328))))))))

(declare-fun b!7294267 () Bool)

(assert (=> b!7294267 (= e!4368940 (as set.empty (Set Context!15588)))))

(declare-fun bm!664398 () Bool)

(assert (=> bm!664398 (= call!664403 (derivationStepZipperDown!2760 (h!77349 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 lt!2597328))))) (Context!15589 (t!385099 (exprs!8294 (Context!15589 (t!385099 (exprs!8294 lt!2597328)))))) (h!77350 s!7854)))))

(assert (= (and d!2266210 res!2950485) b!7294264))

(assert (= (and d!2266210 c!1355504) b!7294265))

(assert (= (and d!2266210 (not c!1355504)) b!7294266))

(assert (= (and b!7294266 c!1355503) b!7294263))

(assert (= (and b!7294266 (not c!1355503)) b!7294267))

(assert (= (or b!7294265 b!7294263) bm!664398))

(declare-fun m!7965816 () Bool)

(assert (=> b!7294264 m!7965816))

(declare-fun m!7965818 () Bool)

(assert (=> b!7294265 m!7965818))

(declare-fun m!7965820 () Bool)

(assert (=> bm!664398 m!7965820))

(assert (=> b!7294093 d!2266210))

(declare-fun d!2266212 () Bool)

(assert (=> d!2266212 true))

(declare-fun setRes!53686 () Bool)

(assert (=> d!2266212 setRes!53686))

(declare-fun condSetEmpty!53686 () Bool)

(declare-fun res!2950488 () (Set Context!15588))

(assert (=> d!2266212 (= condSetEmpty!53686 (= res!2950488 (as set.empty (Set Context!15588))))))

(assert (=> d!2266212 (= (choose!56509 lt!2597320 lambda!450067) res!2950488)))

(declare-fun setIsEmpty!53686 () Bool)

(assert (=> setIsEmpty!53686 setRes!53686))

(declare-fun setNonEmpty!53686 () Bool)

(declare-fun tp!2062071 () Bool)

(declare-fun e!4368944 () Bool)

(declare-fun setElem!53686 () Context!15588)

(assert (=> setNonEmpty!53686 (= setRes!53686 (and tp!2062071 (inv!90146 setElem!53686) e!4368944))))

(declare-fun setRest!53686 () (Set Context!15588))

(assert (=> setNonEmpty!53686 (= res!2950488 (set.union (set.insert setElem!53686 (as set.empty (Set Context!15588))) setRest!53686))))

(declare-fun b!7294270 () Bool)

(declare-fun tp!2062072 () Bool)

(assert (=> b!7294270 (= e!4368944 tp!2062072)))

(assert (= (and d!2266212 condSetEmpty!53686) setIsEmpty!53686))

(assert (= (and d!2266212 (not condSetEmpty!53686)) setNonEmpty!53686))

(assert (= setNonEmpty!53686 b!7294270))

(declare-fun m!7965822 () Bool)

(assert (=> setNonEmpty!53686 m!7965822))

(assert (=> d!2266092 d!2266212))

(declare-fun d!2266214 () Bool)

(declare-fun lambda!450107 () Int)

(declare-fun exists!4499 ((Set Context!15588) Int) Bool)

(assert (=> d!2266214 (= (nullableZipper!3051 (set.insert ct2!346 (as set.empty (Set Context!15588)))) (exists!4499 (set.insert ct2!346 (as set.empty (Set Context!15588))) lambda!450107))))

(declare-fun bs!1912694 () Bool)

(assert (= bs!1912694 d!2266214))

(assert (=> bs!1912694 m!7965548))

(declare-fun m!7965824 () Bool)

(assert (=> bs!1912694 m!7965824))

(assert (=> b!7294112 d!2266214))

(declare-fun d!2266216 () Bool)

(assert (=> d!2266216 true))

(declare-fun setRes!53687 () Bool)

(assert (=> d!2266216 setRes!53687))

(declare-fun condSetEmpty!53687 () Bool)

(declare-fun res!2950489 () (Set Context!15588))

(assert (=> d!2266216 (= condSetEmpty!53687 (= res!2950489 (as set.empty (Set Context!15588))))))

(assert (=> d!2266216 (= (choose!56509 lt!2597321 lambda!450067) res!2950489)))

(declare-fun setIsEmpty!53687 () Bool)

(assert (=> setIsEmpty!53687 setRes!53687))

(declare-fun e!4368945 () Bool)

(declare-fun setElem!53687 () Context!15588)

(declare-fun tp!2062073 () Bool)

(declare-fun setNonEmpty!53687 () Bool)

(assert (=> setNonEmpty!53687 (= setRes!53687 (and tp!2062073 (inv!90146 setElem!53687) e!4368945))))

(declare-fun setRest!53687 () (Set Context!15588))

(assert (=> setNonEmpty!53687 (= res!2950489 (set.union (set.insert setElem!53687 (as set.empty (Set Context!15588))) setRest!53687))))

(declare-fun b!7294271 () Bool)

(declare-fun tp!2062074 () Bool)

(assert (=> b!7294271 (= e!4368945 tp!2062074)))

(assert (= (and d!2266216 condSetEmpty!53687) setIsEmpty!53687))

(assert (= (and d!2266216 (not condSetEmpty!53687)) setNonEmpty!53687))

(assert (= setNonEmpty!53687 b!7294271))

(declare-fun m!7965826 () Bool)

(assert (=> setNonEmpty!53687 m!7965826))

(assert (=> d!2266096 d!2266216))

(declare-fun d!2266218 () Bool)

(declare-fun res!2950490 () Bool)

(declare-fun e!4368946 () Bool)

(assert (=> d!2266218 (=> res!2950490 e!4368946)))

(assert (=> d!2266218 (= res!2950490 (is-Nil!70901 (exprs!8294 ct1!250)))))

(assert (=> d!2266218 (= (forall!17679 (exprs!8294 ct1!250) lambda!450094) e!4368946)))

(declare-fun b!7294272 () Bool)

(declare-fun e!4368947 () Bool)

(assert (=> b!7294272 (= e!4368946 e!4368947)))

(declare-fun res!2950491 () Bool)

(assert (=> b!7294272 (=> (not res!2950491) (not e!4368947))))

(assert (=> b!7294272 (= res!2950491 (dynLambda!28996 lambda!450094 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun b!7294273 () Bool)

(assert (=> b!7294273 (= e!4368947 (forall!17679 (t!385099 (exprs!8294 ct1!250)) lambda!450094))))

(assert (= (and d!2266218 (not res!2950490)) b!7294272))

(assert (= (and b!7294272 res!2950491) b!7294273))

(declare-fun b_lambda!281193 () Bool)

(assert (=> (not b_lambda!281193) (not b!7294272)))

(declare-fun m!7965828 () Bool)

(assert (=> b!7294272 m!7965828))

(declare-fun m!7965830 () Bool)

(assert (=> b!7294273 m!7965830))

(assert (=> d!2266120 d!2266218))

(declare-fun d!2266220 () Bool)

(declare-fun res!2950492 () Bool)

(declare-fun e!4368948 () Bool)

(assert (=> d!2266220 (=> res!2950492 e!4368948)))

(assert (=> d!2266220 (= res!2950492 (is-Nil!70901 (exprs!8294 ct2!346)))))

(assert (=> d!2266220 (= (forall!17679 (exprs!8294 ct2!346) lambda!450088) e!4368948)))

(declare-fun b!7294274 () Bool)

(declare-fun e!4368949 () Bool)

(assert (=> b!7294274 (= e!4368948 e!4368949)))

(declare-fun res!2950493 () Bool)

(assert (=> b!7294274 (=> (not res!2950493) (not e!4368949))))

(assert (=> b!7294274 (= res!2950493 (dynLambda!28996 lambda!450088 (h!77349 (exprs!8294 ct2!346))))))

(declare-fun b!7294275 () Bool)

(assert (=> b!7294275 (= e!4368949 (forall!17679 (t!385099 (exprs!8294 ct2!346)) lambda!450088))))

(assert (= (and d!2266220 (not res!2950492)) b!7294274))

(assert (= (and b!7294274 res!2950493) b!7294275))

(declare-fun b_lambda!281195 () Bool)

(assert (=> (not b_lambda!281195) (not b!7294274)))

(declare-fun m!7965832 () Bool)

(assert (=> b!7294274 m!7965832))

(declare-fun m!7965834 () Bool)

(assert (=> b!7294275 m!7965834))

(assert (=> d!2266114 d!2266220))

(declare-fun b!7294288 () Bool)

(declare-fun e!4368952 () Bool)

(declare-fun tp!2062089 () Bool)

(assert (=> b!7294288 (= e!4368952 tp!2062089)))

(assert (=> b!7294124 (= tp!2062054 e!4368952)))

(declare-fun b!7294287 () Bool)

(declare-fun tp!2062087 () Bool)

(declare-fun tp!2062085 () Bool)

(assert (=> b!7294287 (= e!4368952 (and tp!2062087 tp!2062085))))

(declare-fun b!7294286 () Bool)

(assert (=> b!7294286 (= e!4368952 tp_is_empty!47173)))

(declare-fun b!7294289 () Bool)

(declare-fun tp!2062088 () Bool)

(declare-fun tp!2062086 () Bool)

(assert (=> b!7294289 (= e!4368952 (and tp!2062088 tp!2062086))))

(assert (= (and b!7294124 (is-ElementMatch!18854 (h!77349 (exprs!8294 ct1!250)))) b!7294286))

(assert (= (and b!7294124 (is-Concat!27699 (h!77349 (exprs!8294 ct1!250)))) b!7294287))

(assert (= (and b!7294124 (is-Star!18854 (h!77349 (exprs!8294 ct1!250)))) b!7294288))

(assert (= (and b!7294124 (is-Union!18854 (h!77349 (exprs!8294 ct1!250)))) b!7294289))

(declare-fun b!7294290 () Bool)

(declare-fun e!4368953 () Bool)

(declare-fun tp!2062090 () Bool)

(declare-fun tp!2062091 () Bool)

(assert (=> b!7294290 (= e!4368953 (and tp!2062090 tp!2062091))))

(assert (=> b!7294124 (= tp!2062055 e!4368953)))

(assert (= (and b!7294124 (is-Cons!70901 (t!385099 (exprs!8294 ct1!250)))) b!7294290))

(declare-fun b!7294291 () Bool)

(declare-fun e!4368954 () Bool)

(declare-fun tp!2062092 () Bool)

(assert (=> b!7294291 (= e!4368954 (and tp_is_empty!47173 tp!2062092))))

(assert (=> b!7294123 (= tp!2062053 e!4368954)))

(assert (= (and b!7294123 (is-Cons!70902 (t!385100 (t!385100 s!7854)))) b!7294291))

(declare-fun b!7294294 () Bool)

(declare-fun e!4368955 () Bool)

(declare-fun tp!2062097 () Bool)

(assert (=> b!7294294 (= e!4368955 tp!2062097)))

(assert (=> b!7294118 (= tp!2062049 e!4368955)))

(declare-fun b!7294293 () Bool)

(declare-fun tp!2062095 () Bool)

(declare-fun tp!2062093 () Bool)

(assert (=> b!7294293 (= e!4368955 (and tp!2062095 tp!2062093))))

(declare-fun b!7294292 () Bool)

(assert (=> b!7294292 (= e!4368955 tp_is_empty!47173)))

(declare-fun b!7294295 () Bool)

(declare-fun tp!2062096 () Bool)

(declare-fun tp!2062094 () Bool)

(assert (=> b!7294295 (= e!4368955 (and tp!2062096 tp!2062094))))

(assert (= (and b!7294118 (is-ElementMatch!18854 (h!77349 (exprs!8294 ct2!346)))) b!7294292))

(assert (= (and b!7294118 (is-Concat!27699 (h!77349 (exprs!8294 ct2!346)))) b!7294293))

(assert (= (and b!7294118 (is-Star!18854 (h!77349 (exprs!8294 ct2!346)))) b!7294294))

(assert (= (and b!7294118 (is-Union!18854 (h!77349 (exprs!8294 ct2!346)))) b!7294295))

(declare-fun b!7294296 () Bool)

(declare-fun e!4368956 () Bool)

(declare-fun tp!2062098 () Bool)

(declare-fun tp!2062099 () Bool)

(assert (=> b!7294296 (= e!4368956 (and tp!2062098 tp!2062099))))

(assert (=> b!7294118 (= tp!2062050 e!4368956)))

(assert (= (and b!7294118 (is-Cons!70901 (t!385099 (exprs!8294 ct2!346)))) b!7294296))

(declare-fun b_lambda!281197 () Bool)

(assert (= b_lambda!281191 (or d!2266088 b_lambda!281197)))

(declare-fun bs!1912695 () Bool)

(declare-fun d!2266222 () Bool)

(assert (= bs!1912695 (and d!2266222 d!2266088)))

(declare-fun validRegex!9604 (Regex!18854) Bool)

(assert (=> bs!1912695 (= (dynLambda!28996 lambda!450084 (h!77349 (exprs!8294 (Context!15589 (tail!14562 (exprs!8294 ct1!250)))))) (validRegex!9604 (h!77349 (exprs!8294 (Context!15589 (tail!14562 (exprs!8294 ct1!250)))))))))

(declare-fun m!7965836 () Bool)

(assert (=> bs!1912695 m!7965836))

(assert (=> b!7294250 d!2266222))

(declare-fun b_lambda!281199 () Bool)

(assert (= b_lambda!281189 (or d!2266116 b_lambda!281199)))

(declare-fun bs!1912696 () Bool)

(declare-fun d!2266224 () Bool)

(assert (= bs!1912696 (and d!2266224 d!2266116)))

(assert (=> bs!1912696 (= (dynLambda!28996 lambda!450089 (h!77349 (exprs!8294 ct1!250))) (validRegex!9604 (h!77349 (exprs!8294 ct1!250))))))

(declare-fun m!7965838 () Bool)

(assert (=> bs!1912696 m!7965838))

(assert (=> b!7294248 d!2266224))

(declare-fun b_lambda!281201 () Bool)

(assert (= b_lambda!281195 (or d!2266114 b_lambda!281201)))

(declare-fun bs!1912697 () Bool)

(declare-fun d!2266226 () Bool)

(assert (= bs!1912697 (and d!2266226 d!2266114)))

(assert (=> bs!1912697 (= (dynLambda!28996 lambda!450088 (h!77349 (exprs!8294 ct2!346))) (validRegex!9604 (h!77349 (exprs!8294 ct2!346))))))

(declare-fun m!7965840 () Bool)

(assert (=> bs!1912697 m!7965840))

(assert (=> b!7294274 d!2266226))

(declare-fun b_lambda!281203 () Bool)

(assert (= b_lambda!281183 (or b!7294034 b_lambda!281203)))

(declare-fun bs!1912698 () Bool)

(declare-fun d!2266228 () Bool)

(assert (= bs!1912698 (and d!2266228 b!7294034)))

(assert (=> bs!1912698 (= (dynLambda!28996 lambda!450066 (h!77349 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346)))) (validRegex!9604 (h!77349 (++!16744 (exprs!8294 ct1!250) (exprs!8294 ct2!346)))))))

(declare-fun m!7965842 () Bool)

(assert (=> bs!1912698 m!7965842))

(assert (=> b!7294242 d!2266228))

(declare-fun b_lambda!281205 () Bool)

(assert (= b_lambda!281185 (or b!7294034 b_lambda!281205)))

(declare-fun bs!1912699 () Bool)

(declare-fun d!2266230 () Bool)

(assert (= bs!1912699 (and d!2266230 b!7294034)))

(assert (=> bs!1912699 (= (dynLambda!28996 lambda!450066 (h!77349 (exprs!8294 ct1!250))) (validRegex!9604 (h!77349 (exprs!8294 ct1!250))))))

(assert (=> bs!1912699 m!7965838))

(assert (=> b!7294244 d!2266230))

(declare-fun b_lambda!281207 () Bool)

(assert (= b_lambda!281181 (or b!7294034 b_lambda!281207)))

(assert (=> d!2266184 d!2266124))

(declare-fun b_lambda!281209 () Bool)

(assert (= b_lambda!281193 (or d!2266120 b_lambda!281209)))

(declare-fun bs!1912700 () Bool)

(declare-fun d!2266232 () Bool)

(assert (= bs!1912700 (and d!2266232 d!2266120)))

(assert (=> bs!1912700 (= (dynLambda!28996 lambda!450094 (h!77349 (exprs!8294 ct1!250))) (nullable!8031 (h!77349 (exprs!8294 ct1!250))))))

(assert (=> bs!1912700 m!7965602))

(assert (=> b!7294272 d!2266232))

(declare-fun b_lambda!281211 () Bool)

(assert (= b_lambda!281187 (or b!7294034 b_lambda!281211)))

(assert (=> d!2266200 d!2266122))

(push 1)

(assert (not b!7294265))

(assert (not bs!1912698))

(assert (not b_lambda!281211))

(assert (not b!7294247))

(assert (not b!7294218))

(assert (not b!7294271))

(assert (not b_lambda!281197))

(assert (not bs!1912695))

(assert (not d!2266170))

(assert (not bs!1912697))

(assert (not bm!664385))

(assert (not b_lambda!281169))

(assert (not b_lambda!281209))

(assert (not b!7294214))

(assert (not b!7294288))

(assert (not bs!1912696))

(assert (not b!7294275))

(assert (not b_lambda!281171))

(assert (not d!2266178))

(assert (not bm!664393))

(assert (not b!7294246))

(assert (not b!7294233))

(assert (not bs!1912699))

(assert (not b!7294296))

(assert (not b_lambda!281199))

(assert (not bs!1912700))

(assert (not b!7294249))

(assert (not b!7294245))

(assert (not d!2266194))

(assert (not b!7294237))

(assert tp_is_empty!47173)

(assert (not b!7294251))

(assert (not setNonEmpty!53686))

(assert (not bm!664386))

(assert (not b!7294200))

(assert (not d!2266182))

(assert (not b_lambda!281207))

(assert (not b!7294289))

(assert (not setNonEmpty!53687))

(assert (not d!2266200))

(assert (not b!7294254))

(assert (not b!7294291))

(assert (not d!2266214))

(assert (not b!7294226))

(assert (not d!2266192))

(assert (not b!7294295))

(assert (not bm!664396))

(assert (not b!7294221))

(assert (not b_lambda!281203))

(assert (not bm!664392))

(assert (not b_lambda!281205))

(assert (not b!7294270))

(assert (not d!2266208))

(assert (not d!2266184))

(assert (not b!7294287))

(assert (not b!7294216))

(assert (not b!7294293))

(assert (not bm!664391))

(assert (not b!7294264))

(assert (not b!7294220))

(assert (not b!7294225))

(assert (not bm!664389))

(assert (not b!7294235))

(assert (not b!7294290))

(assert (not bm!664398))

(assert (not b_lambda!281201))

(assert (not b!7294273))

(assert (not b!7294294))

(assert (not b!7294243))

(assert (not d!2266188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

