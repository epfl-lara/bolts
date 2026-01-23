; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278588 () Bool)

(assert start!278588)

(declare-fun res!1188560 () Bool)

(declare-fun e!1812147 () Bool)

(assert (=> start!278588 (=> (not res!1188560) (not e!1812147))))

(declare-datatypes ((C!17442 0))(
  ( (C!17443 (val!10755 Int)) )
))
(declare-datatypes ((Regex!8630 0))(
  ( (ElementMatch!8630 (c!461427 C!17442)) (Concat!13951 (regOne!17772 Regex!8630) (regTwo!17772 Regex!8630)) (EmptyExpr!8630) (Star!8630 (reg!8959 Regex!8630)) (EmptyLang!8630) (Union!8630 (regOne!17773 Regex!8630) (regTwo!17773 Regex!8630)) )
))
(declare-datatypes ((List!34243 0))(
  ( (Nil!34119) (Cons!34119 (h!39539 Regex!8630) (t!233280 List!34243)) )
))
(declare-datatypes ((Context!5180 0))(
  ( (Context!5181 (exprs!3090 List!34243)) )
))
(declare-fun z!960 () (Set Context!5180))

(declare-datatypes ((List!34244 0))(
  ( (Nil!34120) (Cons!34120 (h!39540 C!17442) (t!233281 List!34244)) )
))
(declare-fun prefix!919 () List!34244)

(declare-fun prefixMatchZipper!312 ((Set Context!5180) List!34244) Bool)

(assert (=> start!278588 (= res!1188560 (prefixMatchZipper!312 z!960 prefix!919))))

(assert (=> start!278588 e!1812147))

(declare-fun condSetEmpty!25319 () Bool)

(assert (=> start!278588 (= condSetEmpty!25319 (= z!960 (as set.empty (Set Context!5180))))))

(declare-fun setRes!25319 () Bool)

(assert (=> start!278588 setRes!25319))

(declare-fun e!1812146 () Bool)

(assert (=> start!278588 e!1812146))

(declare-fun b!2862585 () Bool)

(declare-fun res!1188559 () Bool)

(assert (=> b!2862585 (=> (not res!1188559) (not e!1812147))))

(assert (=> b!2862585 (= res!1188559 (is-Nil!34120 prefix!919))))

(declare-fun setIsEmpty!25319 () Bool)

(assert (=> setIsEmpty!25319 setRes!25319))

(declare-fun b!2862586 () Bool)

(declare-fun tp_is_empty!14997 () Bool)

(declare-fun tp!921711 () Bool)

(assert (=> b!2862586 (= e!1812146 (and tp_is_empty!14997 tp!921711))))

(declare-fun setNonEmpty!25319 () Bool)

(declare-fun setElem!25319 () Context!5180)

(declare-fun e!1812145 () Bool)

(declare-fun tp!921712 () Bool)

(declare-fun inv!46163 (Context!5180) Bool)

(assert (=> setNonEmpty!25319 (= setRes!25319 (and tp!921712 (inv!46163 setElem!25319) e!1812145))))

(declare-fun setRest!25319 () (Set Context!5180))

(assert (=> setNonEmpty!25319 (= z!960 (set.union (set.insert setElem!25319 (as set.empty (Set Context!5180))) setRest!25319))))

(declare-fun b!2862587 () Bool)

(declare-fun tp!921713 () Bool)

(assert (=> b!2862587 (= e!1812145 tp!921713)))

(declare-fun b!2862588 () Bool)

(declare-fun lt!1014795 () List!34244)

(declare-fun isPrefix!2690 (List!34244 List!34244) Bool)

(assert (=> b!2862588 (= e!1812147 (not (isPrefix!2690 prefix!919 lt!1014795)))))

(declare-fun matchZipper!428 ((Set Context!5180) List!34244) Bool)

(assert (=> b!2862588 (matchZipper!428 z!960 lt!1014795)))

(declare-datatypes ((Unit!47783 0))(
  ( (Unit!47784) )
))
(declare-fun lt!1014794 () Unit!47783)

(declare-fun lemmaGetWitnessMatchesZipper!5 ((Set Context!5180)) Unit!47783)

(assert (=> b!2862588 (= lt!1014794 (lemmaGetWitnessMatchesZipper!5 z!960))))

(declare-datatypes ((Option!6325 0))(
  ( (None!6324) (Some!6324 (v!34446 List!34244)) )
))
(declare-fun get!10232 (Option!6325) List!34244)

(declare-fun getLanguageWitness!260 ((Set Context!5180)) Option!6325)

(assert (=> b!2862588 (= lt!1014795 (get!10232 (getLanguageWitness!260 z!960)))))

(assert (= (and start!278588 res!1188560) b!2862585))

(assert (= (and b!2862585 res!1188559) b!2862588))

(assert (= (and start!278588 condSetEmpty!25319) setIsEmpty!25319))

(assert (= (and start!278588 (not condSetEmpty!25319)) setNonEmpty!25319))

(assert (= setNonEmpty!25319 b!2862587))

(assert (= (and start!278588 (is-Cons!34120 prefix!919)) b!2862586))

(declare-fun m!3281881 () Bool)

(assert (=> start!278588 m!3281881))

(declare-fun m!3281883 () Bool)

(assert (=> setNonEmpty!25319 m!3281883))

(declare-fun m!3281885 () Bool)

(assert (=> b!2862588 m!3281885))

(declare-fun m!3281887 () Bool)

(assert (=> b!2862588 m!3281887))

(declare-fun m!3281889 () Bool)

(assert (=> b!2862588 m!3281889))

(assert (=> b!2862588 m!3281887))

(declare-fun m!3281891 () Bool)

(assert (=> b!2862588 m!3281891))

(declare-fun m!3281893 () Bool)

(assert (=> b!2862588 m!3281893))

(push 1)

(assert (not b!2862588))

(assert (not b!2862587))

(assert (not b!2862586))

(assert tp_is_empty!14997)

(assert (not start!278588))

(assert (not setNonEmpty!25319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827391 () Bool)

(assert (=> d!827391 (= (get!10232 (getLanguageWitness!260 z!960)) (v!34446 (getLanguageWitness!260 z!960)))))

(assert (=> b!2862588 d!827391))

(declare-fun b!2862611 () Bool)

(declare-fun e!1812165 () Bool)

(declare-fun tail!4524 (List!34244) List!34244)

(assert (=> b!2862611 (= e!1812165 (isPrefix!2690 (tail!4524 prefix!919) (tail!4524 lt!1014795)))))

(declare-fun d!827393 () Bool)

(declare-fun e!1812164 () Bool)

(assert (=> d!827393 e!1812164))

(declare-fun res!1188577 () Bool)

(assert (=> d!827393 (=> res!1188577 e!1812164)))

(declare-fun lt!1014804 () Bool)

(assert (=> d!827393 (= res!1188577 (not lt!1014804))))

(declare-fun e!1812163 () Bool)

(assert (=> d!827393 (= lt!1014804 e!1812163)))

(declare-fun res!1188578 () Bool)

(assert (=> d!827393 (=> res!1188578 e!1812163)))

(assert (=> d!827393 (= res!1188578 (is-Nil!34120 prefix!919))))

(assert (=> d!827393 (= (isPrefix!2690 prefix!919 lt!1014795) lt!1014804)))

(declare-fun b!2862612 () Bool)

(declare-fun size!26288 (List!34244) Int)

(assert (=> b!2862612 (= e!1812164 (>= (size!26288 lt!1014795) (size!26288 prefix!919)))))

(declare-fun b!2862610 () Bool)

(declare-fun res!1188576 () Bool)

(assert (=> b!2862610 (=> (not res!1188576) (not e!1812165))))

(declare-fun head!6299 (List!34244) C!17442)

(assert (=> b!2862610 (= res!1188576 (= (head!6299 prefix!919) (head!6299 lt!1014795)))))

(declare-fun b!2862609 () Bool)

(assert (=> b!2862609 (= e!1812163 e!1812165)))

(declare-fun res!1188575 () Bool)

(assert (=> b!2862609 (=> (not res!1188575) (not e!1812165))))

(assert (=> b!2862609 (= res!1188575 (not (is-Nil!34120 lt!1014795)))))

(assert (= (and d!827393 (not res!1188578)) b!2862609))

(assert (= (and b!2862609 res!1188575) b!2862610))

(assert (= (and b!2862610 res!1188576) b!2862611))

(assert (= (and d!827393 (not res!1188577)) b!2862612))

(declare-fun m!3281909 () Bool)

(assert (=> b!2862611 m!3281909))

(declare-fun m!3281911 () Bool)

(assert (=> b!2862611 m!3281911))

(assert (=> b!2862611 m!3281909))

(assert (=> b!2862611 m!3281911))

(declare-fun m!3281913 () Bool)

(assert (=> b!2862611 m!3281913))

(declare-fun m!3281915 () Bool)

(assert (=> b!2862612 m!3281915))

(declare-fun m!3281917 () Bool)

(assert (=> b!2862612 m!3281917))

(declare-fun m!3281919 () Bool)

(assert (=> b!2862610 m!3281919))

(declare-fun m!3281921 () Bool)

(assert (=> b!2862610 m!3281921))

(assert (=> b!2862588 d!827393))

(declare-fun d!827397 () Bool)

(declare-fun lt!1014807 () Option!6325)

(declare-fun lambda!105308 () Int)

(declare-fun isDefined!4950 (Option!6325) Bool)

(declare-fun exists!1043 ((Set Context!5180) Int) Bool)

(assert (=> d!827397 (= (isDefined!4950 lt!1014807) (exists!1043 z!960 lambda!105308))))

(declare-fun e!1812168 () Option!6325)

(assert (=> d!827397 (= lt!1014807 e!1812168)))

(declare-fun c!461437 () Bool)

(assert (=> d!827397 (= c!461437 (exists!1043 z!960 lambda!105308))))

(assert (=> d!827397 (= (getLanguageWitness!260 z!960) lt!1014807)))

(declare-fun b!2862617 () Bool)

(declare-fun getLanguageWitness!262 (Context!5180) Option!6325)

(declare-fun getWitness!580 ((Set Context!5180) Int) Context!5180)

(assert (=> b!2862617 (= e!1812168 (getLanguageWitness!262 (getWitness!580 z!960 lambda!105308)))))

(declare-fun b!2862618 () Bool)

(assert (=> b!2862618 (= e!1812168 None!6324)))

(assert (= (and d!827397 c!461437) b!2862617))

(assert (= (and d!827397 (not c!461437)) b!2862618))

(declare-fun m!3281923 () Bool)

(assert (=> d!827397 m!3281923))

(declare-fun m!3281925 () Bool)

(assert (=> d!827397 m!3281925))

(assert (=> d!827397 m!3281925))

(declare-fun m!3281927 () Bool)

(assert (=> b!2862617 m!3281927))

(assert (=> b!2862617 m!3281927))

(declare-fun m!3281929 () Bool)

(assert (=> b!2862617 m!3281929))

(assert (=> b!2862588 d!827397))

(declare-fun d!827399 () Bool)

(assert (=> d!827399 (matchZipper!428 z!960 (get!10232 (getLanguageWitness!260 z!960)))))

(declare-fun lt!1014810 () Unit!47783)

(declare-fun choose!16843 ((Set Context!5180)) Unit!47783)

(assert (=> d!827399 (= lt!1014810 (choose!16843 z!960))))

(declare-fun lostCauseZipper!542 ((Set Context!5180)) Bool)

(assert (=> d!827399 (not (lostCauseZipper!542 z!960))))

(assert (=> d!827399 (= (lemmaGetWitnessMatchesZipper!5 z!960) lt!1014810)))

(declare-fun bs!520479 () Bool)

(assert (= bs!520479 d!827399))

(declare-fun m!3281931 () Bool)

(assert (=> bs!520479 m!3281931))

(assert (=> bs!520479 m!3281887))

(assert (=> bs!520479 m!3281889))

(assert (=> bs!520479 m!3281887))

(declare-fun m!3281933 () Bool)

(assert (=> bs!520479 m!3281933))

(assert (=> bs!520479 m!3281889))

(declare-fun m!3281935 () Bool)

(assert (=> bs!520479 m!3281935))

(assert (=> b!2862588 d!827399))

(declare-fun d!827401 () Bool)

(declare-fun c!461440 () Bool)

(declare-fun isEmpty!18626 (List!34244) Bool)

(assert (=> d!827401 (= c!461440 (isEmpty!18626 lt!1014795))))

(declare-fun e!1812171 () Bool)

(assert (=> d!827401 (= (matchZipper!428 z!960 lt!1014795) e!1812171)))

(declare-fun b!2862623 () Bool)

(declare-fun nullableZipper!684 ((Set Context!5180)) Bool)

(assert (=> b!2862623 (= e!1812171 (nullableZipper!684 z!960))))

(declare-fun b!2862624 () Bool)

(declare-fun derivationStepZipper!430 ((Set Context!5180) C!17442) (Set Context!5180))

(assert (=> b!2862624 (= e!1812171 (matchZipper!428 (derivationStepZipper!430 z!960 (head!6299 lt!1014795)) (tail!4524 lt!1014795)))))

(assert (= (and d!827401 c!461440) b!2862623))

(assert (= (and d!827401 (not c!461440)) b!2862624))

(declare-fun m!3281937 () Bool)

(assert (=> d!827401 m!3281937))

(declare-fun m!3281939 () Bool)

(assert (=> b!2862623 m!3281939))

(assert (=> b!2862624 m!3281921))

(assert (=> b!2862624 m!3281921))

(declare-fun m!3281941 () Bool)

(assert (=> b!2862624 m!3281941))

(assert (=> b!2862624 m!3281911))

(assert (=> b!2862624 m!3281941))

(assert (=> b!2862624 m!3281911))

(declare-fun m!3281943 () Bool)

(assert (=> b!2862624 m!3281943))

(assert (=> b!2862588 d!827401))

(declare-fun d!827403 () Bool)

(declare-fun c!461443 () Bool)

(assert (=> d!827403 (= c!461443 (isEmpty!18626 prefix!919))))

(declare-fun e!1812174 () Bool)

(assert (=> d!827403 (= (prefixMatchZipper!312 z!960 prefix!919) e!1812174)))

(declare-fun b!2862629 () Bool)

(assert (=> b!2862629 (= e!1812174 (not (lostCauseZipper!542 z!960)))))

(declare-fun b!2862630 () Bool)

(assert (=> b!2862630 (= e!1812174 (prefixMatchZipper!312 (derivationStepZipper!430 z!960 (head!6299 prefix!919)) (tail!4524 prefix!919)))))

(assert (= (and d!827403 c!461443) b!2862629))

(assert (= (and d!827403 (not c!461443)) b!2862630))

(declare-fun m!3281945 () Bool)

(assert (=> d!827403 m!3281945))

(assert (=> b!2862629 m!3281931))

(assert (=> b!2862630 m!3281919))

(assert (=> b!2862630 m!3281919))

(declare-fun m!3281947 () Bool)

(assert (=> b!2862630 m!3281947))

(assert (=> b!2862630 m!3281909))

(assert (=> b!2862630 m!3281947))

(assert (=> b!2862630 m!3281909))

(declare-fun m!3281949 () Bool)

(assert (=> b!2862630 m!3281949))

(assert (=> start!278588 d!827403))

(declare-fun d!827405 () Bool)

(declare-fun lambda!105311 () Int)

(declare-fun forall!6967 (List!34243 Int) Bool)

(assert (=> d!827405 (= (inv!46163 setElem!25319) (forall!6967 (exprs!3090 setElem!25319) lambda!105311))))

(declare-fun bs!520480 () Bool)

(assert (= bs!520480 d!827405))

(declare-fun m!3281951 () Bool)

(assert (=> bs!520480 m!3281951))

(assert (=> setNonEmpty!25319 d!827405))

(declare-fun b!2862635 () Bool)

(declare-fun e!1812177 () Bool)

(declare-fun tp!921725 () Bool)

(assert (=> b!2862635 (= e!1812177 (and tp_is_empty!14997 tp!921725))))

(assert (=> b!2862586 (= tp!921711 e!1812177)))

(assert (= (and b!2862586 (is-Cons!34120 (t!233281 prefix!919))) b!2862635))

(declare-fun condSetEmpty!25325 () Bool)

(assert (=> setNonEmpty!25319 (= condSetEmpty!25325 (= setRest!25319 (as set.empty (Set Context!5180))))))

(declare-fun setRes!25325 () Bool)

(assert (=> setNonEmpty!25319 (= tp!921712 setRes!25325)))

(declare-fun setIsEmpty!25325 () Bool)

(assert (=> setIsEmpty!25325 setRes!25325))

(declare-fun setNonEmpty!25325 () Bool)

(declare-fun setElem!25325 () Context!5180)

(declare-fun e!1812180 () Bool)

(declare-fun tp!921731 () Bool)

(assert (=> setNonEmpty!25325 (= setRes!25325 (and tp!921731 (inv!46163 setElem!25325) e!1812180))))

(declare-fun setRest!25325 () (Set Context!5180))

(assert (=> setNonEmpty!25325 (= setRest!25319 (set.union (set.insert setElem!25325 (as set.empty (Set Context!5180))) setRest!25325))))

(declare-fun b!2862640 () Bool)

(declare-fun tp!921730 () Bool)

(assert (=> b!2862640 (= e!1812180 tp!921730)))

(assert (= (and setNonEmpty!25319 condSetEmpty!25325) setIsEmpty!25325))

(assert (= (and setNonEmpty!25319 (not condSetEmpty!25325)) setNonEmpty!25325))

(assert (= setNonEmpty!25325 b!2862640))

(declare-fun m!3281953 () Bool)

(assert (=> setNonEmpty!25325 m!3281953))

(declare-fun b!2862645 () Bool)

(declare-fun e!1812183 () Bool)

(declare-fun tp!921736 () Bool)

(declare-fun tp!921737 () Bool)

(assert (=> b!2862645 (= e!1812183 (and tp!921736 tp!921737))))

(assert (=> b!2862587 (= tp!921713 e!1812183)))

(assert (= (and b!2862587 (is-Cons!34119 (exprs!3090 setElem!25319))) b!2862645))

(push 1)

(assert (not b!2862630))

(assert (not b!2862610))

(assert (not b!2862629))

(assert (not d!827405))

(assert (not b!2862617))

(assert (not b!2862645))

(assert (not d!827397))

(assert (not b!2862612))

(assert (not b!2862640))

(assert tp_is_empty!14997)

(assert (not b!2862623))

(assert (not b!2862624))

(assert (not d!827399))

(assert (not b!2862611))

(assert (not d!827401))

(assert (not setNonEmpty!25325))

(assert (not b!2862635))

(assert (not d!827403))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

