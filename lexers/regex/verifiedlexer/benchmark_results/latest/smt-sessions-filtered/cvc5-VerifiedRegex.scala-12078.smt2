; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677392 () Bool)

(assert start!677392)

(declare-fun b!7021959 () Bool)

(assert (=> b!7021959 true))

(declare-fun b!7021958 () Bool)

(declare-fun e!4221075 () Bool)

(declare-fun e!4221076 () Bool)

(assert (=> b!7021958 (= e!4221075 e!4221076)))

(declare-fun res!2866316 () Bool)

(assert (=> b!7021958 (=> (not res!2866316) (not e!4221076))))

(declare-datatypes ((C!35074 0))(
  ( (C!35075 (val!27239 Int)) )
))
(declare-datatypes ((Regex!17402 0))(
  ( (ElementMatch!17402 (c!1305043 C!35074)) (Concat!26247 (regOne!35316 Regex!17402) (regTwo!35316 Regex!17402)) (EmptyExpr!17402) (Star!17402 (reg!17731 Regex!17402)) (EmptyLang!17402) (Union!17402 (regOne!35317 Regex!17402) (regTwo!35317 Regex!17402)) )
))
(declare-datatypes ((List!67748 0))(
  ( (Nil!67624) (Cons!67624 (h!74072 Regex!17402) (t!381503 List!67748)) )
))
(declare-datatypes ((Context!12796 0))(
  ( (Context!12797 (exprs!6898 List!67748)) )
))
(declare-fun lt!2512290 () Context!12796)

(declare-fun nullableContext!62 (Context!12796) Bool)

(assert (=> b!7021958 (= res!2866316 (nullableContext!62 lt!2512290))))

(declare-fun lt!2512289 () (Set Context!12796))

(declare-fun lambda!411690 () Int)

(declare-fun getWitness!1377 ((Set Context!12796) Int) Context!12796)

(assert (=> b!7021958 (= lt!2512290 (getWitness!1377 lt!2512289 lambda!411690))))

(declare-fun e!4221073 () Bool)

(assert (=> b!7021959 (= e!4221076 e!4221073)))

(declare-fun res!2866319 () Bool)

(assert (=> b!7021959 (=> (not res!2866319) (not e!4221073))))

(declare-fun lambda!411691 () Int)

(declare-fun z1!570 () (Set Context!12796))

(declare-fun lambda!411692 () Int)

(declare-fun forall!16308 (List!67748 Int) Bool)

(declare-fun mapPost2!249 ((Set Context!12796) Int Context!12796) Context!12796)

(assert (=> b!7021959 (= res!2866319 (forall!16308 (exprs!6898 (mapPost2!249 z1!570 lambda!411692 lt!2512290)) lambda!411691))))

(declare-fun b!7021960 () Bool)

(declare-fun res!2866321 () Bool)

(assert (=> b!7021960 (=> (not res!2866321) (not e!4221075))))

(declare-datatypes ((List!67749 0))(
  ( (Nil!67625) (Cons!67625 (h!74073 C!35074) (t!381504 List!67749)) )
))
(declare-fun s!7408 () List!67749)

(assert (=> b!7021960 (= res!2866321 (not (is-Cons!67625 s!7408)))))

(declare-fun b!7021961 () Bool)

(declare-fun ct2!306 () Context!12796)

(assert (=> b!7021961 (= e!4221073 (not (forall!16308 (exprs!6898 ct2!306) lambda!411691)))))

(declare-fun b!7021962 () Bool)

(declare-fun e!4221074 () Bool)

(declare-fun tp!1934422 () Bool)

(assert (=> b!7021962 (= e!4221074 tp!1934422)))

(declare-fun b!7021963 () Bool)

(declare-fun e!4221071 () Bool)

(declare-fun tp!1934423 () Bool)

(assert (=> b!7021963 (= e!4221071 tp!1934423)))

(declare-fun setElem!48767 () Context!12796)

(declare-fun tp!1934420 () Bool)

(declare-fun setNonEmpty!48767 () Bool)

(declare-fun setRes!48767 () Bool)

(declare-fun inv!86365 (Context!12796) Bool)

(assert (=> setNonEmpty!48767 (= setRes!48767 (and tp!1934420 (inv!86365 setElem!48767) e!4221071))))

(declare-fun setRest!48767 () (Set Context!12796))

(assert (=> setNonEmpty!48767 (= z1!570 (set.union (set.insert setElem!48767 (as set.empty (Set Context!12796))) setRest!48767))))

(declare-fun res!2866317 () Bool)

(assert (=> start!677392 (=> (not res!2866317) (not e!4221075))))

(declare-fun matchZipper!2942 ((Set Context!12796) List!67749) Bool)

(assert (=> start!677392 (= res!2866317 (matchZipper!2942 lt!2512289 s!7408))))

(declare-fun appendTo!523 ((Set Context!12796) Context!12796) (Set Context!12796))

(assert (=> start!677392 (= lt!2512289 (appendTo!523 z1!570 ct2!306))))

(assert (=> start!677392 e!4221075))

(declare-fun condSetEmpty!48767 () Bool)

(assert (=> start!677392 (= condSetEmpty!48767 (= z1!570 (as set.empty (Set Context!12796))))))

(assert (=> start!677392 setRes!48767))

(assert (=> start!677392 (and (inv!86365 ct2!306) e!4221074)))

(declare-fun e!4221072 () Bool)

(assert (=> start!677392 e!4221072))

(declare-fun b!7021964 () Bool)

(declare-fun res!2866318 () Bool)

(assert (=> b!7021964 (=> (not res!2866318) (not e!4221075))))

(declare-fun exists!3295 ((Set Context!12796) Int) Bool)

(assert (=> b!7021964 (= res!2866318 (exists!3295 lt!2512289 lambda!411690))))

(declare-fun b!7021965 () Bool)

(declare-fun tp_is_empty!44029 () Bool)

(declare-fun tp!1934421 () Bool)

(assert (=> b!7021965 (= e!4221072 (and tp_is_empty!44029 tp!1934421))))

(declare-fun b!7021966 () Bool)

(declare-fun res!2866320 () Bool)

(assert (=> b!7021966 (=> (not res!2866320) (not e!4221075))))

(declare-fun nullableZipper!2531 ((Set Context!12796)) Bool)

(assert (=> b!7021966 (= res!2866320 (nullableZipper!2531 lt!2512289))))

(declare-fun setIsEmpty!48767 () Bool)

(assert (=> setIsEmpty!48767 setRes!48767))

(assert (= (and start!677392 res!2866317) b!7021960))

(assert (= (and b!7021960 res!2866321) b!7021966))

(assert (= (and b!7021966 res!2866320) b!7021964))

(assert (= (and b!7021964 res!2866318) b!7021958))

(assert (= (and b!7021958 res!2866316) b!7021959))

(assert (= (and b!7021959 res!2866319) b!7021961))

(assert (= (and start!677392 condSetEmpty!48767) setIsEmpty!48767))

(assert (= (and start!677392 (not condSetEmpty!48767)) setNonEmpty!48767))

(assert (= setNonEmpty!48767 b!7021963))

(assert (= start!677392 b!7021962))

(assert (= (and start!677392 (is-Cons!67625 s!7408)) b!7021965))

(declare-fun m!7723920 () Bool)

(assert (=> b!7021966 m!7723920))

(declare-fun m!7723922 () Bool)

(assert (=> b!7021964 m!7723922))

(declare-fun m!7723924 () Bool)

(assert (=> setNonEmpty!48767 m!7723924))

(declare-fun m!7723926 () Bool)

(assert (=> b!7021961 m!7723926))

(declare-fun m!7723928 () Bool)

(assert (=> b!7021959 m!7723928))

(declare-fun m!7723930 () Bool)

(assert (=> b!7021959 m!7723930))

(declare-fun m!7723932 () Bool)

(assert (=> start!677392 m!7723932))

(declare-fun m!7723934 () Bool)

(assert (=> start!677392 m!7723934))

(declare-fun m!7723936 () Bool)

(assert (=> start!677392 m!7723936))

(declare-fun m!7723938 () Bool)

(assert (=> b!7021958 m!7723938))

(declare-fun m!7723940 () Bool)

(assert (=> b!7021958 m!7723940))

(push 1)

(assert (not b!7021958))

(assert (not b!7021961))

(assert (not b!7021964))

(assert (not start!677392))

(assert (not b!7021963))

(assert (not b!7021966))

(assert tp_is_empty!44029)

(assert (not setNonEmpty!48767))

(assert (not b!7021962))

(assert (not b!7021965))

(assert (not b!7021959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1867788 () Bool)

(declare-fun d!2188883 () Bool)

(assert (= bs!1867788 (and d!2188883 b!7021964)))

(declare-fun lambda!411708 () Int)

(assert (=> bs!1867788 (= lambda!411708 lambda!411690)))

(assert (=> d!2188883 (= (nullableZipper!2531 lt!2512289) (exists!3295 lt!2512289 lambda!411708))))

(declare-fun bs!1867789 () Bool)

(assert (= bs!1867789 d!2188883))

(declare-fun m!7723964 () Bool)

(assert (=> bs!1867789 m!7723964))

(assert (=> b!7021966 d!2188883))

(declare-fun d!2188885 () Bool)

(declare-fun res!2866346 () Bool)

(declare-fun e!4221099 () Bool)

(assert (=> d!2188885 (=> res!2866346 e!4221099)))

(assert (=> d!2188885 (= res!2866346 (is-Nil!67624 (exprs!6898 ct2!306)))))

(assert (=> d!2188885 (= (forall!16308 (exprs!6898 ct2!306) lambda!411691) e!4221099)))

(declare-fun b!7022002 () Bool)

(declare-fun e!4221100 () Bool)

(assert (=> b!7022002 (= e!4221099 e!4221100)))

(declare-fun res!2866347 () Bool)

(assert (=> b!7022002 (=> (not res!2866347) (not e!4221100))))

(declare-fun dynLambda!27248 (Int Regex!17402) Bool)

(assert (=> b!7022002 (= res!2866347 (dynLambda!27248 lambda!411691 (h!74072 (exprs!6898 ct2!306))))))

(declare-fun b!7022003 () Bool)

(assert (=> b!7022003 (= e!4221100 (forall!16308 (t!381503 (exprs!6898 ct2!306)) lambda!411691))))

(assert (= (and d!2188885 (not res!2866346)) b!7022002))

(assert (= (and b!7022002 res!2866347) b!7022003))

(declare-fun b_lambda!265215 () Bool)

(assert (=> (not b_lambda!265215) (not b!7022002)))

(declare-fun m!7723966 () Bool)

(assert (=> b!7022002 m!7723966))

(declare-fun m!7723968 () Bool)

(assert (=> b!7022003 m!7723968))

(assert (=> b!7021961 d!2188885))

(declare-fun d!2188887 () Bool)

(declare-fun c!1305055 () Bool)

(declare-fun isEmpty!39464 (List!67749) Bool)

(assert (=> d!2188887 (= c!1305055 (isEmpty!39464 s!7408))))

(declare-fun e!4221103 () Bool)

(assert (=> d!2188887 (= (matchZipper!2942 lt!2512289 s!7408) e!4221103)))

(declare-fun b!7022008 () Bool)

(assert (=> b!7022008 (= e!4221103 (nullableZipper!2531 lt!2512289))))

(declare-fun b!7022009 () Bool)

(declare-fun derivationStepZipper!2876 ((Set Context!12796) C!35074) (Set Context!12796))

(declare-fun head!14219 (List!67749) C!35074)

(declare-fun tail!13486 (List!67749) List!67749)

(assert (=> b!7022009 (= e!4221103 (matchZipper!2942 (derivationStepZipper!2876 lt!2512289 (head!14219 s!7408)) (tail!13486 s!7408)))))

(assert (= (and d!2188887 c!1305055) b!7022008))

(assert (= (and d!2188887 (not c!1305055)) b!7022009))

(declare-fun m!7723970 () Bool)

(assert (=> d!2188887 m!7723970))

(assert (=> b!7022008 m!7723920))

(declare-fun m!7723972 () Bool)

(assert (=> b!7022009 m!7723972))

(assert (=> b!7022009 m!7723972))

(declare-fun m!7723974 () Bool)

(assert (=> b!7022009 m!7723974))

(declare-fun m!7723976 () Bool)

(assert (=> b!7022009 m!7723976))

(assert (=> b!7022009 m!7723974))

(assert (=> b!7022009 m!7723976))

(declare-fun m!7723978 () Bool)

(assert (=> b!7022009 m!7723978))

(assert (=> start!677392 d!2188887))

(declare-fun bs!1867790 () Bool)

(declare-fun d!2188889 () Bool)

(assert (= bs!1867790 (and d!2188889 b!7021959)))

(declare-fun lambda!411713 () Int)

(assert (=> bs!1867790 (= lambda!411713 lambda!411692)))

(assert (=> d!2188889 true))

(declare-fun map!15692 ((Set Context!12796) Int) (Set Context!12796))

(assert (=> d!2188889 (= (appendTo!523 z1!570 ct2!306) (map!15692 z1!570 lambda!411713))))

(declare-fun bs!1867791 () Bool)

(assert (= bs!1867791 d!2188889))

(declare-fun m!7723980 () Bool)

(assert (=> bs!1867791 m!7723980))

(assert (=> start!677392 d!2188889))

(declare-fun bs!1867792 () Bool)

(declare-fun d!2188891 () Bool)

(assert (= bs!1867792 (and d!2188891 b!7021959)))

(declare-fun lambda!411716 () Int)

(assert (=> bs!1867792 (= lambda!411716 lambda!411691)))

(assert (=> d!2188891 (= (inv!86365 ct2!306) (forall!16308 (exprs!6898 ct2!306) lambda!411716))))

(declare-fun bs!1867793 () Bool)

(assert (= bs!1867793 d!2188891))

(declare-fun m!7723982 () Bool)

(assert (=> bs!1867793 m!7723982))

(assert (=> start!677392 d!2188891))

(declare-fun bs!1867794 () Bool)

(declare-fun d!2188895 () Bool)

(assert (= bs!1867794 (and d!2188895 b!7021959)))

(declare-fun lambda!411717 () Int)

(assert (=> bs!1867794 (= lambda!411717 lambda!411691)))

(declare-fun bs!1867795 () Bool)

(assert (= bs!1867795 (and d!2188895 d!2188891)))

(assert (=> bs!1867795 (= lambda!411717 lambda!411716)))

(assert (=> d!2188895 (= (inv!86365 setElem!48767) (forall!16308 (exprs!6898 setElem!48767) lambda!411717))))

(declare-fun bs!1867796 () Bool)

(assert (= bs!1867796 d!2188895))

(declare-fun m!7723984 () Bool)

(assert (=> bs!1867796 m!7723984))

(assert (=> setNonEmpty!48767 d!2188895))

(declare-fun bs!1867797 () Bool)

(declare-fun d!2188897 () Bool)

(assert (= bs!1867797 (and d!2188897 b!7021959)))

(declare-fun lambda!411720 () Int)

(assert (=> bs!1867797 (not (= lambda!411720 lambda!411691))))

(declare-fun bs!1867798 () Bool)

(assert (= bs!1867798 (and d!2188897 d!2188891)))

(assert (=> bs!1867798 (not (= lambda!411720 lambda!411716))))

(declare-fun bs!1867799 () Bool)

(assert (= bs!1867799 (and d!2188897 d!2188895)))

(assert (=> bs!1867799 (not (= lambda!411720 lambda!411717))))

(assert (=> d!2188897 (= (nullableContext!62 lt!2512290) (forall!16308 (exprs!6898 lt!2512290) lambda!411720))))

(declare-fun bs!1867800 () Bool)

(assert (= bs!1867800 d!2188897))

(declare-fun m!7723986 () Bool)

(assert (=> bs!1867800 m!7723986))

(assert (=> b!7021958 d!2188897))

(declare-fun d!2188899 () Bool)

(declare-fun e!4221106 () Bool)

(assert (=> d!2188899 e!4221106))

(declare-fun res!2866350 () Bool)

(assert (=> d!2188899 (=> (not res!2866350) (not e!4221106))))

(declare-fun lt!2512303 () Context!12796)

(declare-fun dynLambda!27249 (Int Context!12796) Bool)

(assert (=> d!2188899 (= res!2866350 (dynLambda!27249 lambda!411690 lt!2512303))))

(declare-datatypes ((List!67752 0))(
  ( (Nil!67628) (Cons!67628 (h!74076 Context!12796) (t!381507 List!67752)) )
))
(declare-fun getWitness!1379 (List!67752 Int) Context!12796)

(declare-fun toList!10759 ((Set Context!12796)) List!67752)

(assert (=> d!2188899 (= lt!2512303 (getWitness!1379 (toList!10759 lt!2512289) lambda!411690))))

(assert (=> d!2188899 (exists!3295 lt!2512289 lambda!411690)))

(assert (=> d!2188899 (= (getWitness!1377 lt!2512289 lambda!411690) lt!2512303)))

(declare-fun b!7022012 () Bool)

(assert (=> b!7022012 (= e!4221106 (set.member lt!2512303 lt!2512289))))

(assert (= (and d!2188899 res!2866350) b!7022012))

(declare-fun b_lambda!265217 () Bool)

(assert (=> (not b_lambda!265217) (not d!2188899)))

(declare-fun m!7723990 () Bool)

(assert (=> d!2188899 m!7723990))

(declare-fun m!7723992 () Bool)

(assert (=> d!2188899 m!7723992))

(assert (=> d!2188899 m!7723992))

(declare-fun m!7723994 () Bool)

(assert (=> d!2188899 m!7723994))

(assert (=> d!2188899 m!7723922))

(declare-fun m!7723996 () Bool)

(assert (=> b!7022012 m!7723996))

(assert (=> b!7021958 d!2188899))

(declare-fun d!2188903 () Bool)

(declare-fun lt!2512306 () Bool)

(declare-fun exists!3297 (List!67752 Int) Bool)

(assert (=> d!2188903 (= lt!2512306 (exists!3297 (toList!10759 lt!2512289) lambda!411690))))

(declare-fun choose!52988 ((Set Context!12796) Int) Bool)

(assert (=> d!2188903 (= lt!2512306 (choose!52988 lt!2512289 lambda!411690))))

(assert (=> d!2188903 (= (exists!3295 lt!2512289 lambda!411690) lt!2512306)))

(declare-fun bs!1867803 () Bool)

(assert (= bs!1867803 d!2188903))

(assert (=> bs!1867803 m!7723992))

(assert (=> bs!1867803 m!7723992))

(declare-fun m!7723998 () Bool)

(assert (=> bs!1867803 m!7723998))

(declare-fun m!7724000 () Bool)

(assert (=> bs!1867803 m!7724000))

(assert (=> b!7021964 d!2188903))

(declare-fun d!2188905 () Bool)

(declare-fun res!2866351 () Bool)

(declare-fun e!4221107 () Bool)

(assert (=> d!2188905 (=> res!2866351 e!4221107)))

(assert (=> d!2188905 (= res!2866351 (is-Nil!67624 (exprs!6898 (mapPost2!249 z1!570 lambda!411692 lt!2512290))))))

(assert (=> d!2188905 (= (forall!16308 (exprs!6898 (mapPost2!249 z1!570 lambda!411692 lt!2512290)) lambda!411691) e!4221107)))

(declare-fun b!7022013 () Bool)

(declare-fun e!4221108 () Bool)

(assert (=> b!7022013 (= e!4221107 e!4221108)))

(declare-fun res!2866352 () Bool)

(assert (=> b!7022013 (=> (not res!2866352) (not e!4221108))))

(assert (=> b!7022013 (= res!2866352 (dynLambda!27248 lambda!411691 (h!74072 (exprs!6898 (mapPost2!249 z1!570 lambda!411692 lt!2512290)))))))

(declare-fun b!7022014 () Bool)

(assert (=> b!7022014 (= e!4221108 (forall!16308 (t!381503 (exprs!6898 (mapPost2!249 z1!570 lambda!411692 lt!2512290))) lambda!411691))))

(assert (= (and d!2188905 (not res!2866351)) b!7022013))

(assert (= (and b!7022013 res!2866352) b!7022014))

(declare-fun b_lambda!265219 () Bool)

(assert (=> (not b_lambda!265219) (not b!7022013)))

(declare-fun m!7724002 () Bool)

(assert (=> b!7022013 m!7724002))

(declare-fun m!7724004 () Bool)

(assert (=> b!7022014 m!7724004))

(assert (=> b!7021959 d!2188905))

(declare-fun d!2188907 () Bool)

(declare-fun e!4221111 () Bool)

(assert (=> d!2188907 e!4221111))

(declare-fun res!2866355 () Bool)

(assert (=> d!2188907 (=> (not res!2866355) (not e!4221111))))

(declare-fun lt!2512309 () Context!12796)

(declare-fun dynLambda!27250 (Int Context!12796) Context!12796)

(assert (=> d!2188907 (= res!2866355 (= lt!2512290 (dynLambda!27250 lambda!411692 lt!2512309)))))

(declare-fun choose!52989 ((Set Context!12796) Int Context!12796) Context!12796)

(assert (=> d!2188907 (= lt!2512309 (choose!52989 z1!570 lambda!411692 lt!2512290))))

(assert (=> d!2188907 (set.member lt!2512290 (map!15692 z1!570 lambda!411692))))

(assert (=> d!2188907 (= (mapPost2!249 z1!570 lambda!411692 lt!2512290) lt!2512309)))

(declare-fun b!7022020 () Bool)

(assert (=> b!7022020 (= e!4221111 (set.member lt!2512309 z1!570))))

(assert (= (and d!2188907 res!2866355) b!7022020))

(declare-fun b_lambda!265221 () Bool)

(assert (=> (not b_lambda!265221) (not d!2188907)))

(declare-fun m!7724006 () Bool)

(assert (=> d!2188907 m!7724006))

(declare-fun m!7724008 () Bool)

(assert (=> d!2188907 m!7724008))

(declare-fun m!7724010 () Bool)

(assert (=> d!2188907 m!7724010))

(declare-fun m!7724012 () Bool)

(assert (=> d!2188907 m!7724012))

(declare-fun m!7724014 () Bool)

(assert (=> b!7022020 m!7724014))

(assert (=> b!7021959 d!2188907))

(declare-fun b!7022027 () Bool)

(declare-fun e!4221116 () Bool)

(declare-fun tp!1934440 () Bool)

(declare-fun tp!1934441 () Bool)

(assert (=> b!7022027 (= e!4221116 (and tp!1934440 tp!1934441))))

(assert (=> b!7021962 (= tp!1934422 e!4221116)))

(assert (= (and b!7021962 (is-Cons!67624 (exprs!6898 ct2!306))) b!7022027))

(declare-fun condSetEmpty!48773 () Bool)

(assert (=> setNonEmpty!48767 (= condSetEmpty!48773 (= setRest!48767 (as set.empty (Set Context!12796))))))

(declare-fun setRes!48773 () Bool)

(assert (=> setNonEmpty!48767 (= tp!1934420 setRes!48773)))

(declare-fun setIsEmpty!48773 () Bool)

(assert (=> setIsEmpty!48773 setRes!48773))

(declare-fun tp!1934447 () Bool)

(declare-fun setElem!48773 () Context!12796)

(declare-fun setNonEmpty!48773 () Bool)

(declare-fun e!4221119 () Bool)

(assert (=> setNonEmpty!48773 (= setRes!48773 (and tp!1934447 (inv!86365 setElem!48773) e!4221119))))

(declare-fun setRest!48773 () (Set Context!12796))

(assert (=> setNonEmpty!48773 (= setRest!48767 (set.union (set.insert setElem!48773 (as set.empty (Set Context!12796))) setRest!48773))))

(declare-fun b!7022032 () Bool)

(declare-fun tp!1934446 () Bool)

(assert (=> b!7022032 (= e!4221119 tp!1934446)))

(assert (= (and setNonEmpty!48767 condSetEmpty!48773) setIsEmpty!48773))

(assert (= (and setNonEmpty!48767 (not condSetEmpty!48773)) setNonEmpty!48773))

(assert (= setNonEmpty!48773 b!7022032))

(declare-fun m!7724016 () Bool)

(assert (=> setNonEmpty!48773 m!7724016))

(declare-fun b!7022033 () Bool)

(declare-fun e!4221120 () Bool)

(declare-fun tp!1934448 () Bool)

(declare-fun tp!1934449 () Bool)

(assert (=> b!7022033 (= e!4221120 (and tp!1934448 tp!1934449))))

(assert (=> b!7021963 (= tp!1934423 e!4221120)))

(assert (= (and b!7021963 (is-Cons!67624 (exprs!6898 setElem!48767))) b!7022033))

(declare-fun b!7022040 () Bool)

(declare-fun e!4221124 () Bool)

(declare-fun tp!1934452 () Bool)

(assert (=> b!7022040 (= e!4221124 (and tp_is_empty!44029 tp!1934452))))

(assert (=> b!7021965 (= tp!1934421 e!4221124)))

(assert (= (and b!7021965 (is-Cons!67625 (t!381504 s!7408))) b!7022040))

(declare-fun b_lambda!265223 () Bool)

(assert (= b_lambda!265215 (or b!7021959 b_lambda!265223)))

(declare-fun bs!1867804 () Bool)

(declare-fun d!2188909 () Bool)

(assert (= bs!1867804 (and d!2188909 b!7021959)))

(declare-fun validRegex!8921 (Regex!17402) Bool)

(assert (=> bs!1867804 (= (dynLambda!27248 lambda!411691 (h!74072 (exprs!6898 ct2!306))) (validRegex!8921 (h!74072 (exprs!6898 ct2!306))))))

(declare-fun m!7724018 () Bool)

(assert (=> bs!1867804 m!7724018))

(assert (=> b!7022002 d!2188909))

(declare-fun b_lambda!265225 () Bool)

(assert (= b_lambda!265217 (or b!7021964 b_lambda!265225)))

(declare-fun bs!1867805 () Bool)

(declare-fun d!2188911 () Bool)

(assert (= bs!1867805 (and d!2188911 b!7021964)))

(assert (=> bs!1867805 (= (dynLambda!27249 lambda!411690 lt!2512303) (nullableContext!62 lt!2512303))))

(declare-fun m!7724022 () Bool)

(assert (=> bs!1867805 m!7724022))

(assert (=> d!2188899 d!2188911))

(declare-fun b_lambda!265227 () Bool)

(assert (= b_lambda!265219 (or b!7021959 b_lambda!265227)))

(declare-fun bs!1867806 () Bool)

(declare-fun d!2188913 () Bool)

(assert (= bs!1867806 (and d!2188913 b!7021959)))

(assert (=> bs!1867806 (= (dynLambda!27248 lambda!411691 (h!74072 (exprs!6898 (mapPost2!249 z1!570 lambda!411692 lt!2512290)))) (validRegex!8921 (h!74072 (exprs!6898 (mapPost2!249 z1!570 lambda!411692 lt!2512290)))))))

(declare-fun m!7724026 () Bool)

(assert (=> bs!1867806 m!7724026))

(assert (=> b!7022013 d!2188913))

(declare-fun b_lambda!265229 () Bool)

(assert (= b_lambda!265221 (or b!7021959 b_lambda!265229)))

(declare-fun bs!1867807 () Bool)

(declare-fun d!2188915 () Bool)

(assert (= bs!1867807 (and d!2188915 b!7021959)))

(declare-datatypes ((Unit!161472 0))(
  ( (Unit!161473) )
))
(declare-fun lt!2512310 () Unit!161472)

(declare-fun lemmaConcatPreservesForall!730 (List!67748 List!67748 Int) Unit!161472)

(assert (=> bs!1867807 (= lt!2512310 (lemmaConcatPreservesForall!730 (exprs!6898 lt!2512309) (exprs!6898 ct2!306) lambda!411691))))

(declare-fun ++!15438 (List!67748 List!67748) List!67748)

(assert (=> bs!1867807 (= (dynLambda!27250 lambda!411692 lt!2512309) (Context!12797 (++!15438 (exprs!6898 lt!2512309) (exprs!6898 ct2!306))))))

(declare-fun m!7724034 () Bool)

(assert (=> bs!1867807 m!7724034))

(declare-fun m!7724036 () Bool)

(assert (=> bs!1867807 m!7724036))

(assert (=> d!2188907 d!2188915))

(push 1)

(assert (not b_lambda!265229))

(assert (not bs!1867807))

(assert (not d!2188897))

(assert (not b!7022032))

(assert (not d!2188899))

(assert (not d!2188883))

(assert (not d!2188903))

(assert (not bs!1867805))

(assert (not b!7022008))

(assert (not d!2188895))

(assert (not b!7022003))

(assert tp_is_empty!44029)

(assert (not setNonEmpty!48773))

(assert (not d!2188889))

(assert (not d!2188907))

(assert (not b!7022033))

(assert (not b_lambda!265223))

(assert (not b_lambda!265227))

(assert (not d!2188891))

(assert (not b!7022009))

(assert (not b!7022040))

(assert (not b!7022027))

(assert (not d!2188887))

(assert (not bs!1867806))

(assert (not b_lambda!265225))

(assert (not b!7022014))

(assert (not bs!1867804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

