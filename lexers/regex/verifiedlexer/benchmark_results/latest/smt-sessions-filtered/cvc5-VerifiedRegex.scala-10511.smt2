; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542090 () Bool)

(assert start!542090)

(declare-fun bs!1195319 () Bool)

(declare-fun b!5129325 () Bool)

(declare-fun b!5129327 () Bool)

(assert (= bs!1195319 (and b!5129325 b!5129327)))

(declare-fun lambda!253071 () Int)

(declare-fun lambda!253070 () Int)

(assert (=> bs!1195319 (not (= lambda!253071 lambda!253070))))

(declare-fun bs!1195320 () Bool)

(declare-fun b!5129331 () Bool)

(assert (= bs!1195320 (and b!5129331 b!5129327)))

(declare-fun lambda!253072 () Int)

(assert (=> bs!1195320 (not (= lambda!253072 lambda!253070))))

(declare-fun bs!1195321 () Bool)

(assert (= bs!1195321 (and b!5129331 b!5129325)))

(assert (=> bs!1195321 (not (= lambda!253072 lambda!253071))))

(declare-fun bs!1195322 () Bool)

(declare-fun b!5129328 () Bool)

(declare-fun b!5129334 () Bool)

(assert (= bs!1195322 (and b!5129328 b!5129334)))

(declare-fun lambda!253073 () Int)

(declare-fun lambda!253069 () Int)

(assert (=> bs!1195322 (not (= lambda!253073 lambda!253069))))

(declare-fun b!5129324 () Bool)

(declare-fun e!3198998 () Bool)

(assert (=> b!5129324 (= e!3198998 false)))

(declare-fun res!2184159 () Bool)

(declare-fun e!3198999 () Bool)

(assert (=> b!5129325 (=> res!2184159 e!3198999)))

(declare-datatypes ((C!28890 0))(
  ( (C!28891 (val!24097 Int)) )
))
(declare-datatypes ((Regex!14312 0))(
  ( (ElementMatch!14312 (c!882143 C!28890)) (Concat!23157 (regOne!29136 Regex!14312) (regTwo!29136 Regex!14312)) (EmptyExpr!14312) (Star!14312 (reg!14641 Regex!14312)) (EmptyLang!14312) (Union!14312 (regOne!29137 Regex!14312) (regTwo!29137 Regex!14312)) )
))
(declare-datatypes ((List!59552 0))(
  ( (Nil!59428) (Cons!59428 (h!65876 Regex!14312) (t!372579 List!59552)) )
))
(declare-datatypes ((Context!7392 0))(
  ( (Context!7393 (exprs!4196 List!59552)) )
))
(declare-fun lt!2115695 () Context!7392)

(declare-fun forall!13709 (List!59552 Int) Bool)

(assert (=> b!5129325 (= res!2184159 (not (forall!13709 (exprs!4196 lt!2115695) lambda!253071)))))

(declare-fun res!2184156 () Bool)

(declare-fun e!3198996 () Bool)

(assert (=> start!542090 (=> (not res!2184156) (not e!3198996))))

(declare-fun z!1113 () (Set Context!7392))

(declare-fun nullableZipper!1097 ((Set Context!7392)) Bool)

(assert (=> start!542090 (= res!2184156 (nullableZipper!1097 z!1113))))

(assert (=> start!542090 e!3198996))

(declare-fun condSetEmpty!30953 () Bool)

(assert (=> start!542090 (= condSetEmpty!30953 (= z!1113 (as set.empty (Set Context!7392))))))

(declare-fun setRes!30953 () Bool)

(assert (=> start!542090 setRes!30953))

(declare-fun setIsEmpty!30953 () Bool)

(assert (=> setIsEmpty!30953 setRes!30953))

(declare-fun b!5129326 () Bool)

(declare-datatypes ((Unit!150646 0))(
  ( (Unit!150647) )
))
(declare-fun e!3199002 () Unit!150646)

(declare-fun Unit!150648 () Unit!150646)

(assert (=> b!5129326 (= e!3199002 Unit!150648)))

(declare-fun e!3199001 () Bool)

(declare-fun setNonEmpty!30953 () Bool)

(declare-fun setElem!30953 () Context!7392)

(declare-fun tp!1431067 () Bool)

(declare-fun inv!78962 (Context!7392) Bool)

(assert (=> setNonEmpty!30953 (= setRes!30953 (and tp!1431067 (inv!78962 setElem!30953) e!3199001))))

(declare-fun setRest!30953 () (Set Context!7392))

(assert (=> setNonEmpty!30953 (= z!1113 (set.union (set.insert setElem!30953 (as set.empty (Set Context!7392))) setRest!30953))))

(declare-fun e!3199000 () Bool)

(assert (=> b!5129327 (= e!3199000 (not e!3198999))))

(declare-fun res!2184154 () Bool)

(assert (=> b!5129327 (=> res!2184154 e!3198999)))

(assert (=> b!5129327 (= res!2184154 (not (set.member lt!2115695 z!1113)))))

(assert (=> b!5129327 (forall!13709 (exprs!4196 lt!2115695) lambda!253070)))

(declare-fun lt!2115697 () Unit!150646)

(declare-fun lemmaContextForallValidExprs!27 (Context!7392 List!59552) Unit!150646)

(assert (=> b!5129327 (= lt!2115697 (lemmaContextForallValidExprs!27 lt!2115695 (exprs!4196 lt!2115695)))))

(declare-fun res!2184155 () Bool)

(declare-fun e!3198997 () Bool)

(assert (=> b!5129328 (=> res!2184155 e!3198997)))

(declare-fun forall!13710 ((Set Context!7392) Int) Bool)

(assert (=> b!5129328 (= res!2184155 (not (forall!13710 z!1113 lambda!253073)))))

(declare-fun b!5129329 () Bool)

(declare-fun tp!1431066 () Bool)

(assert (=> b!5129329 (= e!3199001 tp!1431066)))

(declare-fun b!5129330 () Bool)

(declare-datatypes ((List!59553 0))(
  ( (Nil!59429) (Cons!59429 (h!65877 Context!7392) (t!372580 List!59553)) )
))
(declare-fun forall!13711 (List!59553 Int) Bool)

(declare-fun toList!8306 ((Set Context!7392)) List!59553)

(assert (=> b!5129330 (= e!3198997 (forall!13711 (toList!8306 z!1113) lambda!253073))))

(declare-fun Unit!150649 () Unit!150646)

(assert (=> b!5129331 (= e!3199002 Unit!150649)))

(declare-fun lt!2115692 () Regex!14312)

(declare-fun getWitness!748 (List!59552 Int) Regex!14312)

(assert (=> b!5129331 (= lt!2115692 (getWitness!748 (exprs!4196 lt!2115695) lambda!253072))))

(declare-fun lt!2115691 () Unit!150646)

(declare-fun forallContained!4600 (List!59552 Int Regex!14312) Unit!150646)

(assert (=> b!5129331 (= lt!2115691 (forallContained!4600 (exprs!4196 lt!2115695) lambda!253071 lt!2115692))))

(declare-fun lt!2115698 () Unit!150646)

(assert (=> b!5129331 (= lt!2115698 (forallContained!4600 (exprs!4196 lt!2115695) lambda!253070 lt!2115692))))

(declare-fun lt!2115696 () Unit!150646)

(declare-fun lemmaNullableThenNotLostCause!21 (Regex!14312) Unit!150646)

(assert (=> b!5129331 (= lt!2115696 (lemmaNullableThenNotLostCause!21 lt!2115692))))

(declare-fun res!2184158 () Bool)

(declare-fun lostCause!1255 (Regex!14312) Bool)

(assert (=> b!5129331 (= res!2184158 (not (lostCause!1255 lt!2115692)))))

(assert (=> b!5129331 (=> (not res!2184158) (not e!3198998))))

(assert (=> b!5129331 e!3198998))

(declare-fun b!5129332 () Bool)

(declare-fun res!2184153 () Bool)

(assert (=> b!5129332 (=> res!2184153 e!3198997)))

(declare-fun lostCauseZipper!1160 ((Set Context!7392)) Bool)

(assert (=> b!5129332 (= res!2184153 (not (lostCauseZipper!1160 z!1113)))))

(declare-fun b!5129333 () Bool)

(assert (=> b!5129333 (= e!3198996 e!3199000)))

(declare-fun res!2184160 () Bool)

(assert (=> b!5129333 (=> (not res!2184160) (not e!3199000))))

(declare-fun nullableContext!31 (Context!7392) Bool)

(assert (=> b!5129333 (= res!2184160 (nullableContext!31 lt!2115695))))

(declare-fun getWitness!749 ((Set Context!7392) Int) Context!7392)

(assert (=> b!5129333 (= lt!2115695 (getWitness!749 z!1113 lambda!253069))))

(declare-fun res!2184161 () Bool)

(assert (=> b!5129334 (=> (not res!2184161) (not e!3198996))))

(declare-fun exists!1592 ((Set Context!7392) Int) Bool)

(assert (=> b!5129334 (= res!2184161 (exists!1592 z!1113 lambda!253069))))

(declare-fun b!5129335 () Bool)

(assert (=> b!5129335 (= e!3198999 e!3198997)))

(declare-fun res!2184157 () Bool)

(assert (=> b!5129335 (=> res!2184157 e!3198997)))

(declare-fun lt!2115693 () Bool)

(assert (=> b!5129335 (= res!2184157 lt!2115693)))

(declare-fun lt!2115694 () Unit!150646)

(assert (=> b!5129335 (= lt!2115694 e!3199002)))

(declare-fun c!882142 () Bool)

(assert (=> b!5129335 (= c!882142 lt!2115693)))

(declare-fun lostCause!1256 (Context!7392) Bool)

(assert (=> b!5129335 (= lt!2115693 (lostCause!1256 lt!2115695))))

(assert (= (and start!542090 res!2184156) b!5129334))

(assert (= (and b!5129334 res!2184161) b!5129333))

(assert (= (and b!5129333 res!2184160) b!5129327))

(assert (= (and b!5129327 (not res!2184154)) b!5129325))

(assert (= (and b!5129325 (not res!2184159)) b!5129335))

(assert (= (and b!5129335 c!882142) b!5129331))

(assert (= (and b!5129335 (not c!882142)) b!5129326))

(assert (= (and b!5129331 res!2184158) b!5129324))

(assert (= (and b!5129335 (not res!2184157)) b!5129332))

(assert (= (and b!5129332 (not res!2184153)) b!5129328))

(assert (= (and b!5129328 (not res!2184155)) b!5129330))

(assert (= (and start!542090 condSetEmpty!30953) setIsEmpty!30953))

(assert (= (and start!542090 (not condSetEmpty!30953)) setNonEmpty!30953))

(assert (= setNonEmpty!30953 b!5129329))

(declare-fun m!6193898 () Bool)

(assert (=> b!5129328 m!6193898))

(declare-fun m!6193900 () Bool)

(assert (=> b!5129331 m!6193900))

(declare-fun m!6193902 () Bool)

(assert (=> b!5129331 m!6193902))

(declare-fun m!6193904 () Bool)

(assert (=> b!5129331 m!6193904))

(declare-fun m!6193906 () Bool)

(assert (=> b!5129331 m!6193906))

(declare-fun m!6193908 () Bool)

(assert (=> b!5129331 m!6193908))

(declare-fun m!6193910 () Bool)

(assert (=> b!5129334 m!6193910))

(declare-fun m!6193912 () Bool)

(assert (=> b!5129333 m!6193912))

(declare-fun m!6193914 () Bool)

(assert (=> b!5129333 m!6193914))

(declare-fun m!6193916 () Bool)

(assert (=> b!5129335 m!6193916))

(declare-fun m!6193918 () Bool)

(assert (=> b!5129332 m!6193918))

(declare-fun m!6193920 () Bool)

(assert (=> setNonEmpty!30953 m!6193920))

(declare-fun m!6193922 () Bool)

(assert (=> b!5129330 m!6193922))

(assert (=> b!5129330 m!6193922))

(declare-fun m!6193924 () Bool)

(assert (=> b!5129330 m!6193924))

(declare-fun m!6193926 () Bool)

(assert (=> b!5129327 m!6193926))

(declare-fun m!6193928 () Bool)

(assert (=> b!5129327 m!6193928))

(declare-fun m!6193930 () Bool)

(assert (=> b!5129327 m!6193930))

(declare-fun m!6193932 () Bool)

(assert (=> start!542090 m!6193932))

(declare-fun m!6193934 () Bool)

(assert (=> b!5129325 m!6193934))

(push 1)

(assert (not b!5129328))

(assert (not b!5129329))

(assert (not setNonEmpty!30953))

(assert (not start!542090))

(assert (not b!5129335))

(assert (not b!5129332))

(assert (not b!5129327))

(assert (not b!5129331))

(assert (not b!5129333))

(assert (not b!5129334))

(assert (not b!5129330))

(assert (not b!5129325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1659422 () Bool)

(declare-fun lt!2115725 () Bool)

(declare-fun exists!1594 (List!59553 Int) Bool)

(assert (=> d!1659422 (= lt!2115725 (exists!1594 (toList!8306 z!1113) lambda!253069))))

(declare-fun choose!37821 ((Set Context!7392) Int) Bool)

(assert (=> d!1659422 (= lt!2115725 (choose!37821 z!1113 lambda!253069))))

(assert (=> d!1659422 (= (exists!1592 z!1113 lambda!253069) lt!2115725)))

(declare-fun bs!1195327 () Bool)

(assert (= bs!1195327 d!1659422))

(assert (=> bs!1195327 m!6193922))

(assert (=> bs!1195327 m!6193922))

(declare-fun m!6193974 () Bool)

(assert (=> bs!1195327 m!6193974))

(declare-fun m!6193976 () Bool)

(assert (=> bs!1195327 m!6193976))

(assert (=> b!5129334 d!1659422))

(declare-fun d!1659424 () Bool)

(declare-fun res!2184193 () Bool)

(declare-fun e!3199028 () Bool)

(assert (=> d!1659424 (=> res!2184193 e!3199028)))

(assert (=> d!1659424 (= res!2184193 (is-Nil!59428 (exprs!4196 lt!2115695)))))

(assert (=> d!1659424 (= (forall!13709 (exprs!4196 lt!2115695) lambda!253071) e!3199028)))

(declare-fun b!5129376 () Bool)

(declare-fun e!3199029 () Bool)

(assert (=> b!5129376 (= e!3199028 e!3199029)))

(declare-fun res!2184194 () Bool)

(assert (=> b!5129376 (=> (not res!2184194) (not e!3199029))))

(declare-fun dynLambda!23661 (Int Regex!14312) Bool)

(assert (=> b!5129376 (= res!2184194 (dynLambda!23661 lambda!253071 (h!65876 (exprs!4196 lt!2115695))))))

(declare-fun b!5129377 () Bool)

(assert (=> b!5129377 (= e!3199029 (forall!13709 (t!372579 (exprs!4196 lt!2115695)) lambda!253071))))

(assert (= (and d!1659424 (not res!2184193)) b!5129376))

(assert (= (and b!5129376 res!2184194) b!5129377))

(declare-fun b_lambda!199413 () Bool)

(assert (=> (not b_lambda!199413) (not b!5129376)))

(declare-fun m!6193978 () Bool)

(assert (=> b!5129376 m!6193978))

(declare-fun m!6193980 () Bool)

(assert (=> b!5129377 m!6193980))

(assert (=> b!5129325 d!1659424))

(declare-fun bs!1195328 () Bool)

(declare-fun d!1659426 () Bool)

(assert (= bs!1195328 (and d!1659426 b!5129327)))

(declare-fun lambda!253099 () Int)

(assert (=> bs!1195328 (not (= lambda!253099 lambda!253070))))

(declare-fun bs!1195329 () Bool)

(assert (= bs!1195329 (and d!1659426 b!5129325)))

(assert (=> bs!1195329 (= lambda!253099 lambda!253071)))

(declare-fun bs!1195330 () Bool)

(assert (= bs!1195330 (and d!1659426 b!5129331)))

(assert (=> bs!1195330 (not (= lambda!253099 lambda!253072))))

(assert (=> d!1659426 (= (nullableContext!31 lt!2115695) (forall!13709 (exprs!4196 lt!2115695) lambda!253099))))

(declare-fun bs!1195331 () Bool)

(assert (= bs!1195331 d!1659426))

(declare-fun m!6193982 () Bool)

(assert (=> bs!1195331 m!6193982))

(assert (=> b!5129333 d!1659426))

(declare-fun d!1659428 () Bool)

(declare-fun e!3199032 () Bool)

(assert (=> d!1659428 e!3199032))

(declare-fun res!2184197 () Bool)

(assert (=> d!1659428 (=> (not res!2184197) (not e!3199032))))

(declare-fun lt!2115728 () Context!7392)

(declare-fun dynLambda!23662 (Int Context!7392) Bool)

(assert (=> d!1659428 (= res!2184197 (dynLambda!23662 lambda!253069 lt!2115728))))

(declare-fun getWitness!752 (List!59553 Int) Context!7392)

(assert (=> d!1659428 (= lt!2115728 (getWitness!752 (toList!8306 z!1113) lambda!253069))))

(assert (=> d!1659428 (exists!1592 z!1113 lambda!253069)))

(assert (=> d!1659428 (= (getWitness!749 z!1113 lambda!253069) lt!2115728)))

(declare-fun b!5129380 () Bool)

(assert (=> b!5129380 (= e!3199032 (set.member lt!2115728 z!1113))))

(assert (= (and d!1659428 res!2184197) b!5129380))

(declare-fun b_lambda!199415 () Bool)

(assert (=> (not b_lambda!199415) (not d!1659428)))

(declare-fun m!6193984 () Bool)

(assert (=> d!1659428 m!6193984))

(assert (=> d!1659428 m!6193922))

(assert (=> d!1659428 m!6193922))

(declare-fun m!6193986 () Bool)

(assert (=> d!1659428 m!6193986))

(assert (=> d!1659428 m!6193910))

(declare-fun m!6193988 () Bool)

(assert (=> b!5129380 m!6193988))

(assert (=> b!5129333 d!1659428))

(declare-fun bs!1195332 () Bool)

(declare-fun d!1659430 () Bool)

(assert (= bs!1195332 (and d!1659430 b!5129334)))

(declare-fun lambda!253112 () Int)

(assert (=> bs!1195332 (not (= lambda!253112 lambda!253069))))

(declare-fun bs!1195333 () Bool)

(assert (= bs!1195333 (and d!1659430 b!5129328)))

(assert (=> bs!1195333 (= lambda!253112 lambda!253073)))

(declare-fun bs!1195334 () Bool)

(declare-fun b!5129385 () Bool)

(assert (= bs!1195334 (and b!5129385 b!5129334)))

(declare-fun lambda!253113 () Int)

(assert (=> bs!1195334 (not (= lambda!253113 lambda!253069))))

(declare-fun bs!1195335 () Bool)

(assert (= bs!1195335 (and b!5129385 b!5129328)))

(assert (=> bs!1195335 (not (= lambda!253113 lambda!253073))))

(declare-fun bs!1195336 () Bool)

(assert (= bs!1195336 (and b!5129385 d!1659430)))

(assert (=> bs!1195336 (not (= lambda!253113 lambda!253112))))

(declare-fun bs!1195337 () Bool)

(declare-fun b!5129386 () Bool)

(assert (= bs!1195337 (and b!5129386 b!5129334)))

(declare-fun lambda!253114 () Int)

(assert (=> bs!1195337 (not (= lambda!253114 lambda!253069))))

(declare-fun bs!1195338 () Bool)

(assert (= bs!1195338 (and b!5129386 b!5129328)))

(assert (=> bs!1195338 (not (= lambda!253114 lambda!253073))))

(declare-fun bs!1195339 () Bool)

(assert (= bs!1195339 (and b!5129386 d!1659430)))

(assert (=> bs!1195339 (not (= lambda!253114 lambda!253112))))

(declare-fun bs!1195340 () Bool)

(assert (= bs!1195340 (and b!5129386 b!5129385)))

(assert (=> bs!1195340 (= lambda!253114 lambda!253113)))

(declare-fun bm!356995 () Bool)

(declare-fun c!882167 () Bool)

(declare-fun lt!2115750 () List!59553)

(declare-fun call!357000 () Bool)

(declare-fun lt!2115747 () List!59553)

(assert (=> bm!356995 (= call!357000 (exists!1594 (ite c!882167 lt!2115747 lt!2115750) (ite c!882167 lambda!253113 lambda!253114)))))

(declare-fun e!3199039 () Unit!150646)

(declare-fun Unit!150654 () Unit!150646)

(assert (=> b!5129385 (= e!3199039 Unit!150654)))

(declare-fun call!357001 () List!59553)

(assert (=> b!5129385 (= lt!2115747 call!357001)))

(declare-fun lt!2115746 () Unit!150646)

(declare-fun lemmaNotForallThenExists!363 (List!59553 Int) Unit!150646)

(assert (=> b!5129385 (= lt!2115746 (lemmaNotForallThenExists!363 lt!2115747 lambda!253112))))

(assert (=> b!5129385 call!357000))

(declare-fun lt!2115748 () Unit!150646)

(assert (=> b!5129385 (= lt!2115748 lt!2115746)))

(declare-fun bm!356996 () Bool)

(assert (=> bm!356996 (= call!357001 (toList!8306 z!1113))))

(declare-fun lt!2115749 () Bool)

(declare-datatypes ((List!59556 0))(
  ( (Nil!59432) (Cons!59432 (h!65880 C!28890) (t!372583 List!59556)) )
))
(declare-datatypes ((Option!14723 0))(
  ( (None!14722) (Some!14722 (v!50743 List!59556)) )
))
(declare-fun isEmpty!31984 (Option!14723) Bool)

(declare-fun getLanguageWitness!856 ((Set Context!7392)) Option!14723)

(assert (=> d!1659430 (= lt!2115749 (isEmpty!31984 (getLanguageWitness!856 z!1113)))))

(assert (=> d!1659430 (= lt!2115749 (forall!13710 z!1113 lambda!253112))))

(declare-fun lt!2115751 () Unit!150646)

(assert (=> d!1659430 (= lt!2115751 e!3199039)))

(assert (=> d!1659430 (= c!882167 (not (forall!13710 z!1113 lambda!253112)))))

(assert (=> d!1659430 (= (lostCauseZipper!1160 z!1113) lt!2115749)))

(declare-fun Unit!150655 () Unit!150646)

(assert (=> b!5129386 (= e!3199039 Unit!150655)))

(assert (=> b!5129386 (= lt!2115750 call!357001)))

(declare-fun lt!2115745 () Unit!150646)

(declare-fun lemmaForallThenNotExists!346 (List!59553 Int) Unit!150646)

(assert (=> b!5129386 (= lt!2115745 (lemmaForallThenNotExists!346 lt!2115750 lambda!253112))))

(assert (=> b!5129386 (not call!357000)))

(declare-fun lt!2115752 () Unit!150646)

(assert (=> b!5129386 (= lt!2115752 lt!2115745)))

(assert (= (and d!1659430 c!882167) b!5129385))

(assert (= (and d!1659430 (not c!882167)) b!5129386))

(assert (= (or b!5129385 b!5129386) bm!356995))

(assert (= (or b!5129385 b!5129386) bm!356996))

(declare-fun m!6193990 () Bool)

(assert (=> d!1659430 m!6193990))

(assert (=> d!1659430 m!6193990))

(declare-fun m!6193992 () Bool)

(assert (=> d!1659430 m!6193992))

(declare-fun m!6193994 () Bool)

(assert (=> d!1659430 m!6193994))

(assert (=> d!1659430 m!6193994))

(declare-fun m!6193996 () Bool)

(assert (=> b!5129386 m!6193996))

(declare-fun m!6193998 () Bool)

(assert (=> bm!356995 m!6193998))

(assert (=> bm!356996 m!6193922))

(declare-fun m!6194000 () Bool)

(assert (=> b!5129385 m!6194000))

(assert (=> b!5129332 d!1659430))

(declare-fun d!1659434 () Bool)

(declare-fun lostCauseFct!311 (Regex!14312) Bool)

(assert (=> d!1659434 (= (lostCause!1255 lt!2115692) (lostCauseFct!311 lt!2115692))))

(declare-fun bs!1195341 () Bool)

(assert (= bs!1195341 d!1659434))

(declare-fun m!6194002 () Bool)

(assert (=> bs!1195341 m!6194002))

(assert (=> b!5129331 d!1659434))

(declare-fun b!5129399 () Bool)

(declare-fun e!3199050 () Regex!14312)

(declare-fun e!3199051 () Regex!14312)

(assert (=> b!5129399 (= e!3199050 e!3199051)))

(declare-fun c!882173 () Bool)

(assert (=> b!5129399 (= c!882173 (is-Cons!59428 (exprs!4196 lt!2115695)))))

(declare-fun d!1659436 () Bool)

(declare-fun e!3199048 () Bool)

(assert (=> d!1659436 e!3199048))

(declare-fun res!2184202 () Bool)

(assert (=> d!1659436 (=> (not res!2184202) (not e!3199048))))

(declare-fun lt!2115761 () Regex!14312)

(assert (=> d!1659436 (= res!2184202 (dynLambda!23661 lambda!253072 lt!2115761))))

(assert (=> d!1659436 (= lt!2115761 e!3199050)))

(declare-fun c!882172 () Bool)

(declare-fun e!3199049 () Bool)

(assert (=> d!1659436 (= c!882172 e!3199049)))

(declare-fun res!2184203 () Bool)

(assert (=> d!1659436 (=> (not res!2184203) (not e!3199049))))

(assert (=> d!1659436 (= res!2184203 (is-Cons!59428 (exprs!4196 lt!2115695)))))

(declare-fun exists!1595 (List!59552 Int) Bool)

(assert (=> d!1659436 (exists!1595 (exprs!4196 lt!2115695) lambda!253072)))

(assert (=> d!1659436 (= (getWitness!748 (exprs!4196 lt!2115695) lambda!253072) lt!2115761)))

(declare-fun b!5129400 () Bool)

(assert (=> b!5129400 (= e!3199051 (getWitness!748 (t!372579 (exprs!4196 lt!2115695)) lambda!253072))))

(declare-fun b!5129401 () Bool)

(assert (=> b!5129401 (= e!3199049 (dynLambda!23661 lambda!253072 (h!65876 (exprs!4196 lt!2115695))))))

(declare-fun b!5129402 () Bool)

(assert (=> b!5129402 (= e!3199050 (h!65876 (exprs!4196 lt!2115695)))))

(declare-fun b!5129403 () Bool)

(declare-fun contains!19625 (List!59552 Regex!14312) Bool)

(assert (=> b!5129403 (= e!3199048 (contains!19625 (exprs!4196 lt!2115695) lt!2115761))))

(declare-fun b!5129404 () Bool)

(declare-fun lt!2115760 () Unit!150646)

(declare-fun Unit!150656 () Unit!150646)

(assert (=> b!5129404 (= lt!2115760 Unit!150656)))

(assert (=> b!5129404 false))

(declare-fun head!10977 (List!59552) Regex!14312)

(assert (=> b!5129404 (= e!3199051 (head!10977 (exprs!4196 lt!2115695)))))

(assert (= (and d!1659436 res!2184203) b!5129401))

(assert (= (and d!1659436 c!882172) b!5129402))

(assert (= (and d!1659436 (not c!882172)) b!5129399))

(assert (= (and b!5129399 c!882173) b!5129400))

(assert (= (and b!5129399 (not c!882173)) b!5129404))

(assert (= (and d!1659436 res!2184202) b!5129403))

(declare-fun b_lambda!199417 () Bool)

(assert (=> (not b_lambda!199417) (not d!1659436)))

(declare-fun b_lambda!199419 () Bool)

(assert (=> (not b_lambda!199419) (not b!5129401)))

(declare-fun m!6194006 () Bool)

(assert (=> b!5129400 m!6194006))

(declare-fun m!6194008 () Bool)

(assert (=> d!1659436 m!6194008))

(declare-fun m!6194010 () Bool)

(assert (=> d!1659436 m!6194010))

(declare-fun m!6194012 () Bool)

(assert (=> b!5129401 m!6194012))

(declare-fun m!6194014 () Bool)

(assert (=> b!5129404 m!6194014))

(declare-fun m!6194016 () Bool)

(assert (=> b!5129403 m!6194016))

(assert (=> b!5129331 d!1659436))

(declare-fun d!1659440 () Bool)

(assert (=> d!1659440 (dynLambda!23661 lambda!253071 lt!2115692)))

(declare-fun lt!2115764 () Unit!150646)

(declare-fun choose!37822 (List!59552 Int Regex!14312) Unit!150646)

(assert (=> d!1659440 (= lt!2115764 (choose!37822 (exprs!4196 lt!2115695) lambda!253071 lt!2115692))))

(declare-fun e!3199054 () Bool)

(assert (=> d!1659440 e!3199054))

(declare-fun res!2184206 () Bool)

(assert (=> d!1659440 (=> (not res!2184206) (not e!3199054))))

(assert (=> d!1659440 (= res!2184206 (forall!13709 (exprs!4196 lt!2115695) lambda!253071))))

(assert (=> d!1659440 (= (forallContained!4600 (exprs!4196 lt!2115695) lambda!253071 lt!2115692) lt!2115764)))

(declare-fun b!5129407 () Bool)

(assert (=> b!5129407 (= e!3199054 (contains!19625 (exprs!4196 lt!2115695) lt!2115692))))

(assert (= (and d!1659440 res!2184206) b!5129407))

(declare-fun b_lambda!199421 () Bool)

(assert (=> (not b_lambda!199421) (not d!1659440)))

(declare-fun m!6194020 () Bool)

(assert (=> d!1659440 m!6194020))

(declare-fun m!6194022 () Bool)

(assert (=> d!1659440 m!6194022))

(assert (=> d!1659440 m!6193934))

(declare-fun m!6194024 () Bool)

(assert (=> b!5129407 m!6194024))

(assert (=> b!5129331 d!1659440))

(declare-fun d!1659444 () Bool)

(assert (=> d!1659444 (dynLambda!23661 lambda!253070 lt!2115692)))

(declare-fun lt!2115765 () Unit!150646)

(assert (=> d!1659444 (= lt!2115765 (choose!37822 (exprs!4196 lt!2115695) lambda!253070 lt!2115692))))

(declare-fun e!3199055 () Bool)

(assert (=> d!1659444 e!3199055))

(declare-fun res!2184207 () Bool)

(assert (=> d!1659444 (=> (not res!2184207) (not e!3199055))))

(assert (=> d!1659444 (= res!2184207 (forall!13709 (exprs!4196 lt!2115695) lambda!253070))))

(assert (=> d!1659444 (= (forallContained!4600 (exprs!4196 lt!2115695) lambda!253070 lt!2115692) lt!2115765)))

(declare-fun b!5129408 () Bool)

(assert (=> b!5129408 (= e!3199055 (contains!19625 (exprs!4196 lt!2115695) lt!2115692))))

(assert (= (and d!1659444 res!2184207) b!5129408))

(declare-fun b_lambda!199423 () Bool)

(assert (=> (not b_lambda!199423) (not d!1659444)))

(declare-fun m!6194026 () Bool)

(assert (=> d!1659444 m!6194026))

(declare-fun m!6194028 () Bool)

(assert (=> d!1659444 m!6194028))

(assert (=> d!1659444 m!6193928))

(assert (=> b!5129408 m!6194024))

(assert (=> b!5129331 d!1659444))

(declare-fun d!1659446 () Bool)

(assert (=> d!1659446 (not (lostCause!1255 lt!2115692))))

(declare-fun lt!2115768 () Unit!150646)

(declare-fun choose!37823 (Regex!14312) Unit!150646)

(assert (=> d!1659446 (= lt!2115768 (choose!37823 lt!2115692))))

(declare-fun validRegex!6234 (Regex!14312) Bool)

(assert (=> d!1659446 (validRegex!6234 lt!2115692)))

(assert (=> d!1659446 (= (lemmaNullableThenNotLostCause!21 lt!2115692) lt!2115768)))

(declare-fun bs!1195347 () Bool)

(assert (= bs!1195347 d!1659446))

(assert (=> bs!1195347 m!6193902))

(declare-fun m!6194030 () Bool)

(assert (=> bs!1195347 m!6194030))

(declare-fun m!6194032 () Bool)

(assert (=> bs!1195347 m!6194032))

(assert (=> b!5129331 d!1659446))

(declare-fun d!1659448 () Bool)

(declare-fun res!2184212 () Bool)

(declare-fun e!3199060 () Bool)

(assert (=> d!1659448 (=> res!2184212 e!3199060)))

(assert (=> d!1659448 (= res!2184212 (is-Nil!59429 (toList!8306 z!1113)))))

(assert (=> d!1659448 (= (forall!13711 (toList!8306 z!1113) lambda!253073) e!3199060)))

(declare-fun b!5129413 () Bool)

(declare-fun e!3199061 () Bool)

(assert (=> b!5129413 (= e!3199060 e!3199061)))

(declare-fun res!2184213 () Bool)

(assert (=> b!5129413 (=> (not res!2184213) (not e!3199061))))

(assert (=> b!5129413 (= res!2184213 (dynLambda!23662 lambda!253073 (h!65877 (toList!8306 z!1113))))))

(declare-fun b!5129414 () Bool)

(assert (=> b!5129414 (= e!3199061 (forall!13711 (t!372580 (toList!8306 z!1113)) lambda!253073))))

(assert (= (and d!1659448 (not res!2184212)) b!5129413))

(assert (= (and b!5129413 res!2184213) b!5129414))

(declare-fun b_lambda!199425 () Bool)

(assert (=> (not b_lambda!199425) (not b!5129413)))

(declare-fun m!6194034 () Bool)

(assert (=> b!5129413 m!6194034))

(declare-fun m!6194036 () Bool)

(assert (=> b!5129414 m!6194036))

(assert (=> b!5129330 d!1659448))

(declare-fun d!1659450 () Bool)

(declare-fun e!3199064 () Bool)

(assert (=> d!1659450 e!3199064))

(declare-fun res!2184216 () Bool)

(assert (=> d!1659450 (=> (not res!2184216) (not e!3199064))))

(declare-fun lt!2115771 () List!59553)

(declare-fun noDuplicate!1088 (List!59553) Bool)

(assert (=> d!1659450 (= res!2184216 (noDuplicate!1088 lt!2115771))))

(declare-fun choose!37824 ((Set Context!7392)) List!59553)

(assert (=> d!1659450 (= lt!2115771 (choose!37824 z!1113))))

(assert (=> d!1659450 (= (toList!8306 z!1113) lt!2115771)))

(declare-fun b!5129417 () Bool)

(declare-fun content!10563 (List!59553) (Set Context!7392))

(assert (=> b!5129417 (= e!3199064 (= (content!10563 lt!2115771) z!1113))))

(assert (= (and d!1659450 res!2184216) b!5129417))

(declare-fun m!6194038 () Bool)

(assert (=> d!1659450 m!6194038))

(declare-fun m!6194040 () Bool)

(assert (=> d!1659450 m!6194040))

(declare-fun m!6194042 () Bool)

(assert (=> b!5129417 m!6194042))

(assert (=> b!5129330 d!1659450))

(declare-fun d!1659452 () Bool)

(declare-fun lt!2115774 () Bool)

(assert (=> d!1659452 (= lt!2115774 (forall!13711 (toList!8306 z!1113) lambda!253073))))

(declare-fun choose!37825 ((Set Context!7392) Int) Bool)

(assert (=> d!1659452 (= lt!2115774 (choose!37825 z!1113 lambda!253073))))

(assert (=> d!1659452 (= (forall!13710 z!1113 lambda!253073) lt!2115774)))

(declare-fun bs!1195348 () Bool)

(assert (= bs!1195348 d!1659452))

(assert (=> bs!1195348 m!6193922))

(assert (=> bs!1195348 m!6193922))

(assert (=> bs!1195348 m!6193924))

(declare-fun m!6194044 () Bool)

(assert (=> bs!1195348 m!6194044))

(assert (=> b!5129328 d!1659452))

(declare-fun d!1659454 () Bool)

(declare-fun res!2184217 () Bool)

(declare-fun e!3199065 () Bool)

(assert (=> d!1659454 (=> res!2184217 e!3199065)))

(assert (=> d!1659454 (= res!2184217 (is-Nil!59428 (exprs!4196 lt!2115695)))))

(assert (=> d!1659454 (= (forall!13709 (exprs!4196 lt!2115695) lambda!253070) e!3199065)))

(declare-fun b!5129418 () Bool)

(declare-fun e!3199066 () Bool)

(assert (=> b!5129418 (= e!3199065 e!3199066)))

(declare-fun res!2184218 () Bool)

(assert (=> b!5129418 (=> (not res!2184218) (not e!3199066))))

(assert (=> b!5129418 (= res!2184218 (dynLambda!23661 lambda!253070 (h!65876 (exprs!4196 lt!2115695))))))

(declare-fun b!5129419 () Bool)

(assert (=> b!5129419 (= e!3199066 (forall!13709 (t!372579 (exprs!4196 lt!2115695)) lambda!253070))))

(assert (= (and d!1659454 (not res!2184217)) b!5129418))

(assert (= (and b!5129418 res!2184218) b!5129419))

(declare-fun b_lambda!199427 () Bool)

(assert (=> (not b_lambda!199427) (not b!5129418)))

(declare-fun m!6194046 () Bool)

(assert (=> b!5129418 m!6194046))

(declare-fun m!6194048 () Bool)

(assert (=> b!5129419 m!6194048))

(assert (=> b!5129327 d!1659454))

(declare-fun bs!1195349 () Bool)

(declare-fun d!1659456 () Bool)

(assert (= bs!1195349 (and d!1659456 b!5129327)))

(declare-fun lambda!253120 () Int)

(assert (=> bs!1195349 (= lambda!253120 lambda!253070)))

(declare-fun bs!1195350 () Bool)

(assert (= bs!1195350 (and d!1659456 b!5129325)))

(assert (=> bs!1195350 (not (= lambda!253120 lambda!253071))))

(declare-fun bs!1195351 () Bool)

(assert (= bs!1195351 (and d!1659456 b!5129331)))

(assert (=> bs!1195351 (not (= lambda!253120 lambda!253072))))

(declare-fun bs!1195352 () Bool)

(assert (= bs!1195352 (and d!1659456 d!1659426)))

(assert (=> bs!1195352 (not (= lambda!253120 lambda!253099))))

(assert (=> d!1659456 (forall!13709 (exprs!4196 lt!2115695) lambda!253120)))

(declare-fun lt!2115777 () Unit!150646)

(declare-fun choose!37826 (Context!7392 List!59552) Unit!150646)

(assert (=> d!1659456 (= lt!2115777 (choose!37826 lt!2115695 (exprs!4196 lt!2115695)))))

(assert (=> d!1659456 (= (exprs!4196 lt!2115695) (exprs!4196 lt!2115695))))

(assert (=> d!1659456 (= (lemmaContextForallValidExprs!27 lt!2115695 (exprs!4196 lt!2115695)) lt!2115777)))

(declare-fun bs!1195353 () Bool)

(assert (= bs!1195353 d!1659456))

(declare-fun m!6194050 () Bool)

(assert (=> bs!1195353 m!6194050))

(declare-fun m!6194052 () Bool)

(assert (=> bs!1195353 m!6194052))

(assert (=> b!5129327 d!1659456))

(declare-fun bs!1195354 () Bool)

(declare-fun d!1659458 () Bool)

(assert (= bs!1195354 (and d!1659458 d!1659430)))

(declare-fun lambda!253124 () Int)

(assert (=> bs!1195354 (not (= lambda!253124 lambda!253112))))

(declare-fun bs!1195355 () Bool)

(assert (= bs!1195355 (and d!1659458 b!5129328)))

(assert (=> bs!1195355 (not (= lambda!253124 lambda!253073))))

(declare-fun bs!1195356 () Bool)

(assert (= bs!1195356 (and d!1659458 b!5129334)))

(assert (=> bs!1195356 (= lambda!253124 lambda!253069)))

(declare-fun bs!1195357 () Bool)

(assert (= bs!1195357 (and d!1659458 b!5129386)))

(assert (=> bs!1195357 (not (= lambda!253124 lambda!253114))))

(declare-fun bs!1195358 () Bool)

(assert (= bs!1195358 (and d!1659458 b!5129385)))

(assert (=> bs!1195358 (not (= lambda!253124 lambda!253113))))

(assert (=> d!1659458 (= (nullableZipper!1097 z!1113) (exists!1592 z!1113 lambda!253124))))

(declare-fun bs!1195359 () Bool)

(assert (= bs!1195359 d!1659458))

(declare-fun m!6194054 () Bool)

(assert (=> bs!1195359 m!6194054))

(assert (=> start!542090 d!1659458))

(declare-fun bs!1195360 () Bool)

(declare-fun d!1659460 () Bool)

(assert (= bs!1195360 (and d!1659460 d!1659456)))

(declare-fun lambda!253130 () Int)

(assert (=> bs!1195360 (= lambda!253130 lambda!253120)))

(declare-fun bs!1195361 () Bool)

(assert (= bs!1195361 (and d!1659460 b!5129325)))

(assert (=> bs!1195361 (not (= lambda!253130 lambda!253071))))

(declare-fun bs!1195362 () Bool)

(assert (= bs!1195362 (and d!1659460 b!5129331)))

(assert (=> bs!1195362 (not (= lambda!253130 lambda!253072))))

(declare-fun bs!1195363 () Bool)

(assert (= bs!1195363 (and d!1659460 d!1659426)))

(assert (=> bs!1195363 (not (= lambda!253130 lambda!253099))))

(declare-fun bs!1195364 () Bool)

(assert (= bs!1195364 (and d!1659460 b!5129327)))

(assert (=> bs!1195364 (= lambda!253130 lambda!253070)))

(assert (=> d!1659460 (= (inv!78962 setElem!30953) (forall!13709 (exprs!4196 setElem!30953) lambda!253130))))

(declare-fun bs!1195365 () Bool)

(assert (= bs!1195365 d!1659460))

(declare-fun m!6194056 () Bool)

(assert (=> bs!1195365 m!6194056))

(assert (=> setNonEmpty!30953 d!1659460))

(declare-fun bs!1195366 () Bool)

(declare-fun d!1659462 () Bool)

(assert (= bs!1195366 (and d!1659462 d!1659456)))

(declare-fun lambda!253137 () Int)

(assert (=> bs!1195366 (not (= lambda!253137 lambda!253120))))

(declare-fun bs!1195367 () Bool)

(assert (= bs!1195367 (and d!1659462 b!5129325)))

(assert (=> bs!1195367 (not (= lambda!253137 lambda!253071))))

(declare-fun bs!1195368 () Bool)

(assert (= bs!1195368 (and d!1659462 d!1659460)))

(assert (=> bs!1195368 (not (= lambda!253137 lambda!253130))))

(declare-fun bs!1195369 () Bool)

(assert (= bs!1195369 (and d!1659462 b!5129331)))

(assert (=> bs!1195369 (= lambda!253137 lambda!253072)))

(declare-fun bs!1195370 () Bool)

(assert (= bs!1195370 (and d!1659462 d!1659426)))

(assert (=> bs!1195370 (not (= lambda!253137 lambda!253099))))

(declare-fun bs!1195371 () Bool)

(assert (= bs!1195371 (and d!1659462 b!5129327)))

(assert (=> bs!1195371 (not (= lambda!253137 lambda!253070))))

(assert (=> d!1659462 (= (lostCause!1256 lt!2115695) (exists!1595 (exprs!4196 lt!2115695) lambda!253137))))

(declare-fun bs!1195372 () Bool)

(assert (= bs!1195372 d!1659462))

(declare-fun m!6194058 () Bool)

(assert (=> bs!1195372 m!6194058))

(assert (=> b!5129335 d!1659462))

(declare-fun condSetEmpty!30959 () Bool)

(assert (=> setNonEmpty!30953 (= condSetEmpty!30959 (= setRest!30953 (as set.empty (Set Context!7392))))))

(declare-fun setRes!30959 () Bool)

(assert (=> setNonEmpty!30953 (= tp!1431067 setRes!30959)))

(declare-fun setIsEmpty!30959 () Bool)

(assert (=> setIsEmpty!30959 setRes!30959))

(declare-fun setNonEmpty!30959 () Bool)

(declare-fun tp!1431078 () Bool)

(declare-fun setElem!30959 () Context!7392)

(declare-fun e!3199075 () Bool)

(assert (=> setNonEmpty!30959 (= setRes!30959 (and tp!1431078 (inv!78962 setElem!30959) e!3199075))))

(declare-fun setRest!30959 () (Set Context!7392))

(assert (=> setNonEmpty!30959 (= setRest!30953 (set.union (set.insert setElem!30959 (as set.empty (Set Context!7392))) setRest!30959))))

(declare-fun b!5129428 () Bool)

(declare-fun tp!1431079 () Bool)

(assert (=> b!5129428 (= e!3199075 tp!1431079)))

(assert (= (and setNonEmpty!30953 condSetEmpty!30959) setIsEmpty!30959))

(assert (= (and setNonEmpty!30953 (not condSetEmpty!30959)) setNonEmpty!30959))

(assert (= setNonEmpty!30959 b!5129428))

(declare-fun m!6194060 () Bool)

(assert (=> setNonEmpty!30959 m!6194060))

(declare-fun b!5129433 () Bool)

(declare-fun e!3199078 () Bool)

(declare-fun tp!1431084 () Bool)

(declare-fun tp!1431085 () Bool)

(assert (=> b!5129433 (= e!3199078 (and tp!1431084 tp!1431085))))

(assert (=> b!5129329 (= tp!1431066 e!3199078)))

(assert (= (and b!5129329 (is-Cons!59428 (exprs!4196 setElem!30953))) b!5129433))

(declare-fun b_lambda!199429 () Bool)

(assert (= b_lambda!199419 (or b!5129331 b_lambda!199429)))

(declare-fun bs!1195373 () Bool)

(declare-fun d!1659464 () Bool)

(assert (= bs!1195373 (and d!1659464 b!5129331)))

(assert (=> bs!1195373 (= (dynLambda!23661 lambda!253072 (h!65876 (exprs!4196 lt!2115695))) (lostCause!1255 (h!65876 (exprs!4196 lt!2115695))))))

(declare-fun m!6194062 () Bool)

(assert (=> bs!1195373 m!6194062))

(assert (=> b!5129401 d!1659464))

(declare-fun b_lambda!199431 () Bool)

(assert (= b_lambda!199415 (or b!5129334 b_lambda!199431)))

(declare-fun bs!1195374 () Bool)

(declare-fun d!1659466 () Bool)

(assert (= bs!1195374 (and d!1659466 b!5129334)))

(assert (=> bs!1195374 (= (dynLambda!23662 lambda!253069 lt!2115728) (nullableContext!31 lt!2115728))))

(declare-fun m!6194064 () Bool)

(assert (=> bs!1195374 m!6194064))

(assert (=> d!1659428 d!1659466))

(declare-fun b_lambda!199433 () Bool)

(assert (= b_lambda!199423 (or b!5129327 b_lambda!199433)))

(declare-fun bs!1195375 () Bool)

(declare-fun d!1659468 () Bool)

(assert (= bs!1195375 (and d!1659468 b!5129327)))

(assert (=> bs!1195375 (= (dynLambda!23661 lambda!253070 lt!2115692) (validRegex!6234 lt!2115692))))

(assert (=> bs!1195375 m!6194032))

(assert (=> d!1659444 d!1659468))

(declare-fun b_lambda!199435 () Bool)

(assert (= b_lambda!199421 (or b!5129325 b_lambda!199435)))

(declare-fun bs!1195376 () Bool)

(declare-fun d!1659470 () Bool)

(assert (= bs!1195376 (and d!1659470 b!5129325)))

(declare-fun nullable!4738 (Regex!14312) Bool)

(assert (=> bs!1195376 (= (dynLambda!23661 lambda!253071 lt!2115692) (nullable!4738 lt!2115692))))

(declare-fun m!6194066 () Bool)

(assert (=> bs!1195376 m!6194066))

(assert (=> d!1659440 d!1659470))

(declare-fun b_lambda!199437 () Bool)

(assert (= b_lambda!199413 (or b!5129325 b_lambda!199437)))

(declare-fun bs!1195377 () Bool)

(declare-fun d!1659472 () Bool)

(assert (= bs!1195377 (and d!1659472 b!5129325)))

(assert (=> bs!1195377 (= (dynLambda!23661 lambda!253071 (h!65876 (exprs!4196 lt!2115695))) (nullable!4738 (h!65876 (exprs!4196 lt!2115695))))))

(declare-fun m!6194068 () Bool)

(assert (=> bs!1195377 m!6194068))

(assert (=> b!5129376 d!1659472))

(declare-fun b_lambda!199439 () Bool)

(assert (= b_lambda!199427 (or b!5129327 b_lambda!199439)))

(declare-fun bs!1195378 () Bool)

(declare-fun d!1659474 () Bool)

(assert (= bs!1195378 (and d!1659474 b!5129327)))

(assert (=> bs!1195378 (= (dynLambda!23661 lambda!253070 (h!65876 (exprs!4196 lt!2115695))) (validRegex!6234 (h!65876 (exprs!4196 lt!2115695))))))

(declare-fun m!6194070 () Bool)

(assert (=> bs!1195378 m!6194070))

(assert (=> b!5129418 d!1659474))

(declare-fun b_lambda!199441 () Bool)

(assert (= b_lambda!199417 (or b!5129331 b_lambda!199441)))

(declare-fun bs!1195379 () Bool)

(declare-fun d!1659476 () Bool)

(assert (= bs!1195379 (and d!1659476 b!5129331)))

(assert (=> bs!1195379 (= (dynLambda!23661 lambda!253072 lt!2115761) (lostCause!1255 lt!2115761))))

(declare-fun m!6194072 () Bool)

(assert (=> bs!1195379 m!6194072))

(assert (=> d!1659436 d!1659476))

(declare-fun b_lambda!199443 () Bool)

(assert (= b_lambda!199425 (or b!5129328 b_lambda!199443)))

(declare-fun bs!1195380 () Bool)

(declare-fun d!1659478 () Bool)

(assert (= bs!1195380 (and d!1659478 b!5129328)))

(assert (=> bs!1195380 (= (dynLambda!23662 lambda!253073 (h!65877 (toList!8306 z!1113))) (lostCause!1256 (h!65877 (toList!8306 z!1113))))))

(declare-fun m!6194074 () Bool)

(assert (=> bs!1195380 m!6194074))

(assert (=> b!5129413 d!1659478))

(push 1)

(assert (not bm!356995))

(assert (not b!5129414))

(assert (not b_lambda!199433))

(assert (not d!1659452))

(assert (not d!1659456))

(assert (not bs!1195380))

(assert (not b!5129407))

(assert (not bm!356996))

(assert (not b!5129403))

(assert (not d!1659434))

(assert (not d!1659430))

(assert (not d!1659436))

(assert (not bs!1195377))

(assert (not d!1659444))

(assert (not bs!1195373))

(assert (not b_lambda!199429))

(assert (not d!1659440))

(assert (not b!5129404))

(assert (not d!1659422))

(assert (not bs!1195379))

(assert (not bs!1195376))

(assert (not d!1659460))

(assert (not b!5129400))

(assert (not d!1659446))

(assert (not b!5129419))

(assert (not b!5129377))

(assert (not bs!1195374))

(assert (not bs!1195378))

(assert (not b!5129408))

(assert (not d!1659458))

(assert (not b_lambda!199437))

(assert (not b_lambda!199441))

(assert (not b!5129428))

(assert (not d!1659462))

(assert (not b!5129385))

(assert (not setNonEmpty!30959))

(assert (not b_lambda!199443))

(assert (not b!5129433))

(assert (not b!5129417))

(assert (not bs!1195375))

(assert (not d!1659428))

(assert (not b_lambda!199439))

(assert (not b!5129386))

(assert (not d!1659450))

(assert (not b_lambda!199435))

(assert (not d!1659426))

(assert (not b_lambda!199431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

