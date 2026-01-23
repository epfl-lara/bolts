; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683466 () Bool)

(assert start!683466)

(declare-fun b!7052162 () Bool)

(assert (=> b!7052162 true))

(declare-fun b!7052159 () Bool)

(assert (=> b!7052159 true))

(declare-fun b!7052156 () Bool)

(declare-fun e!4239601 () Bool)

(declare-fun tp_is_empty!44329 () Bool)

(declare-fun tp!1939511 () Bool)

(assert (=> b!7052156 (= e!4239601 (and tp_is_empty!44329 tp!1939511))))

(declare-fun setIsEmpty!49724 () Bool)

(declare-fun setRes!49724 () Bool)

(assert (=> setIsEmpty!49724 setRes!49724))

(declare-datatypes ((C!35374 0))(
  ( (C!35375 (val!27389 Int)) )
))
(declare-datatypes ((Regex!17552 0))(
  ( (ElementMatch!17552 (c!1313549 C!35374)) (Concat!26397 (regOne!35616 Regex!17552) (regTwo!35616 Regex!17552)) (EmptyExpr!17552) (Star!17552 (reg!17881 Regex!17552)) (EmptyLang!17552) (Union!17552 (regOne!35617 Regex!17552) (regTwo!35617 Regex!17552)) )
))
(declare-datatypes ((List!68182 0))(
  ( (Nil!68058) (Cons!68058 (h!74506 Regex!17552) (t!381961 List!68182)) )
))
(declare-datatypes ((Context!13096 0))(
  ( (Context!13097 (exprs!7048 List!68182)) )
))
(declare-fun setElem!49724 () Context!13096)

(declare-fun e!4239602 () Bool)

(declare-fun tp!1939514 () Bool)

(declare-fun setNonEmpty!49724 () Bool)

(declare-fun inv!86740 (Context!13096) Bool)

(assert (=> setNonEmpty!49724 (= setRes!49724 (and tp!1939514 (inv!86740 setElem!49724) e!4239602))))

(declare-fun z1!570 () (Set Context!13096))

(declare-fun setRest!49724 () (Set Context!13096))

(assert (=> setNonEmpty!49724 (= z1!570 (set.union (set.insert setElem!49724 (as set.empty (Set Context!13096))) setRest!49724))))

(declare-fun b!7052157 () Bool)

(declare-fun e!4239604 () Bool)

(declare-fun tp!1939513 () Bool)

(assert (=> b!7052157 (= e!4239604 tp!1939513)))

(declare-fun b!7052158 () Bool)

(declare-fun res!2879043 () Bool)

(declare-fun e!4239599 () Bool)

(assert (=> b!7052158 (=> (not res!2879043) (not e!4239599))))

(declare-datatypes ((List!68183 0))(
  ( (Nil!68059) (Cons!68059 (h!74507 C!35374) (t!381962 List!68183)) )
))
(declare-fun s!7408 () List!68183)

(assert (=> b!7052158 (= res!2879043 (is-Cons!68059 s!7408))))

(declare-fun e!4239600 () Bool)

(declare-fun e!4239603 () Bool)

(assert (=> b!7052159 (= e!4239600 e!4239603)))

(declare-fun res!2879047 () Bool)

(assert (=> b!7052159 (=> res!2879047 e!4239603)))

(declare-fun lt!2530045 () Context!13096)

(declare-fun lt!2530046 () Context!13096)

(declare-fun lt!2530048 () Context!13096)

(assert (=> b!7052159 (= res!2879047 (or (not (= lt!2530045 lt!2530046)) (not (set.member lt!2530048 z1!570))))))

(declare-fun ct2!306 () Context!13096)

(declare-fun ++!15635 (List!68182 List!68182) List!68182)

(assert (=> b!7052159 (= lt!2530045 (Context!13097 (++!15635 (exprs!7048 lt!2530048) (exprs!7048 ct2!306))))))

(declare-fun lambda!419310 () Int)

(declare-datatypes ((Unit!161776 0))(
  ( (Unit!161777) )
))
(declare-fun lt!2530047 () Unit!161776)

(declare-fun lemmaConcatPreservesForall!863 (List!68182 List!68182 Int) Unit!161776)

(assert (=> b!7052159 (= lt!2530047 (lemmaConcatPreservesForall!863 (exprs!7048 lt!2530048) (exprs!7048 ct2!306) lambda!419310))))

(declare-fun lambda!419309 () Int)

(declare-fun mapPost2!381 ((Set Context!13096) Int Context!13096) Context!13096)

(assert (=> b!7052159 (= lt!2530048 (mapPost2!381 z1!570 lambda!419309 lt!2530046))))

(declare-fun res!2879044 () Bool)

(assert (=> start!683466 (=> (not res!2879044) (not e!4239599))))

(declare-fun lt!2530051 () (Set Context!13096))

(declare-fun matchZipper!3092 ((Set Context!13096) List!68183) Bool)

(assert (=> start!683466 (= res!2879044 (matchZipper!3092 lt!2530051 s!7408))))

(declare-fun appendTo!673 ((Set Context!13096) Context!13096) (Set Context!13096))

(assert (=> start!683466 (= lt!2530051 (appendTo!673 z1!570 ct2!306))))

(assert (=> start!683466 e!4239599))

(declare-fun condSetEmpty!49724 () Bool)

(assert (=> start!683466 (= condSetEmpty!49724 (= z1!570 (as set.empty (Set Context!13096))))))

(assert (=> start!683466 setRes!49724))

(assert (=> start!683466 (and (inv!86740 ct2!306) e!4239604)))

(assert (=> start!683466 e!4239601))

(declare-fun b!7052160 () Bool)

(declare-fun e!4239598 () Bool)

(assert (=> b!7052160 (= e!4239598 (inv!86740 lt!2530045))))

(declare-fun lt!2530053 () Unit!161776)

(assert (=> b!7052160 (= lt!2530053 (lemmaConcatPreservesForall!863 (exprs!7048 lt!2530048) (exprs!7048 ct2!306) lambda!419310))))

(declare-fun b!7052161 () Bool)

(assert (=> b!7052161 (= e!4239603 e!4239598)))

(declare-fun res!2879048 () Bool)

(assert (=> b!7052161 (=> res!2879048 e!4239598)))

(declare-fun lt!2530054 () (Set Context!13096))

(assert (=> b!7052161 (= res!2879048 (not (= (set.insert lt!2530045 (as set.empty (Set Context!13096))) lt!2530054)))))

(declare-fun lt!2530049 () Unit!161776)

(assert (=> b!7052161 (= lt!2530049 (lemmaConcatPreservesForall!863 (exprs!7048 lt!2530048) (exprs!7048 ct2!306) lambda!419310))))

(assert (=> b!7052162 (= e!4239599 (not e!4239600))))

(declare-fun res!2879045 () Bool)

(assert (=> b!7052162 (=> res!2879045 e!4239600)))

(assert (=> b!7052162 (= res!2879045 (not (matchZipper!3092 lt!2530054 s!7408)))))

(assert (=> b!7052162 (= lt!2530054 (set.insert lt!2530046 (as set.empty (Set Context!13096))))))

(declare-fun lambda!419308 () Int)

(declare-fun getWitness!1603 ((Set Context!13096) Int) Context!13096)

(assert (=> b!7052162 (= lt!2530046 (getWitness!1603 lt!2530051 lambda!419308))))

(declare-datatypes ((List!68184 0))(
  ( (Nil!68060) (Cons!68060 (h!74508 Context!13096) (t!381963 List!68184)) )
))
(declare-fun lt!2530052 () List!68184)

(declare-fun exists!3529 (List!68184 Int) Bool)

(assert (=> b!7052162 (exists!3529 lt!2530052 lambda!419308)))

(declare-fun lt!2530050 () Unit!161776)

(declare-fun lemmaZipperMatchesExistsMatchingContext!473 (List!68184 List!68183) Unit!161776)

(assert (=> b!7052162 (= lt!2530050 (lemmaZipperMatchesExistsMatchingContext!473 lt!2530052 s!7408))))

(declare-fun toList!10893 ((Set Context!13096)) List!68184)

(assert (=> b!7052162 (= lt!2530052 (toList!10893 lt!2530051))))

(declare-fun b!7052163 () Bool)

(declare-fun res!2879046 () Bool)

(assert (=> b!7052163 (=> res!2879046 e!4239600)))

(assert (=> b!7052163 (= res!2879046 (not (set.member lt!2530046 lt!2530051)))))

(declare-fun b!7052164 () Bool)

(declare-fun tp!1939512 () Bool)

(assert (=> b!7052164 (= e!4239602 tp!1939512)))

(assert (= (and start!683466 res!2879044) b!7052158))

(assert (= (and b!7052158 res!2879043) b!7052162))

(assert (= (and b!7052162 (not res!2879045)) b!7052163))

(assert (= (and b!7052163 (not res!2879046)) b!7052159))

(assert (= (and b!7052159 (not res!2879047)) b!7052161))

(assert (= (and b!7052161 (not res!2879048)) b!7052160))

(assert (= (and start!683466 condSetEmpty!49724) setIsEmpty!49724))

(assert (= (and start!683466 (not condSetEmpty!49724)) setNonEmpty!49724))

(assert (= setNonEmpty!49724 b!7052164))

(assert (= start!683466 b!7052157))

(assert (= (and start!683466 (is-Cons!68059 s!7408)) b!7052156))

(declare-fun m!7768766 () Bool)

(assert (=> start!683466 m!7768766))

(declare-fun m!7768768 () Bool)

(assert (=> start!683466 m!7768768))

(declare-fun m!7768770 () Bool)

(assert (=> start!683466 m!7768770))

(declare-fun m!7768772 () Bool)

(assert (=> b!7052163 m!7768772))

(declare-fun m!7768774 () Bool)

(assert (=> b!7052159 m!7768774))

(declare-fun m!7768776 () Bool)

(assert (=> b!7052159 m!7768776))

(declare-fun m!7768778 () Bool)

(assert (=> b!7052159 m!7768778))

(declare-fun m!7768780 () Bool)

(assert (=> b!7052159 m!7768780))

(declare-fun m!7768782 () Bool)

(assert (=> setNonEmpty!49724 m!7768782))

(declare-fun m!7768784 () Bool)

(assert (=> b!7052162 m!7768784))

(declare-fun m!7768786 () Bool)

(assert (=> b!7052162 m!7768786))

(declare-fun m!7768788 () Bool)

(assert (=> b!7052162 m!7768788))

(declare-fun m!7768790 () Bool)

(assert (=> b!7052162 m!7768790))

(declare-fun m!7768792 () Bool)

(assert (=> b!7052162 m!7768792))

(declare-fun m!7768794 () Bool)

(assert (=> b!7052162 m!7768794))

(declare-fun m!7768796 () Bool)

(assert (=> b!7052161 m!7768796))

(assert (=> b!7052161 m!7768778))

(declare-fun m!7768798 () Bool)

(assert (=> b!7052160 m!7768798))

(assert (=> b!7052160 m!7768778))

(push 1)

(assert (not setNonEmpty!49724))

(assert (not b!7052160))

(assert (not start!683466))

(assert (not b!7052157))

(assert (not b!7052161))

(assert (not b!7052164))

(assert tp_is_empty!44329)

(assert (not b!7052162))

(assert (not b!7052156))

(assert (not b!7052159))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2203604 () Bool)

(declare-fun forall!16487 (List!68182 Int) Bool)

(assert (=> d!2203604 (forall!16487 (++!15635 (exprs!7048 lt!2530048) (exprs!7048 ct2!306)) lambda!419310)))

(declare-fun lt!2530089 () Unit!161776)

(declare-fun choose!53716 (List!68182 List!68182 Int) Unit!161776)

(assert (=> d!2203604 (= lt!2530089 (choose!53716 (exprs!7048 lt!2530048) (exprs!7048 ct2!306) lambda!419310))))

(assert (=> d!2203604 (forall!16487 (exprs!7048 lt!2530048) lambda!419310)))

(assert (=> d!2203604 (= (lemmaConcatPreservesForall!863 (exprs!7048 lt!2530048) (exprs!7048 ct2!306) lambda!419310) lt!2530089)))

(declare-fun bs!1876401 () Bool)

(assert (= bs!1876401 d!2203604))

(assert (=> bs!1876401 m!7768776))

(assert (=> bs!1876401 m!7768776))

(declare-fun m!7768834 () Bool)

(assert (=> bs!1876401 m!7768834))

(declare-fun m!7768836 () Bool)

(assert (=> bs!1876401 m!7768836))

(declare-fun m!7768838 () Bool)

(assert (=> bs!1876401 m!7768838))

(assert (=> b!7052161 d!2203604))

(declare-fun bs!1876402 () Bool)

(declare-fun d!2203606 () Bool)

(assert (= bs!1876402 (and d!2203606 b!7052159)))

(declare-fun lambda!419330 () Int)

(assert (=> bs!1876402 (= lambda!419330 lambda!419310)))

(assert (=> d!2203606 (= (inv!86740 setElem!49724) (forall!16487 (exprs!7048 setElem!49724) lambda!419330))))

(declare-fun bs!1876403 () Bool)

(assert (= bs!1876403 d!2203606))

(declare-fun m!7768840 () Bool)

(assert (=> bs!1876403 m!7768840))

(assert (=> setNonEmpty!49724 d!2203606))

(declare-fun d!2203608 () Bool)

(declare-fun c!1313559 () Bool)

(declare-fun isEmpty!39697 (List!68183) Bool)

(assert (=> d!2203608 (= c!1313559 (isEmpty!39697 s!7408))))

(declare-fun e!4239628 () Bool)

(assert (=> d!2203608 (= (matchZipper!3092 lt!2530051 s!7408) e!4239628)))

(declare-fun b!7052204 () Bool)

(declare-fun nullableZipper!2642 ((Set Context!13096)) Bool)

(assert (=> b!7052204 (= e!4239628 (nullableZipper!2642 lt!2530051))))

(declare-fun b!7052205 () Bool)

(declare-fun derivationStepZipper!3002 ((Set Context!13096) C!35374) (Set Context!13096))

(declare-fun head!14342 (List!68183) C!35374)

(declare-fun tail!13671 (List!68183) List!68183)

(assert (=> b!7052205 (= e!4239628 (matchZipper!3092 (derivationStepZipper!3002 lt!2530051 (head!14342 s!7408)) (tail!13671 s!7408)))))

(assert (= (and d!2203608 c!1313559) b!7052204))

(assert (= (and d!2203608 (not c!1313559)) b!7052205))

(declare-fun m!7768842 () Bool)

(assert (=> d!2203608 m!7768842))

(declare-fun m!7768844 () Bool)

(assert (=> b!7052204 m!7768844))

(declare-fun m!7768846 () Bool)

(assert (=> b!7052205 m!7768846))

(assert (=> b!7052205 m!7768846))

(declare-fun m!7768848 () Bool)

(assert (=> b!7052205 m!7768848))

(declare-fun m!7768850 () Bool)

(assert (=> b!7052205 m!7768850))

(assert (=> b!7052205 m!7768848))

(assert (=> b!7052205 m!7768850))

(declare-fun m!7768852 () Bool)

(assert (=> b!7052205 m!7768852))

(assert (=> start!683466 d!2203608))

(declare-fun bs!1876406 () Bool)

(declare-fun d!2203612 () Bool)

(assert (= bs!1876406 (and d!2203612 b!7052159)))

(declare-fun lambda!419338 () Int)

(assert (=> bs!1876406 (= lambda!419338 lambda!419309)))

(assert (=> d!2203612 true))

(declare-fun map!15868 ((Set Context!13096) Int) (Set Context!13096))

(assert (=> d!2203612 (= (appendTo!673 z1!570 ct2!306) (map!15868 z1!570 lambda!419338))))

(declare-fun bs!1876407 () Bool)

(assert (= bs!1876407 d!2203612))

(declare-fun m!7768856 () Bool)

(assert (=> bs!1876407 m!7768856))

(assert (=> start!683466 d!2203612))

(declare-fun bs!1876408 () Bool)

(declare-fun d!2203616 () Bool)

(assert (= bs!1876408 (and d!2203616 b!7052159)))

(declare-fun lambda!419339 () Int)

(assert (=> bs!1876408 (= lambda!419339 lambda!419310)))

(declare-fun bs!1876409 () Bool)

(assert (= bs!1876409 (and d!2203616 d!2203606)))

(assert (=> bs!1876409 (= lambda!419339 lambda!419330)))

(assert (=> d!2203616 (= (inv!86740 ct2!306) (forall!16487 (exprs!7048 ct2!306) lambda!419339))))

(declare-fun bs!1876410 () Bool)

(assert (= bs!1876410 d!2203616))

(declare-fun m!7768858 () Bool)

(assert (=> bs!1876410 m!7768858))

(assert (=> start!683466 d!2203616))

(declare-fun d!2203618 () Bool)

(declare-fun c!1313561 () Bool)

(assert (=> d!2203618 (= c!1313561 (isEmpty!39697 s!7408))))

(declare-fun e!4239629 () Bool)

(assert (=> d!2203618 (= (matchZipper!3092 lt!2530054 s!7408) e!4239629)))

(declare-fun b!7052206 () Bool)

(assert (=> b!7052206 (= e!4239629 (nullableZipper!2642 lt!2530054))))

(declare-fun b!7052207 () Bool)

(assert (=> b!7052207 (= e!4239629 (matchZipper!3092 (derivationStepZipper!3002 lt!2530054 (head!14342 s!7408)) (tail!13671 s!7408)))))

(assert (= (and d!2203618 c!1313561) b!7052206))

(assert (= (and d!2203618 (not c!1313561)) b!7052207))

(assert (=> d!2203618 m!7768842))

(declare-fun m!7768860 () Bool)

(assert (=> b!7052206 m!7768860))

(assert (=> b!7052207 m!7768846))

(assert (=> b!7052207 m!7768846))

(declare-fun m!7768862 () Bool)

(assert (=> b!7052207 m!7768862))

(assert (=> b!7052207 m!7768850))

(assert (=> b!7052207 m!7768862))

(assert (=> b!7052207 m!7768850))

(declare-fun m!7768864 () Bool)

(assert (=> b!7052207 m!7768864))

(assert (=> b!7052162 d!2203618))

(declare-fun d!2203620 () Bool)

(declare-fun e!4239632 () Bool)

(assert (=> d!2203620 e!4239632))

(declare-fun res!2879071 () Bool)

(assert (=> d!2203620 (=> (not res!2879071) (not e!4239632))))

(declare-fun lt!2530094 () Context!13096)

(declare-fun dynLambda!27584 (Int Context!13096) Bool)

(assert (=> d!2203620 (= res!2879071 (dynLambda!27584 lambda!419308 lt!2530094))))

(declare-fun getWitness!1605 (List!68184 Int) Context!13096)

(assert (=> d!2203620 (= lt!2530094 (getWitness!1605 (toList!10893 lt!2530051) lambda!419308))))

(declare-fun exists!3531 ((Set Context!13096) Int) Bool)

(assert (=> d!2203620 (exists!3531 lt!2530051 lambda!419308)))

(assert (=> d!2203620 (= (getWitness!1603 lt!2530051 lambda!419308) lt!2530094)))

(declare-fun b!7052210 () Bool)

(assert (=> b!7052210 (= e!4239632 (set.member lt!2530094 lt!2530051))))

(assert (= (and d!2203620 res!2879071) b!7052210))

(declare-fun b_lambda!268375 () Bool)

(assert (=> (not b_lambda!268375) (not d!2203620)))

(declare-fun m!7768866 () Bool)

(assert (=> d!2203620 m!7768866))

(assert (=> d!2203620 m!7768788))

(assert (=> d!2203620 m!7768788))

(declare-fun m!7768868 () Bool)

(assert (=> d!2203620 m!7768868))

(declare-fun m!7768870 () Bool)

(assert (=> d!2203620 m!7768870))

(declare-fun m!7768872 () Bool)

(assert (=> b!7052210 m!7768872))

(assert (=> b!7052162 d!2203620))

(declare-fun bs!1876411 () Bool)

(declare-fun d!2203622 () Bool)

(assert (= bs!1876411 (and d!2203622 b!7052162)))

(declare-fun lambda!419342 () Int)

(assert (=> bs!1876411 (not (= lambda!419342 lambda!419308))))

(assert (=> d!2203622 true))

(declare-fun order!28281 () Int)

(declare-fun dynLambda!27585 (Int Int) Int)

(assert (=> d!2203622 (< (dynLambda!27585 order!28281 lambda!419308) (dynLambda!27585 order!28281 lambda!419342))))

(declare-fun forall!16488 (List!68184 Int) Bool)

(assert (=> d!2203622 (= (exists!3529 lt!2530052 lambda!419308) (not (forall!16488 lt!2530052 lambda!419342)))))

(declare-fun bs!1876412 () Bool)

(assert (= bs!1876412 d!2203622))

(declare-fun m!7768874 () Bool)

(assert (=> bs!1876412 m!7768874))

(assert (=> b!7052162 d!2203622))

(declare-fun d!2203624 () Bool)

(declare-fun e!4239639 () Bool)

(assert (=> d!2203624 e!4239639))

(declare-fun res!2879078 () Bool)

(assert (=> d!2203624 (=> (not res!2879078) (not e!4239639))))

(declare-fun lt!2530099 () List!68184)

(declare-fun noDuplicate!2677 (List!68184) Bool)

(assert (=> d!2203624 (= res!2879078 (noDuplicate!2677 lt!2530099))))

(declare-fun choose!53717 ((Set Context!13096)) List!68184)

(assert (=> d!2203624 (= lt!2530099 (choose!53717 lt!2530051))))

(assert (=> d!2203624 (= (toList!10893 lt!2530051) lt!2530099)))

(declare-fun b!7052223 () Bool)

(declare-fun content!13658 (List!68184) (Set Context!13096))

(assert (=> b!7052223 (= e!4239639 (= (content!13658 lt!2530099) lt!2530051))))

(assert (= (and d!2203624 res!2879078) b!7052223))

(declare-fun m!7768876 () Bool)

(assert (=> d!2203624 m!7768876))

(declare-fun m!7768878 () Bool)

(assert (=> d!2203624 m!7768878))

(declare-fun m!7768880 () Bool)

(assert (=> b!7052223 m!7768880))

(assert (=> b!7052162 d!2203624))

(declare-fun bs!1876413 () Bool)

(declare-fun d!2203626 () Bool)

(assert (= bs!1876413 (and d!2203626 b!7052162)))

(declare-fun lambda!419345 () Int)

(assert (=> bs!1876413 (= lambda!419345 lambda!419308)))

(declare-fun bs!1876414 () Bool)

(assert (= bs!1876414 (and d!2203626 d!2203622)))

(assert (=> bs!1876414 (not (= lambda!419345 lambda!419342))))

(assert (=> d!2203626 true))

(assert (=> d!2203626 (exists!3529 lt!2530052 lambda!419345)))

(declare-fun lt!2530103 () Unit!161776)

(declare-fun choose!53718 (List!68184 List!68183) Unit!161776)

(assert (=> d!2203626 (= lt!2530103 (choose!53718 lt!2530052 s!7408))))

(assert (=> d!2203626 (matchZipper!3092 (content!13658 lt!2530052) s!7408)))

(assert (=> d!2203626 (= (lemmaZipperMatchesExistsMatchingContext!473 lt!2530052 s!7408) lt!2530103)))

(declare-fun bs!1876415 () Bool)

(assert (= bs!1876415 d!2203626))

(declare-fun m!7768896 () Bool)

(assert (=> bs!1876415 m!7768896))

(declare-fun m!7768898 () Bool)

(assert (=> bs!1876415 m!7768898))

(declare-fun m!7768900 () Bool)

(assert (=> bs!1876415 m!7768900))

(assert (=> bs!1876415 m!7768900))

(declare-fun m!7768902 () Bool)

(assert (=> bs!1876415 m!7768902))

(assert (=> b!7052162 d!2203626))

(declare-fun e!4239647 () Bool)

(declare-fun b!7052239 () Bool)

(declare-fun lt!2530109 () List!68182)

(assert (=> b!7052239 (= e!4239647 (or (not (= (exprs!7048 ct2!306) Nil!68058)) (= lt!2530109 (exprs!7048 lt!2530048))))))

(declare-fun b!7052238 () Bool)

(declare-fun res!2879085 () Bool)

(assert (=> b!7052238 (=> (not res!2879085) (not e!4239647))))

(declare-fun size!41137 (List!68182) Int)

(assert (=> b!7052238 (= res!2879085 (= (size!41137 lt!2530109) (+ (size!41137 (exprs!7048 lt!2530048)) (size!41137 (exprs!7048 ct2!306)))))))

(declare-fun b!7052237 () Bool)

(declare-fun e!4239646 () List!68182)

(assert (=> b!7052237 (= e!4239646 (Cons!68058 (h!74506 (exprs!7048 lt!2530048)) (++!15635 (t!381961 (exprs!7048 lt!2530048)) (exprs!7048 ct2!306))))))

(declare-fun d!2203630 () Bool)

(assert (=> d!2203630 e!4239647))

(declare-fun res!2879086 () Bool)

(assert (=> d!2203630 (=> (not res!2879086) (not e!4239647))))

(declare-fun content!13659 (List!68182) (Set Regex!17552))

(assert (=> d!2203630 (= res!2879086 (= (content!13659 lt!2530109) (set.union (content!13659 (exprs!7048 lt!2530048)) (content!13659 (exprs!7048 ct2!306)))))))

(assert (=> d!2203630 (= lt!2530109 e!4239646)))

(declare-fun c!1313569 () Bool)

(assert (=> d!2203630 (= c!1313569 (is-Nil!68058 (exprs!7048 lt!2530048)))))

(assert (=> d!2203630 (= (++!15635 (exprs!7048 lt!2530048) (exprs!7048 ct2!306)) lt!2530109)))

(declare-fun b!7052236 () Bool)

(assert (=> b!7052236 (= e!4239646 (exprs!7048 ct2!306))))

(assert (= (and d!2203630 c!1313569) b!7052236))

(assert (= (and d!2203630 (not c!1313569)) b!7052237))

(assert (= (and d!2203630 res!2879086) b!7052238))

(assert (= (and b!7052238 res!2879085) b!7052239))

(declare-fun m!7768910 () Bool)

(assert (=> b!7052238 m!7768910))

(declare-fun m!7768912 () Bool)

(assert (=> b!7052238 m!7768912))

(declare-fun m!7768914 () Bool)

(assert (=> b!7052238 m!7768914))

(declare-fun m!7768916 () Bool)

(assert (=> b!7052237 m!7768916))

(declare-fun m!7768918 () Bool)

(assert (=> d!2203630 m!7768918))

(declare-fun m!7768920 () Bool)

(assert (=> d!2203630 m!7768920))

(declare-fun m!7768922 () Bool)

(assert (=> d!2203630 m!7768922))

(assert (=> b!7052159 d!2203630))

(assert (=> b!7052159 d!2203604))

(declare-fun d!2203634 () Bool)

(declare-fun e!4239652 () Bool)

(assert (=> d!2203634 e!4239652))

(declare-fun res!2879091 () Bool)

(assert (=> d!2203634 (=> (not res!2879091) (not e!4239652))))

(declare-fun lt!2530114 () Context!13096)

(declare-fun dynLambda!27586 (Int Context!13096) Context!13096)

(assert (=> d!2203634 (= res!2879091 (= lt!2530046 (dynLambda!27586 lambda!419309 lt!2530114)))))

(declare-fun choose!53719 ((Set Context!13096) Int Context!13096) Context!13096)

(assert (=> d!2203634 (= lt!2530114 (choose!53719 z1!570 lambda!419309 lt!2530046))))

(assert (=> d!2203634 (set.member lt!2530046 (map!15868 z1!570 lambda!419309))))

(assert (=> d!2203634 (= (mapPost2!381 z1!570 lambda!419309 lt!2530046) lt!2530114)))

(declare-fun b!7052246 () Bool)

(assert (=> b!7052246 (= e!4239652 (set.member lt!2530114 z1!570))))

(assert (= (and d!2203634 res!2879091) b!7052246))

(declare-fun b_lambda!268377 () Bool)

(assert (=> (not b_lambda!268377) (not d!2203634)))

(declare-fun m!7768924 () Bool)

(assert (=> d!2203634 m!7768924))

(declare-fun m!7768926 () Bool)

(assert (=> d!2203634 m!7768926))

(declare-fun m!7768928 () Bool)

(assert (=> d!2203634 m!7768928))

(declare-fun m!7768930 () Bool)

(assert (=> d!2203634 m!7768930))

(declare-fun m!7768932 () Bool)

(assert (=> b!7052246 m!7768932))

(assert (=> b!7052159 d!2203634))

(declare-fun bs!1876417 () Bool)

(declare-fun d!2203636 () Bool)

(assert (= bs!1876417 (and d!2203636 b!7052159)))

(declare-fun lambda!419346 () Int)

(assert (=> bs!1876417 (= lambda!419346 lambda!419310)))

(declare-fun bs!1876418 () Bool)

(assert (= bs!1876418 (and d!2203636 d!2203606)))

(assert (=> bs!1876418 (= lambda!419346 lambda!419330)))

(declare-fun bs!1876419 () Bool)

(assert (= bs!1876419 (and d!2203636 d!2203616)))

(assert (=> bs!1876419 (= lambda!419346 lambda!419339)))

(assert (=> d!2203636 (= (inv!86740 lt!2530045) (forall!16487 (exprs!7048 lt!2530045) lambda!419346))))

(declare-fun bs!1876420 () Bool)

(assert (= bs!1876420 d!2203636))

(declare-fun m!7768934 () Bool)

(assert (=> bs!1876420 m!7768934))

(assert (=> b!7052160 d!2203636))

(assert (=> b!7052160 d!2203604))

(declare-fun condSetEmpty!49730 () Bool)

(assert (=> setNonEmpty!49724 (= condSetEmpty!49730 (= setRest!49724 (as set.empty (Set Context!13096))))))

(declare-fun setRes!49730 () Bool)

(assert (=> setNonEmpty!49724 (= tp!1939514 setRes!49730)))

(declare-fun setIsEmpty!49730 () Bool)

(assert (=> setIsEmpty!49730 setRes!49730))

(declare-fun e!4239656 () Bool)

(declare-fun tp!1939532 () Bool)

(declare-fun setElem!49730 () Context!13096)

(declare-fun setNonEmpty!49730 () Bool)

(assert (=> setNonEmpty!49730 (= setRes!49730 (and tp!1939532 (inv!86740 setElem!49730) e!4239656))))

(declare-fun setRest!49730 () (Set Context!13096))

(assert (=> setNonEmpty!49730 (= setRest!49724 (set.union (set.insert setElem!49730 (as set.empty (Set Context!13096))) setRest!49730))))

(declare-fun b!7052252 () Bool)

(declare-fun tp!1939531 () Bool)

(assert (=> b!7052252 (= e!4239656 tp!1939531)))

(assert (= (and setNonEmpty!49724 condSetEmpty!49730) setIsEmpty!49730))

(assert (= (and setNonEmpty!49724 (not condSetEmpty!49730)) setNonEmpty!49730))

(assert (= setNonEmpty!49730 b!7052252))

(declare-fun m!7768946 () Bool)

(assert (=> setNonEmpty!49730 m!7768946))

(declare-fun b!7052257 () Bool)

(declare-fun e!4239659 () Bool)

(declare-fun tp!1939537 () Bool)

(declare-fun tp!1939538 () Bool)

(assert (=> b!7052257 (= e!4239659 (and tp!1939537 tp!1939538))))

(assert (=> b!7052157 (= tp!1939513 e!4239659)))

(assert (= (and b!7052157 (is-Cons!68058 (exprs!7048 ct2!306))) b!7052257))

(declare-fun b!7052258 () Bool)

(declare-fun e!4239660 () Bool)

(declare-fun tp!1939539 () Bool)

(declare-fun tp!1939540 () Bool)

(assert (=> b!7052258 (= e!4239660 (and tp!1939539 tp!1939540))))

(assert (=> b!7052164 (= tp!1939512 e!4239660)))

(assert (= (and b!7052164 (is-Cons!68058 (exprs!7048 setElem!49724))) b!7052258))

(declare-fun b!7052263 () Bool)

(declare-fun e!4239663 () Bool)

(declare-fun tp!1939543 () Bool)

(assert (=> b!7052263 (= e!4239663 (and tp_is_empty!44329 tp!1939543))))

(assert (=> b!7052156 (= tp!1939511 e!4239663)))

(assert (= (and b!7052156 (is-Cons!68059 (t!381962 s!7408))) b!7052263))

(declare-fun b_lambda!268381 () Bool)

(assert (= b_lambda!268377 (or b!7052159 b_lambda!268381)))

(declare-fun bs!1876421 () Bool)

(declare-fun d!2203640 () Bool)

(assert (= bs!1876421 (and d!2203640 b!7052159)))

(declare-fun lt!2530116 () Unit!161776)

(assert (=> bs!1876421 (= lt!2530116 (lemmaConcatPreservesForall!863 (exprs!7048 lt!2530114) (exprs!7048 ct2!306) lambda!419310))))

(assert (=> bs!1876421 (= (dynLambda!27586 lambda!419309 lt!2530114) (Context!13097 (++!15635 (exprs!7048 lt!2530114) (exprs!7048 ct2!306))))))

(declare-fun m!7768948 () Bool)

(assert (=> bs!1876421 m!7768948))

(declare-fun m!7768950 () Bool)

(assert (=> bs!1876421 m!7768950))

(assert (=> d!2203634 d!2203640))

(declare-fun b_lambda!268383 () Bool)

(assert (= b_lambda!268375 (or b!7052162 b_lambda!268383)))

(declare-fun bs!1876422 () Bool)

(declare-fun d!2203642 () Bool)

(assert (= bs!1876422 (and d!2203642 b!7052162)))

(assert (=> bs!1876422 (= (dynLambda!27584 lambda!419308 lt!2530094) (matchZipper!3092 (set.insert lt!2530094 (as set.empty (Set Context!13096))) s!7408))))

(declare-fun m!7768952 () Bool)

(assert (=> bs!1876422 m!7768952))

(assert (=> bs!1876422 m!7768952))

(declare-fun m!7768954 () Bool)

(assert (=> bs!1876422 m!7768954))

(assert (=> d!2203620 d!2203642))

(push 1)

(assert (not b!7052237))

(assert (not d!2203612))

(assert (not d!2203630))

(assert (not d!2203636))

(assert (not d!2203620))

(assert (not b!7052206))

(assert (not b!7052238))

(assert (not d!2203624))

(assert (not bs!1876422))

(assert (not setNonEmpty!49730))

(assert (not b_lambda!268383))

(assert (not b!7052223))

(assert (not b!7052252))

(assert (not d!2203618))

(assert (not d!2203608))

(assert (not b!7052204))

(assert (not b!7052258))

(assert (not b!7052257))

(assert (not d!2203616))

(assert (not d!2203626))

(assert (not b_lambda!268381))

(assert tp_is_empty!44329)

(assert (not d!2203634))

(assert (not bs!1876421))

(assert (not b!7052205))

(assert (not d!2203604))

(assert (not b!7052263))

(assert (not d!2203622))

(assert (not d!2203606))

(assert (not b!7052207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

