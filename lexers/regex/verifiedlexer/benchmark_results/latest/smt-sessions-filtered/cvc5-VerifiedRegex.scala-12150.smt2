; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683338 () Bool)

(assert start!683338)

(declare-fun b!7051710 () Bool)

(assert (=> b!7051710 true))

(declare-fun e!4239328 () Bool)

(declare-fun e!4239324 () Bool)

(assert (=> b!7051710 (= e!4239328 (not e!4239324))))

(declare-fun res!2878876 () Bool)

(assert (=> b!7051710 (=> res!2878876 e!4239324)))

(declare-datatypes ((C!35362 0))(
  ( (C!35363 (val!27383 Int)) )
))
(declare-datatypes ((Regex!17546 0))(
  ( (ElementMatch!17546 (c!1313449 C!35362)) (Concat!26391 (regOne!35604 Regex!17546) (regTwo!35604 Regex!17546)) (EmptyExpr!17546) (Star!17546 (reg!17875 Regex!17546)) (EmptyLang!17546) (Union!17546 (regOne!35605 Regex!17546) (regTwo!35605 Regex!17546)) )
))
(declare-datatypes ((List!68164 0))(
  ( (Nil!68040) (Cons!68040 (h!74488 Regex!17546) (t!381943 List!68164)) )
))
(declare-datatypes ((Context!13084 0))(
  ( (Context!13085 (exprs!7042 List!68164)) )
))
(declare-fun lt!2529796 () Context!13084)

(declare-datatypes ((List!68165 0))(
  ( (Nil!68041) (Cons!68041 (h!74489 C!35362) (t!381944 List!68165)) )
))
(declare-fun s!7408 () List!68165)

(declare-fun matchZipper!3086 ((Set Context!13084) List!68165) Bool)

(assert (=> b!7051710 (= res!2878876 (not (matchZipper!3086 (set.insert lt!2529796 (as set.empty (Set Context!13084))) s!7408)))))

(declare-fun lt!2529797 () (Set Context!13084))

(declare-fun lambda!419130 () Int)

(declare-fun getWitness!1592 ((Set Context!13084) Int) Context!13084)

(assert (=> b!7051710 (= lt!2529796 (getWitness!1592 lt!2529797 lambda!419130))))

(declare-datatypes ((List!68166 0))(
  ( (Nil!68042) (Cons!68042 (h!74490 Context!13084) (t!381945 List!68166)) )
))
(declare-fun lt!2529794 () List!68166)

(declare-fun exists!3518 (List!68166 Int) Bool)

(assert (=> b!7051710 (exists!3518 lt!2529794 lambda!419130)))

(declare-datatypes ((Unit!161764 0))(
  ( (Unit!161765) )
))
(declare-fun lt!2529795 () Unit!161764)

(declare-fun lemmaZipperMatchesExistsMatchingContext!467 (List!68166 List!68165) Unit!161764)

(assert (=> b!7051710 (= lt!2529795 (lemmaZipperMatchesExistsMatchingContext!467 lt!2529794 s!7408))))

(declare-fun toList!10887 ((Set Context!13084)) List!68166)

(assert (=> b!7051710 (= lt!2529794 (toList!10887 lt!2529797))))

(declare-fun setElem!49688 () Context!13084)

(declare-fun setRes!49688 () Bool)

(declare-fun e!4239327 () Bool)

(declare-fun setNonEmpty!49688 () Bool)

(declare-fun tp!1939331 () Bool)

(declare-fun inv!86725 (Context!13084) Bool)

(assert (=> setNonEmpty!49688 (= setRes!49688 (and tp!1939331 (inv!86725 setElem!49688) e!4239327))))

(declare-fun z1!570 () (Set Context!13084))

(declare-fun setRest!49688 () (Set Context!13084))

(assert (=> setNonEmpty!49688 (= z1!570 (set.union (set.insert setElem!49688 (as set.empty (Set Context!13084))) setRest!49688))))

(declare-fun b!7051711 () Bool)

(declare-fun tp!1939333 () Bool)

(assert (=> b!7051711 (= e!4239327 tp!1939333)))

(declare-fun res!2878874 () Bool)

(assert (=> start!683338 (=> (not res!2878874) (not e!4239328))))

(assert (=> start!683338 (= res!2878874 (matchZipper!3086 lt!2529797 s!7408))))

(declare-fun ct2!306 () Context!13084)

(declare-fun appendTo!667 ((Set Context!13084) Context!13084) (Set Context!13084))

(assert (=> start!683338 (= lt!2529797 (appendTo!667 z1!570 ct2!306))))

(assert (=> start!683338 e!4239328))

(declare-fun c!142 () Context!13084)

(declare-fun e!4239329 () Bool)

(assert (=> start!683338 (and (inv!86725 c!142) e!4239329)))

(declare-fun condSetEmpty!49688 () Bool)

(assert (=> start!683338 (= condSetEmpty!49688 (= z1!570 (as set.empty (Set Context!13084))))))

(assert (=> start!683338 setRes!49688))

(declare-fun e!4239325 () Bool)

(assert (=> start!683338 e!4239325))

(declare-fun e!4239326 () Bool)

(assert (=> start!683338 (and (inv!86725 ct2!306) e!4239326)))

(declare-fun b!7051712 () Bool)

(declare-fun tp!1939332 () Bool)

(assert (=> b!7051712 (= e!4239329 tp!1939332)))

(declare-fun b!7051713 () Bool)

(declare-fun tp_is_empty!44317 () Bool)

(declare-fun tp!1939329 () Bool)

(assert (=> b!7051713 (= e!4239325 (and tp_is_empty!44317 tp!1939329))))

(declare-fun b!7051714 () Bool)

(declare-fun res!2878875 () Bool)

(assert (=> b!7051714 (=> res!2878875 e!4239324)))

(assert (=> b!7051714 (= res!2878875 (not (set.member lt!2529796 lt!2529797)))))

(declare-fun b!7051715 () Bool)

(declare-fun res!2878873 () Bool)

(assert (=> b!7051715 (=> (not res!2878873) (not e!4239328))))

(assert (=> b!7051715 (= res!2878873 (is-Cons!68041 s!7408))))

(declare-fun setIsEmpty!49688 () Bool)

(assert (=> setIsEmpty!49688 setRes!49688))

(declare-fun b!7051716 () Bool)

(declare-fun ++!15629 (List!68164 List!68164) List!68164)

(assert (=> b!7051716 (= e!4239324 (inv!86725 (Context!13085 (++!15629 (exprs!7042 c!142) (exprs!7042 ct2!306)))))))

(declare-fun lt!2529793 () Unit!161764)

(declare-fun lambda!419131 () Int)

(declare-fun lemmaConcatPreservesForall!857 (List!68164 List!68164 Int) Unit!161764)

(assert (=> b!7051716 (= lt!2529793 (lemmaConcatPreservesForall!857 (exprs!7042 c!142) (exprs!7042 ct2!306) lambda!419131))))

(declare-fun b!7051717 () Bool)

(declare-fun tp!1939330 () Bool)

(assert (=> b!7051717 (= e!4239326 tp!1939330)))

(assert (= (and start!683338 res!2878874) b!7051715))

(assert (= (and b!7051715 res!2878873) b!7051710))

(assert (= (and b!7051710 (not res!2878876)) b!7051714))

(assert (= (and b!7051714 (not res!2878875)) b!7051716))

(assert (= start!683338 b!7051712))

(assert (= (and start!683338 condSetEmpty!49688) setIsEmpty!49688))

(assert (= (and start!683338 (not condSetEmpty!49688)) setNonEmpty!49688))

(assert (= setNonEmpty!49688 b!7051711))

(assert (= (and start!683338 (is-Cons!68041 s!7408)) b!7051713))

(assert (= start!683338 b!7051717))

(declare-fun m!7768066 () Bool)

(assert (=> b!7051714 m!7768066))

(declare-fun m!7768068 () Bool)

(assert (=> b!7051710 m!7768068))

(declare-fun m!7768070 () Bool)

(assert (=> b!7051710 m!7768070))

(declare-fun m!7768072 () Bool)

(assert (=> b!7051710 m!7768072))

(declare-fun m!7768074 () Bool)

(assert (=> b!7051710 m!7768074))

(assert (=> b!7051710 m!7768074))

(declare-fun m!7768076 () Bool)

(assert (=> b!7051710 m!7768076))

(declare-fun m!7768078 () Bool)

(assert (=> b!7051710 m!7768078))

(declare-fun m!7768080 () Bool)

(assert (=> start!683338 m!7768080))

(declare-fun m!7768082 () Bool)

(assert (=> start!683338 m!7768082))

(declare-fun m!7768084 () Bool)

(assert (=> start!683338 m!7768084))

(declare-fun m!7768086 () Bool)

(assert (=> start!683338 m!7768086))

(declare-fun m!7768088 () Bool)

(assert (=> setNonEmpty!49688 m!7768088))

(declare-fun m!7768090 () Bool)

(assert (=> b!7051716 m!7768090))

(declare-fun m!7768092 () Bool)

(assert (=> b!7051716 m!7768092))

(declare-fun m!7768094 () Bool)

(assert (=> b!7051716 m!7768094))

(push 1)

(assert (not b!7051710))

(assert (not start!683338))

(assert (not b!7051712))

(assert (not b!7051716))

(assert (not b!7051717))

(assert (not setNonEmpty!49688))

(assert (not b!7051713))

(assert (not b!7051711))

(assert tp_is_empty!44317)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1876275 () Bool)

(declare-fun d!2203427 () Bool)

(assert (= bs!1876275 (and d!2203427 b!7051710)))

(declare-fun lambda!419144 () Int)

(assert (=> bs!1876275 (= lambda!419144 lambda!419130)))

(assert (=> d!2203427 true))

(assert (=> d!2203427 (exists!3518 lt!2529794 lambda!419144)))

(declare-fun lt!2529818 () Unit!161764)

(declare-fun choose!53702 (List!68166 List!68165) Unit!161764)

(assert (=> d!2203427 (= lt!2529818 (choose!53702 lt!2529794 s!7408))))

(declare-fun content!13650 (List!68166) (Set Context!13084))

(assert (=> d!2203427 (matchZipper!3086 (content!13650 lt!2529794) s!7408)))

(assert (=> d!2203427 (= (lemmaZipperMatchesExistsMatchingContext!467 lt!2529794 s!7408) lt!2529818)))

(declare-fun bs!1876276 () Bool)

(assert (= bs!1876276 d!2203427))

(declare-fun m!7768132 () Bool)

(assert (=> bs!1876276 m!7768132))

(declare-fun m!7768134 () Bool)

(assert (=> bs!1876276 m!7768134))

(declare-fun m!7768136 () Bool)

(assert (=> bs!1876276 m!7768136))

(assert (=> bs!1876276 m!7768136))

(declare-fun m!7768138 () Bool)

(assert (=> bs!1876276 m!7768138))

(assert (=> b!7051710 d!2203427))

(declare-fun bs!1876278 () Bool)

(declare-fun d!2203431 () Bool)

(assert (= bs!1876278 (and d!2203431 b!7051710)))

(declare-fun lambda!419148 () Int)

(assert (=> bs!1876278 (not (= lambda!419148 lambda!419130))))

(declare-fun bs!1876279 () Bool)

(assert (= bs!1876279 (and d!2203431 d!2203427)))

(assert (=> bs!1876279 (not (= lambda!419148 lambda!419144))))

(assert (=> d!2203431 true))

(declare-fun order!28271 () Int)

(declare-fun dynLambda!27572 (Int Int) Int)

(assert (=> d!2203431 (< (dynLambda!27572 order!28271 lambda!419130) (dynLambda!27572 order!28271 lambda!419148))))

(declare-fun forall!16478 (List!68166 Int) Bool)

(assert (=> d!2203431 (= (exists!3518 lt!2529794 lambda!419130) (not (forall!16478 lt!2529794 lambda!419148)))))

(declare-fun bs!1876280 () Bool)

(assert (= bs!1876280 d!2203431))

(declare-fun m!7768140 () Bool)

(assert (=> bs!1876280 m!7768140))

(assert (=> b!7051710 d!2203431))

(declare-fun d!2203433 () Bool)

(declare-fun e!4239353 () Bool)

(assert (=> d!2203433 e!4239353))

(declare-fun res!2878894 () Bool)

(assert (=> d!2203433 (=> (not res!2878894) (not e!4239353))))

(declare-fun lt!2529821 () List!68166)

(declare-fun noDuplicate!2672 (List!68166) Bool)

(assert (=> d!2203433 (= res!2878894 (noDuplicate!2672 lt!2529821))))

(declare-fun choose!53703 ((Set Context!13084)) List!68166)

(assert (=> d!2203433 (= lt!2529821 (choose!53703 lt!2529797))))

(assert (=> d!2203433 (= (toList!10887 lt!2529797) lt!2529821)))

(declare-fun b!7051755 () Bool)

(assert (=> b!7051755 (= e!4239353 (= (content!13650 lt!2529821) lt!2529797))))

(assert (= (and d!2203433 res!2878894) b!7051755))

(declare-fun m!7768144 () Bool)

(assert (=> d!2203433 m!7768144))

(declare-fun m!7768146 () Bool)

(assert (=> d!2203433 m!7768146))

(declare-fun m!7768148 () Bool)

(assert (=> b!7051755 m!7768148))

(assert (=> b!7051710 d!2203433))

(declare-fun d!2203437 () Bool)

(declare-fun c!1313459 () Bool)

(declare-fun isEmpty!39693 (List!68165) Bool)

(assert (=> d!2203437 (= c!1313459 (isEmpty!39693 s!7408))))

(declare-fun e!4239358 () Bool)

(assert (=> d!2203437 (= (matchZipper!3086 (set.insert lt!2529796 (as set.empty (Set Context!13084))) s!7408) e!4239358)))

(declare-fun b!7051762 () Bool)

(declare-fun nullableZipper!2638 ((Set Context!13084)) Bool)

(assert (=> b!7051762 (= e!4239358 (nullableZipper!2638 (set.insert lt!2529796 (as set.empty (Set Context!13084)))))))

(declare-fun b!7051763 () Bool)

(declare-fun derivationStepZipper!2998 ((Set Context!13084) C!35362) (Set Context!13084))

(declare-fun head!14338 (List!68165) C!35362)

(declare-fun tail!13667 (List!68165) List!68165)

(assert (=> b!7051763 (= e!4239358 (matchZipper!3086 (derivationStepZipper!2998 (set.insert lt!2529796 (as set.empty (Set Context!13084))) (head!14338 s!7408)) (tail!13667 s!7408)))))

(assert (= (and d!2203437 c!1313459) b!7051762))

(assert (= (and d!2203437 (not c!1313459)) b!7051763))

(declare-fun m!7768150 () Bool)

(assert (=> d!2203437 m!7768150))

(assert (=> b!7051762 m!7768074))

(declare-fun m!7768152 () Bool)

(assert (=> b!7051762 m!7768152))

(declare-fun m!7768154 () Bool)

(assert (=> b!7051763 m!7768154))

(assert (=> b!7051763 m!7768074))

(assert (=> b!7051763 m!7768154))

(declare-fun m!7768156 () Bool)

(assert (=> b!7051763 m!7768156))

(declare-fun m!7768158 () Bool)

(assert (=> b!7051763 m!7768158))

(assert (=> b!7051763 m!7768156))

(assert (=> b!7051763 m!7768158))

(declare-fun m!7768160 () Bool)

(assert (=> b!7051763 m!7768160))

(assert (=> b!7051710 d!2203437))

(declare-fun d!2203439 () Bool)

(declare-fun e!4239362 () Bool)

(assert (=> d!2203439 e!4239362))

(declare-fun res!2878900 () Bool)

(assert (=> d!2203439 (=> (not res!2878900) (not e!4239362))))

(declare-fun lt!2529827 () Context!13084)

(declare-fun dynLambda!27573 (Int Context!13084) Bool)

(assert (=> d!2203439 (= res!2878900 (dynLambda!27573 lambda!419130 lt!2529827))))

(declare-fun getWitness!1594 (List!68166 Int) Context!13084)

(assert (=> d!2203439 (= lt!2529827 (getWitness!1594 (toList!10887 lt!2529797) lambda!419130))))

(declare-fun exists!3520 ((Set Context!13084) Int) Bool)

(assert (=> d!2203439 (exists!3520 lt!2529797 lambda!419130)))

(assert (=> d!2203439 (= (getWitness!1592 lt!2529797 lambda!419130) lt!2529827)))

(declare-fun b!7051767 () Bool)

(assert (=> b!7051767 (= e!4239362 (set.member lt!2529827 lt!2529797))))

(assert (= (and d!2203439 res!2878900) b!7051767))

(declare-fun b_lambda!268337 () Bool)

(assert (=> (not b_lambda!268337) (not d!2203439)))

(declare-fun m!7768170 () Bool)

(assert (=> d!2203439 m!7768170))

(assert (=> d!2203439 m!7768078))

(assert (=> d!2203439 m!7768078))

(declare-fun m!7768172 () Bool)

(assert (=> d!2203439 m!7768172))

(declare-fun m!7768174 () Bool)

(assert (=> d!2203439 m!7768174))

(declare-fun m!7768176 () Bool)

(assert (=> b!7051767 m!7768176))

(assert (=> b!7051710 d!2203439))

(declare-fun bs!1876282 () Bool)

(declare-fun d!2203443 () Bool)

(assert (= bs!1876282 (and d!2203443 b!7051716)))

(declare-fun lambda!419151 () Int)

(assert (=> bs!1876282 (= lambda!419151 lambda!419131)))

(declare-fun forall!16479 (List!68164 Int) Bool)

(assert (=> d!2203443 (= (inv!86725 setElem!49688) (forall!16479 (exprs!7042 setElem!49688) lambda!419151))))

(declare-fun bs!1876283 () Bool)

(assert (= bs!1876283 d!2203443))

(declare-fun m!7768178 () Bool)

(assert (=> bs!1876283 m!7768178))

(assert (=> setNonEmpty!49688 d!2203443))

(declare-fun bs!1876284 () Bool)

(declare-fun d!2203445 () Bool)

(assert (= bs!1876284 (and d!2203445 b!7051716)))

(declare-fun lambda!419152 () Int)

(assert (=> bs!1876284 (= lambda!419152 lambda!419131)))

(declare-fun bs!1876285 () Bool)

(assert (= bs!1876285 (and d!2203445 d!2203443)))

(assert (=> bs!1876285 (= lambda!419152 lambda!419151)))

(assert (=> d!2203445 (= (inv!86725 (Context!13085 (++!15629 (exprs!7042 c!142) (exprs!7042 ct2!306)))) (forall!16479 (exprs!7042 (Context!13085 (++!15629 (exprs!7042 c!142) (exprs!7042 ct2!306)))) lambda!419152))))

(declare-fun bs!1876286 () Bool)

(assert (= bs!1876286 d!2203445))

(declare-fun m!7768180 () Bool)

(assert (=> bs!1876286 m!7768180))

(assert (=> b!7051716 d!2203445))

(declare-fun lt!2529830 () List!68164)

(declare-fun b!7051783 () Bool)

(declare-fun e!4239370 () Bool)

(assert (=> b!7051783 (= e!4239370 (or (not (= (exprs!7042 ct2!306) Nil!68040)) (= lt!2529830 (exprs!7042 c!142))))))

(declare-fun d!2203447 () Bool)

(assert (=> d!2203447 e!4239370))

(declare-fun res!2878905 () Bool)

(assert (=> d!2203447 (=> (not res!2878905) (not e!4239370))))

(declare-fun content!13651 (List!68164) (Set Regex!17546))

(assert (=> d!2203447 (= res!2878905 (= (content!13651 lt!2529830) (set.union (content!13651 (exprs!7042 c!142)) (content!13651 (exprs!7042 ct2!306)))))))

(declare-fun e!4239369 () List!68164)

(assert (=> d!2203447 (= lt!2529830 e!4239369)))

(declare-fun c!1313464 () Bool)

(assert (=> d!2203447 (= c!1313464 (is-Nil!68040 (exprs!7042 c!142)))))

(assert (=> d!2203447 (= (++!15629 (exprs!7042 c!142) (exprs!7042 ct2!306)) lt!2529830)))

(declare-fun b!7051781 () Bool)

(assert (=> b!7051781 (= e!4239369 (Cons!68040 (h!74488 (exprs!7042 c!142)) (++!15629 (t!381943 (exprs!7042 c!142)) (exprs!7042 ct2!306))))))

(declare-fun b!7051782 () Bool)

(declare-fun res!2878906 () Bool)

(assert (=> b!7051782 (=> (not res!2878906) (not e!4239370))))

(declare-fun size!41134 (List!68164) Int)

(assert (=> b!7051782 (= res!2878906 (= (size!41134 lt!2529830) (+ (size!41134 (exprs!7042 c!142)) (size!41134 (exprs!7042 ct2!306)))))))

(declare-fun b!7051780 () Bool)

(assert (=> b!7051780 (= e!4239369 (exprs!7042 ct2!306))))

(assert (= (and d!2203447 c!1313464) b!7051780))

(assert (= (and d!2203447 (not c!1313464)) b!7051781))

(assert (= (and d!2203447 res!2878905) b!7051782))

(assert (= (and b!7051782 res!2878906) b!7051783))

(declare-fun m!7768182 () Bool)

(assert (=> d!2203447 m!7768182))

(declare-fun m!7768184 () Bool)

(assert (=> d!2203447 m!7768184))

(declare-fun m!7768186 () Bool)

(assert (=> d!2203447 m!7768186))

(declare-fun m!7768188 () Bool)

(assert (=> b!7051781 m!7768188))

(declare-fun m!7768190 () Bool)

(assert (=> b!7051782 m!7768190))

(declare-fun m!7768192 () Bool)

(assert (=> b!7051782 m!7768192))

(declare-fun m!7768194 () Bool)

(assert (=> b!7051782 m!7768194))

(assert (=> b!7051716 d!2203447))

(declare-fun d!2203449 () Bool)

(assert (=> d!2203449 (forall!16479 (++!15629 (exprs!7042 c!142) (exprs!7042 ct2!306)) lambda!419131)))

(declare-fun lt!2529833 () Unit!161764)

(declare-fun choose!53704 (List!68164 List!68164 Int) Unit!161764)

(assert (=> d!2203449 (= lt!2529833 (choose!53704 (exprs!7042 c!142) (exprs!7042 ct2!306) lambda!419131))))

(assert (=> d!2203449 (forall!16479 (exprs!7042 c!142) lambda!419131)))

(assert (=> d!2203449 (= (lemmaConcatPreservesForall!857 (exprs!7042 c!142) (exprs!7042 ct2!306) lambda!419131) lt!2529833)))

(declare-fun bs!1876287 () Bool)

(assert (= bs!1876287 d!2203449))

(assert (=> bs!1876287 m!7768090))

(assert (=> bs!1876287 m!7768090))

(declare-fun m!7768208 () Bool)

(assert (=> bs!1876287 m!7768208))

(declare-fun m!7768210 () Bool)

(assert (=> bs!1876287 m!7768210))

(declare-fun m!7768212 () Bool)

(assert (=> bs!1876287 m!7768212))

(assert (=> b!7051716 d!2203449))

(declare-fun d!2203453 () Bool)

(declare-fun c!1313466 () Bool)

(assert (=> d!2203453 (= c!1313466 (isEmpty!39693 s!7408))))

(declare-fun e!4239372 () Bool)

(assert (=> d!2203453 (= (matchZipper!3086 lt!2529797 s!7408) e!4239372)))

(declare-fun b!7051786 () Bool)

(assert (=> b!7051786 (= e!4239372 (nullableZipper!2638 lt!2529797))))

(declare-fun b!7051787 () Bool)

(assert (=> b!7051787 (= e!4239372 (matchZipper!3086 (derivationStepZipper!2998 lt!2529797 (head!14338 s!7408)) (tail!13667 s!7408)))))

(assert (= (and d!2203453 c!1313466) b!7051786))

(assert (= (and d!2203453 (not c!1313466)) b!7051787))

(assert (=> d!2203453 m!7768150))

(declare-fun m!7768214 () Bool)

(assert (=> b!7051786 m!7768214))

(assert (=> b!7051787 m!7768154))

(assert (=> b!7051787 m!7768154))

(declare-fun m!7768216 () Bool)

(assert (=> b!7051787 m!7768216))

(assert (=> b!7051787 m!7768158))

(assert (=> b!7051787 m!7768216))

(assert (=> b!7051787 m!7768158))

(declare-fun m!7768218 () Bool)

(assert (=> b!7051787 m!7768218))

(assert (=> start!683338 d!2203453))

(declare-fun d!2203455 () Bool)

(assert (=> d!2203455 true))

(declare-fun lambda!419157 () Int)

(declare-fun map!15862 ((Set Context!13084) Int) (Set Context!13084))

(assert (=> d!2203455 (= (appendTo!667 z1!570 ct2!306) (map!15862 z1!570 lambda!419157))))

(declare-fun bs!1876288 () Bool)

(assert (= bs!1876288 d!2203455))

(declare-fun m!7768220 () Bool)

(assert (=> bs!1876288 m!7768220))

(assert (=> start!683338 d!2203455))

(declare-fun bs!1876289 () Bool)

(declare-fun d!2203457 () Bool)

(assert (= bs!1876289 (and d!2203457 b!7051716)))

(declare-fun lambda!419158 () Int)

(assert (=> bs!1876289 (= lambda!419158 lambda!419131)))

(declare-fun bs!1876290 () Bool)

(assert (= bs!1876290 (and d!2203457 d!2203443)))

(assert (=> bs!1876290 (= lambda!419158 lambda!419151)))

(declare-fun bs!1876291 () Bool)

(assert (= bs!1876291 (and d!2203457 d!2203445)))

(assert (=> bs!1876291 (= lambda!419158 lambda!419152)))

(assert (=> d!2203457 (= (inv!86725 c!142) (forall!16479 (exprs!7042 c!142) lambda!419158))))

(declare-fun bs!1876292 () Bool)

(assert (= bs!1876292 d!2203457))

(declare-fun m!7768222 () Bool)

(assert (=> bs!1876292 m!7768222))

(assert (=> start!683338 d!2203457))

(declare-fun bs!1876293 () Bool)

(declare-fun d!2203459 () Bool)

(assert (= bs!1876293 (and d!2203459 b!7051716)))

(declare-fun lambda!419159 () Int)

(assert (=> bs!1876293 (= lambda!419159 lambda!419131)))

(declare-fun bs!1876294 () Bool)

(assert (= bs!1876294 (and d!2203459 d!2203443)))

(assert (=> bs!1876294 (= lambda!419159 lambda!419151)))

(declare-fun bs!1876295 () Bool)

(assert (= bs!1876295 (and d!2203459 d!2203445)))

(assert (=> bs!1876295 (= lambda!419159 lambda!419152)))

(declare-fun bs!1876296 () Bool)

(assert (= bs!1876296 (and d!2203459 d!2203457)))

(assert (=> bs!1876296 (= lambda!419159 lambda!419158)))

(assert (=> d!2203459 (= (inv!86725 ct2!306) (forall!16479 (exprs!7042 ct2!306) lambda!419159))))

(declare-fun bs!1876297 () Bool)

(assert (= bs!1876297 d!2203459))

(declare-fun m!7768224 () Bool)

(assert (=> bs!1876297 m!7768224))

(assert (=> start!683338 d!2203459))

(declare-fun condSetEmpty!49694 () Bool)

(assert (=> setNonEmpty!49688 (= condSetEmpty!49694 (= setRest!49688 (as set.empty (Set Context!13084))))))

(declare-fun setRes!49694 () Bool)

(assert (=> setNonEmpty!49688 (= tp!1939331 setRes!49694)))

(declare-fun setIsEmpty!49694 () Bool)

(assert (=> setIsEmpty!49694 setRes!49694))

(declare-fun e!4239375 () Bool)

(declare-fun setElem!49694 () Context!13084)

(declare-fun setNonEmpty!49694 () Bool)

(declare-fun tp!1939353 () Bool)

(assert (=> setNonEmpty!49694 (= setRes!49694 (and tp!1939353 (inv!86725 setElem!49694) e!4239375))))

(declare-fun setRest!49694 () (Set Context!13084))

(assert (=> setNonEmpty!49694 (= setRest!49688 (set.union (set.insert setElem!49694 (as set.empty (Set Context!13084))) setRest!49694))))

(declare-fun b!7051794 () Bool)

(declare-fun tp!1939354 () Bool)

(assert (=> b!7051794 (= e!4239375 tp!1939354)))

(assert (= (and setNonEmpty!49688 condSetEmpty!49694) setIsEmpty!49694))

(assert (= (and setNonEmpty!49688 (not condSetEmpty!49694)) setNonEmpty!49694))

(assert (= setNonEmpty!49694 b!7051794))

(declare-fun m!7768226 () Bool)

(assert (=> setNonEmpty!49694 m!7768226))

(declare-fun b!7051799 () Bool)

(declare-fun e!4239378 () Bool)

(declare-fun tp!1939357 () Bool)

(assert (=> b!7051799 (= e!4239378 (and tp_is_empty!44317 tp!1939357))))

(assert (=> b!7051713 (= tp!1939329 e!4239378)))

(assert (= (and b!7051713 (is-Cons!68041 (t!381944 s!7408))) b!7051799))

(declare-fun b!7051804 () Bool)

(declare-fun e!4239381 () Bool)

(declare-fun tp!1939362 () Bool)

(declare-fun tp!1939363 () Bool)

(assert (=> b!7051804 (= e!4239381 (and tp!1939362 tp!1939363))))

(assert (=> b!7051712 (= tp!1939332 e!4239381)))

(assert (= (and b!7051712 (is-Cons!68040 (exprs!7042 c!142))) b!7051804))

(declare-fun b!7051805 () Bool)

(declare-fun e!4239382 () Bool)

(declare-fun tp!1939364 () Bool)

(declare-fun tp!1939365 () Bool)

(assert (=> b!7051805 (= e!4239382 (and tp!1939364 tp!1939365))))

(assert (=> b!7051717 (= tp!1939330 e!4239382)))

(assert (= (and b!7051717 (is-Cons!68040 (exprs!7042 ct2!306))) b!7051805))

(declare-fun b!7051806 () Bool)

(declare-fun e!4239383 () Bool)

(declare-fun tp!1939366 () Bool)

(declare-fun tp!1939367 () Bool)

(assert (=> b!7051806 (= e!4239383 (and tp!1939366 tp!1939367))))

(assert (=> b!7051711 (= tp!1939333 e!4239383)))

(assert (= (and b!7051711 (is-Cons!68040 (exprs!7042 setElem!49688))) b!7051806))

(declare-fun b_lambda!268339 () Bool)

(assert (= b_lambda!268337 (or b!7051710 b_lambda!268339)))

(declare-fun bs!1876298 () Bool)

(declare-fun d!2203461 () Bool)

(assert (= bs!1876298 (and d!2203461 b!7051710)))

(assert (=> bs!1876298 (= (dynLambda!27573 lambda!419130 lt!2529827) (matchZipper!3086 (set.insert lt!2529827 (as set.empty (Set Context!13084))) s!7408))))

(declare-fun m!7768228 () Bool)

(assert (=> bs!1876298 m!7768228))

(assert (=> bs!1876298 m!7768228))

(declare-fun m!7768230 () Bool)

(assert (=> bs!1876298 m!7768230))

(assert (=> d!2203439 d!2203461))

(push 1)

(assert (not setNonEmpty!49694))

(assert (not b!7051794))

(assert (not d!2203449))

(assert (not d!2203447))

(assert tp_is_empty!44317)

(assert (not b!7051762))

(assert (not d!2203427))

(assert (not bs!1876298))

(assert (not d!2203433))

(assert (not d!2203443))

(assert (not d!2203457))

(assert (not b!7051781))

(assert (not b!7051804))

(assert (not d!2203437))

(assert (not b!7051799))

(assert (not d!2203431))

(assert (not d!2203459))

(assert (not d!2203455))

(assert (not b!7051782))

(assert (not d!2203453))

(assert (not b!7051805))

(assert (not b!7051787))

(assert (not b!7051755))

(assert (not b!7051806))

(assert (not b!7051786))

(assert (not b_lambda!268339))

(assert (not d!2203439))

(assert (not b!7051763))

(assert (not d!2203445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

