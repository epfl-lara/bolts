; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!678426 () Bool)

(assert start!678426)

(declare-fun b!7026698 () Bool)

(assert (=> b!7026698 true))

(declare-fun b!7026710 () Bool)

(assert (=> b!7026710 true))

(declare-fun b!7026693 () Bool)

(assert (=> b!7026693 true))

(declare-fun b!7026690 () Bool)

(declare-fun e!4224105 () Bool)

(declare-fun tp!1935629 () Bool)

(assert (=> b!7026690 (= e!4224105 tp!1935629)))

(declare-fun b!7026691 () Bool)

(declare-fun e!4224104 () Bool)

(declare-datatypes ((C!35166 0))(
  ( (C!35167 (val!27285 Int)) )
))
(declare-datatypes ((Regex!17448 0))(
  ( (ElementMatch!17448 (c!1306235 C!35166)) (Concat!26293 (regOne!35408 Regex!17448) (regTwo!35408 Regex!17448)) (EmptyExpr!17448) (Star!17448 (reg!17777 Regex!17448)) (EmptyLang!17448) (Union!17448 (regOne!35409 Regex!17448) (regTwo!35409 Regex!17448)) )
))
(declare-datatypes ((List!67872 0))(
  ( (Nil!67748) (Cons!67748 (h!74196 Regex!17448) (t!381631 List!67872)) )
))
(declare-datatypes ((Context!12888 0))(
  ( (Context!12889 (exprs!6944 List!67872)) )
))
(declare-fun lt!2515273 () (Set Context!12888))

(declare-datatypes ((List!67873 0))(
  ( (Nil!67749) (Cons!67749 (h!74197 C!35166) (t!381632 List!67873)) )
))
(declare-fun s!7408 () List!67873)

(declare-fun matchZipper!2988 ((Set Context!12888) List!67873) Bool)

(assert (=> b!7026691 (= e!4224104 (not (matchZipper!2988 lt!2515273 (t!381632 s!7408))))))

(declare-fun lt!2515239 () List!67872)

(declare-datatypes ((Unit!161561 0))(
  ( (Unit!161562) )
))
(declare-fun lt!2515263 () Unit!161561)

(declare-fun lambda!413332 () Int)

(declare-fun ct2!306 () Context!12888)

(declare-fun lemmaConcatPreservesForall!769 (List!67872 List!67872 Int) Unit!161561)

(assert (=> b!7026691 (= lt!2515263 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun b!7026692 () Bool)

(declare-fun e!4224112 () Bool)

(declare-fun tp!1935631 () Bool)

(assert (=> b!7026692 (= e!4224112 tp!1935631)))

(declare-fun res!2868507 () Bool)

(declare-fun e!4224115 () Bool)

(assert (=> start!678426 (=> (not res!2868507) (not e!4224115))))

(declare-fun lt!2515257 () (Set Context!12888))

(assert (=> start!678426 (= res!2868507 (matchZipper!2988 lt!2515257 s!7408))))

(declare-fun z1!570 () (Set Context!12888))

(declare-fun appendTo!569 ((Set Context!12888) Context!12888) (Set Context!12888))

(assert (=> start!678426 (= lt!2515257 (appendTo!569 z1!570 ct2!306))))

(assert (=> start!678426 e!4224115))

(declare-fun condSetEmpty!49007 () Bool)

(assert (=> start!678426 (= condSetEmpty!49007 (= z1!570 (as set.empty (Set Context!12888))))))

(declare-fun setRes!49007 () Bool)

(assert (=> start!678426 setRes!49007))

(declare-fun inv!86480 (Context!12888) Bool)

(assert (=> start!678426 (and (inv!86480 ct2!306) e!4224112)))

(declare-fun e!4224117 () Bool)

(assert (=> start!678426 e!4224117))

(declare-fun e!4224118 () Bool)

(declare-fun e!4224116 () Bool)

(assert (=> b!7026693 (= e!4224118 e!4224116)))

(declare-fun res!2868503 () Bool)

(assert (=> b!7026693 (=> res!2868503 e!4224116)))

(declare-fun lt!2515245 () (Set Context!12888))

(declare-fun lt!2515278 () (Set Context!12888))

(declare-fun derivationStepZipper!2904 ((Set Context!12888) C!35166) (Set Context!12888))

(assert (=> b!7026693 (= res!2868503 (not (= (derivationStepZipper!2904 lt!2515245 (h!74197 s!7408)) lt!2515278)))))

(declare-fun lambda!413333 () Int)

(declare-fun lt!2515249 () Context!12888)

(declare-fun flatMap!2395 ((Set Context!12888) Int) (Set Context!12888))

(declare-fun derivationStepZipperUp!2058 (Context!12888 C!35166) (Set Context!12888))

(assert (=> b!7026693 (= (flatMap!2395 lt!2515245 lambda!413333) (derivationStepZipperUp!2058 lt!2515249 (h!74197 s!7408)))))

(declare-fun lt!2515279 () Unit!161561)

(declare-fun lemmaFlatMapOnSingletonSet!1909 ((Set Context!12888) Context!12888 Int) Unit!161561)

(assert (=> b!7026693 (= lt!2515279 (lemmaFlatMapOnSingletonSet!1909 lt!2515245 lt!2515249 lambda!413333))))

(assert (=> b!7026693 (= lt!2515278 (derivationStepZipperUp!2058 lt!2515249 (h!74197 s!7408)))))

(declare-fun lt!2515248 () Context!12888)

(declare-fun lt!2515247 () Unit!161561)

(assert (=> b!7026693 (= lt!2515247 (lemmaConcatPreservesForall!769 (exprs!6944 lt!2515248) (exprs!6944 ct2!306) lambda!413332))))

(declare-fun b!7026694 () Bool)

(declare-fun res!2868517 () Bool)

(declare-fun e!4224107 () Bool)

(assert (=> b!7026694 (=> res!2868517 e!4224107)))

(declare-fun lt!2515267 () Bool)

(assert (=> b!7026694 (= res!2868517 (not lt!2515267))))

(declare-fun setElem!49007 () Context!12888)

(declare-fun tp!1935630 () Bool)

(declare-fun setNonEmpty!49007 () Bool)

(assert (=> setNonEmpty!49007 (= setRes!49007 (and tp!1935630 (inv!86480 setElem!49007) e!4224105))))

(declare-fun setRest!49007 () (Set Context!12888))

(assert (=> setNonEmpty!49007 (= z1!570 (set.union (set.insert setElem!49007 (as set.empty (Set Context!12888))) setRest!49007))))

(declare-fun b!7026695 () Bool)

(declare-fun e!4224110 () Bool)

(assert (=> b!7026695 (= e!4224116 e!4224110)))

(declare-fun res!2868512 () Bool)

(assert (=> b!7026695 (=> res!2868512 e!4224110)))

(declare-fun nullable!7159 (Regex!17448) Bool)

(assert (=> b!7026695 (= res!2868512 (not (nullable!7159 (h!74196 (exprs!6944 lt!2515248)))))))

(declare-fun lt!2515274 () Context!12888)

(assert (=> b!7026695 (= lt!2515274 (Context!12889 lt!2515239))))

(declare-fun tail!13521 (List!67872) List!67872)

(assert (=> b!7026695 (= lt!2515239 (tail!13521 (exprs!6944 lt!2515248)))))

(declare-fun b!7026696 () Bool)

(declare-fun e!4224109 () Bool)

(declare-fun e!4224113 () Bool)

(assert (=> b!7026696 (= e!4224109 e!4224113)))

(declare-fun res!2868515 () Bool)

(assert (=> b!7026696 (=> res!2868515 e!4224113)))

(declare-fun lt!2515266 () (Set Context!12888))

(assert (=> b!7026696 (= res!2868515 (not (matchZipper!2988 lt!2515266 s!7408)))))

(declare-fun lt!2515277 () Unit!161561)

(assert (=> b!7026696 (= lt!2515277 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun b!7026697 () Bool)

(declare-fun e!4224106 () Bool)

(assert (=> b!7026697 (= e!4224107 e!4224106)))

(declare-fun res!2868520 () Bool)

(assert (=> b!7026697 (=> res!2868520 e!4224106)))

(assert (=> b!7026697 (= res!2868520 (not (matchZipper!2988 lt!2515273 (t!381632 s!7408))))))

(declare-fun lt!2515255 () Unit!161561)

(assert (=> b!7026697 (= lt!2515255 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun e!4224108 () Bool)

(assert (=> b!7026698 (= e!4224115 (not e!4224108))))

(declare-fun res!2868508 () Bool)

(assert (=> b!7026698 (=> res!2868508 e!4224108)))

(declare-fun lt!2515275 () (Set Context!12888))

(assert (=> b!7026698 (= res!2868508 (not (matchZipper!2988 lt!2515275 s!7408)))))

(declare-fun lt!2515271 () Context!12888)

(assert (=> b!7026698 (= lt!2515275 (set.insert lt!2515271 (as set.empty (Set Context!12888))))))

(declare-fun lambda!413330 () Int)

(declare-fun getWitness!1441 ((Set Context!12888) Int) Context!12888)

(assert (=> b!7026698 (= lt!2515271 (getWitness!1441 lt!2515257 lambda!413330))))

(declare-datatypes ((List!67874 0))(
  ( (Nil!67750) (Cons!67750 (h!74198 Context!12888) (t!381633 List!67874)) )
))
(declare-fun lt!2515241 () List!67874)

(declare-fun exists!3360 (List!67874 Int) Bool)

(assert (=> b!7026698 (exists!3360 lt!2515241 lambda!413330)))

(declare-fun lt!2515260 () Unit!161561)

(declare-fun lemmaZipperMatchesExistsMatchingContext!387 (List!67874 List!67873) Unit!161561)

(assert (=> b!7026698 (= lt!2515260 (lemmaZipperMatchesExistsMatchingContext!387 lt!2515241 s!7408))))

(declare-fun toList!10791 ((Set Context!12888)) List!67874)

(assert (=> b!7026698 (= lt!2515241 (toList!10791 lt!2515257))))

(declare-fun b!7026699 () Bool)

(declare-fun res!2868518 () Bool)

(assert (=> b!7026699 (=> res!2868518 e!4224108)))

(assert (=> b!7026699 (= res!2868518 (not (set.member lt!2515271 lt!2515257)))))

(declare-fun b!7026700 () Bool)

(declare-fun e!4224119 () Bool)

(assert (=> b!7026700 (= e!4224119 e!4224118)))

(declare-fun res!2868505 () Bool)

(assert (=> b!7026700 (=> res!2868505 e!4224118)))

(assert (=> b!7026700 (= res!2868505 (not (= lt!2515245 lt!2515275)))))

(assert (=> b!7026700 (= lt!2515245 (set.insert lt!2515249 (as set.empty (Set Context!12888))))))

(declare-fun lt!2515261 () Unit!161561)

(assert (=> b!7026700 (= lt!2515261 (lemmaConcatPreservesForall!769 (exprs!6944 lt!2515248) (exprs!6944 ct2!306) lambda!413332))))

(declare-fun b!7026701 () Bool)

(declare-fun e!4224114 () Bool)

(assert (=> b!7026701 (= e!4224114 e!4224107)))

(declare-fun res!2868516 () Bool)

(assert (=> b!7026701 (=> res!2868516 e!4224107)))

(assert (=> b!7026701 (= res!2868516 e!4224104)))

(declare-fun res!2868506 () Bool)

(assert (=> b!7026701 (=> (not res!2868506) (not e!4224104))))

(declare-fun lt!2515265 () Bool)

(assert (=> b!7026701 (= res!2868506 (not (= lt!2515267 lt!2515265)))))

(assert (=> b!7026701 (= lt!2515267 (matchZipper!2988 lt!2515278 (t!381632 s!7408)))))

(declare-fun lt!2515240 () Unit!161561)

(assert (=> b!7026701 (= lt!2515240 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515268 () (Set Context!12888))

(declare-fun e!4224111 () Bool)

(assert (=> b!7026701 (= (matchZipper!2988 lt!2515268 (t!381632 s!7408)) e!4224111)))

(declare-fun res!2868504 () Bool)

(assert (=> b!7026701 (=> res!2868504 e!4224111)))

(assert (=> b!7026701 (= res!2868504 lt!2515265)))

(declare-fun lt!2515259 () (Set Context!12888))

(assert (=> b!7026701 (= lt!2515265 (matchZipper!2988 lt!2515259 (t!381632 s!7408)))))

(declare-fun lt!2515252 () Unit!161561)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1521 ((Set Context!12888) (Set Context!12888) List!67873) Unit!161561)

(assert (=> b!7026701 (= lt!2515252 (lemmaZipperConcatMatchesSameAsBothZippers!1521 lt!2515259 lt!2515273 (t!381632 s!7408)))))

(declare-fun lt!2515251 () Unit!161561)

(assert (=> b!7026701 (= lt!2515251 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515264 () Unit!161561)

(assert (=> b!7026701 (= lt!2515264 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun b!7026702 () Bool)

(assert (=> b!7026702 (= e!4224110 e!4224114)))

(declare-fun res!2868509 () Bool)

(assert (=> b!7026702 (=> res!2868509 e!4224114)))

(assert (=> b!7026702 (= res!2868509 (not (= lt!2515278 lt!2515268)))))

(assert (=> b!7026702 (= lt!2515268 (set.union lt!2515259 lt!2515273))))

(declare-fun lt!2515243 () Context!12888)

(assert (=> b!7026702 (= lt!2515273 (derivationStepZipperUp!2058 lt!2515243 (h!74197 s!7408)))))

(declare-fun derivationStepZipperDown!2112 (Regex!17448 Context!12888 C!35166) (Set Context!12888))

(assert (=> b!7026702 (= lt!2515259 (derivationStepZipperDown!2112 (h!74196 (exprs!6944 lt!2515248)) lt!2515243 (h!74197 s!7408)))))

(declare-fun ++!15481 (List!67872 List!67872) List!67872)

(assert (=> b!7026702 (= lt!2515243 (Context!12889 (++!15481 lt!2515239 (exprs!6944 ct2!306))))))

(declare-fun lt!2515250 () Unit!161561)

(assert (=> b!7026702 (= lt!2515250 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515276 () Unit!161561)

(assert (=> b!7026702 (= lt!2515276 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun b!7026703 () Bool)

(declare-fun res!2868513 () Bool)

(assert (=> b!7026703 (=> res!2868513 e!4224116)))

(declare-fun isEmpty!39500 (List!67872) Bool)

(assert (=> b!7026703 (= res!2868513 (isEmpty!39500 (exprs!6944 lt!2515248)))))

(declare-fun b!7026704 () Bool)

(declare-fun lt!2515244 () Int)

(declare-fun contextDepthTotal!483 (Context!12888) Int)

(assert (=> b!7026704 (= e!4224113 (> lt!2515244 (contextDepthTotal!483 lt!2515274)))))

(declare-fun lt!2515246 () List!67874)

(declare-fun zipperDepthTotal!511 (List!67874) Int)

(assert (=> b!7026704 (<= lt!2515244 (zipperDepthTotal!511 lt!2515246))))

(assert (=> b!7026704 (= lt!2515244 (contextDepthTotal!483 lt!2515248))))

(declare-fun lt!2515270 () Unit!161561)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!51 (List!67874 Context!12888) Unit!161561)

(assert (=> b!7026704 (= lt!2515270 (lemmaTotalDepthZipperLargerThanOfAnyContext!51 lt!2515246 lt!2515248))))

(assert (=> b!7026704 (= lt!2515246 (toList!10791 z1!570))))

(declare-fun lt!2515281 () Unit!161561)

(assert (=> b!7026704 (= lt!2515281 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515262 () Unit!161561)

(assert (=> b!7026704 (= lt!2515262 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515254 () Unit!161561)

(assert (=> b!7026704 (= lt!2515254 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515242 () (Set Context!12888))

(assert (=> b!7026704 (= (flatMap!2395 lt!2515242 lambda!413333) (derivationStepZipperUp!2058 lt!2515274 (h!74197 s!7408)))))

(declare-fun lt!2515280 () Unit!161561)

(assert (=> b!7026704 (= lt!2515280 (lemmaFlatMapOnSingletonSet!1909 lt!2515242 lt!2515274 lambda!413333))))

(declare-fun lambda!413331 () Int)

(declare-fun map!15740 ((Set Context!12888) Int) (Set Context!12888))

(assert (=> b!7026704 (= (map!15740 lt!2515242 lambda!413331) (set.insert (Context!12889 (++!15481 lt!2515239 (exprs!6944 ct2!306))) (as set.empty (Set Context!12888))))))

(declare-fun lt!2515282 () Unit!161561)

(assert (=> b!7026704 (= lt!2515282 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515256 () Unit!161561)

(declare-fun lemmaMapOnSingletonSet!359 ((Set Context!12888) Context!12888 Int) Unit!161561)

(assert (=> b!7026704 (= lt!2515256 (lemmaMapOnSingletonSet!359 lt!2515242 lt!2515274 lambda!413331))))

(assert (=> b!7026704 (= lt!2515242 (set.insert lt!2515274 (as set.empty (Set Context!12888))))))

(declare-fun b!7026705 () Bool)

(declare-fun tp_is_empty!44121 () Bool)

(declare-fun tp!1935628 () Bool)

(assert (=> b!7026705 (= e!4224117 (and tp_is_empty!44121 tp!1935628))))

(declare-fun setIsEmpty!49007 () Bool)

(assert (=> setIsEmpty!49007 setRes!49007))

(declare-fun b!7026706 () Bool)

(declare-fun res!2868519 () Bool)

(assert (=> b!7026706 (=> res!2868519 e!4224116)))

(assert (=> b!7026706 (= res!2868519 (not (is-Cons!67748 (exprs!6944 lt!2515248))))))

(declare-fun b!7026707 () Bool)

(assert (=> b!7026707 (= e!4224111 (matchZipper!2988 lt!2515273 (t!381632 s!7408)))))

(declare-fun b!7026708 () Bool)

(declare-fun res!2868511 () Bool)

(assert (=> b!7026708 (=> (not res!2868511) (not e!4224115))))

(assert (=> b!7026708 (= res!2868511 (is-Cons!67749 s!7408))))

(declare-fun b!7026709 () Bool)

(assert (=> b!7026709 (= e!4224106 e!4224109)))

(declare-fun res!2868510 () Bool)

(assert (=> b!7026709 (=> res!2868510 e!4224109)))

(assert (=> b!7026709 (= res!2868510 (not (= (derivationStepZipper!2904 lt!2515266 (h!74197 s!7408)) lt!2515273)))))

(declare-fun lt!2515238 () Unit!161561)

(assert (=> b!7026709 (= lt!2515238 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515253 () Unit!161561)

(assert (=> b!7026709 (= lt!2515253 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(assert (=> b!7026709 (= (flatMap!2395 lt!2515266 lambda!413333) (derivationStepZipperUp!2058 lt!2515243 (h!74197 s!7408)))))

(declare-fun lt!2515272 () Unit!161561)

(assert (=> b!7026709 (= lt!2515272 (lemmaFlatMapOnSingletonSet!1909 lt!2515266 lt!2515243 lambda!413333))))

(assert (=> b!7026709 (= lt!2515266 (set.insert lt!2515243 (as set.empty (Set Context!12888))))))

(declare-fun lt!2515269 () Unit!161561)

(assert (=> b!7026709 (= lt!2515269 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(declare-fun lt!2515283 () Unit!161561)

(assert (=> b!7026709 (= lt!2515283 (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(assert (=> b!7026710 (= e!4224108 e!4224119)))

(declare-fun res!2868514 () Bool)

(assert (=> b!7026710 (=> res!2868514 e!4224119)))

(assert (=> b!7026710 (= res!2868514 (or (not (= lt!2515249 lt!2515271)) (not (set.member lt!2515248 z1!570))))))

(assert (=> b!7026710 (= lt!2515249 (Context!12889 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306))))))

(declare-fun lt!2515258 () Unit!161561)

(assert (=> b!7026710 (= lt!2515258 (lemmaConcatPreservesForall!769 (exprs!6944 lt!2515248) (exprs!6944 ct2!306) lambda!413332))))

(declare-fun mapPost2!289 ((Set Context!12888) Int Context!12888) Context!12888)

(assert (=> b!7026710 (= lt!2515248 (mapPost2!289 z1!570 lambda!413331 lt!2515271))))

(assert (= (and start!678426 res!2868507) b!7026708))

(assert (= (and b!7026708 res!2868511) b!7026698))

(assert (= (and b!7026698 (not res!2868508)) b!7026699))

(assert (= (and b!7026699 (not res!2868518)) b!7026710))

(assert (= (and b!7026710 (not res!2868514)) b!7026700))

(assert (= (and b!7026700 (not res!2868505)) b!7026693))

(assert (= (and b!7026693 (not res!2868503)) b!7026706))

(assert (= (and b!7026706 (not res!2868519)) b!7026703))

(assert (= (and b!7026703 (not res!2868513)) b!7026695))

(assert (= (and b!7026695 (not res!2868512)) b!7026702))

(assert (= (and b!7026702 (not res!2868509)) b!7026701))

(assert (= (and b!7026701 (not res!2868504)) b!7026707))

(assert (= (and b!7026701 res!2868506) b!7026691))

(assert (= (and b!7026701 (not res!2868516)) b!7026694))

(assert (= (and b!7026694 (not res!2868517)) b!7026697))

(assert (= (and b!7026697 (not res!2868520)) b!7026709))

(assert (= (and b!7026709 (not res!2868510)) b!7026696))

(assert (= (and b!7026696 (not res!2868515)) b!7026704))

(assert (= (and start!678426 condSetEmpty!49007) setIsEmpty!49007))

(assert (= (and start!678426 (not condSetEmpty!49007)) setNonEmpty!49007))

(assert (= setNonEmpty!49007 b!7026690))

(assert (= start!678426 b!7026692))

(assert (= (and start!678426 (is-Cons!67749 s!7408)) b!7026705))

(declare-fun m!7730252 () Bool)

(assert (=> b!7026704 m!7730252))

(declare-fun m!7730254 () Bool)

(assert (=> b!7026704 m!7730254))

(declare-fun m!7730256 () Bool)

(assert (=> b!7026704 m!7730256))

(declare-fun m!7730258 () Bool)

(assert (=> b!7026704 m!7730258))

(declare-fun m!7730260 () Bool)

(assert (=> b!7026704 m!7730260))

(declare-fun m!7730262 () Bool)

(assert (=> b!7026704 m!7730262))

(declare-fun m!7730264 () Bool)

(assert (=> b!7026704 m!7730264))

(declare-fun m!7730266 () Bool)

(assert (=> b!7026704 m!7730266))

(declare-fun m!7730268 () Bool)

(assert (=> b!7026704 m!7730268))

(declare-fun m!7730270 () Bool)

(assert (=> b!7026704 m!7730270))

(declare-fun m!7730272 () Bool)

(assert (=> b!7026704 m!7730272))

(assert (=> b!7026704 m!7730266))

(assert (=> b!7026704 m!7730266))

(assert (=> b!7026704 m!7730266))

(declare-fun m!7730274 () Bool)

(assert (=> b!7026704 m!7730274))

(declare-fun m!7730276 () Bool)

(assert (=> b!7026704 m!7730276))

(declare-fun m!7730278 () Bool)

(assert (=> b!7026704 m!7730278))

(declare-fun m!7730280 () Bool)

(assert (=> b!7026693 m!7730280))

(declare-fun m!7730282 () Bool)

(assert (=> b!7026693 m!7730282))

(declare-fun m!7730284 () Bool)

(assert (=> b!7026693 m!7730284))

(declare-fun m!7730286 () Bool)

(assert (=> b!7026693 m!7730286))

(declare-fun m!7730288 () Bool)

(assert (=> b!7026693 m!7730288))

(declare-fun m!7730290 () Bool)

(assert (=> b!7026691 m!7730290))

(assert (=> b!7026691 m!7730266))

(declare-fun m!7730292 () Bool)

(assert (=> b!7026700 m!7730292))

(assert (=> b!7026700 m!7730288))

(declare-fun m!7730294 () Bool)

(assert (=> b!7026698 m!7730294))

(declare-fun m!7730296 () Bool)

(assert (=> b!7026698 m!7730296))

(declare-fun m!7730298 () Bool)

(assert (=> b!7026698 m!7730298))

(declare-fun m!7730300 () Bool)

(assert (=> b!7026698 m!7730300))

(declare-fun m!7730302 () Bool)

(assert (=> b!7026698 m!7730302))

(declare-fun m!7730304 () Bool)

(assert (=> b!7026698 m!7730304))

(declare-fun m!7730306 () Bool)

(assert (=> b!7026696 m!7730306))

(assert (=> b!7026696 m!7730266))

(assert (=> b!7026697 m!7730290))

(assert (=> b!7026697 m!7730266))

(declare-fun m!7730308 () Bool)

(assert (=> b!7026695 m!7730308))

(declare-fun m!7730310 () Bool)

(assert (=> b!7026695 m!7730310))

(declare-fun m!7730312 () Bool)

(assert (=> b!7026709 m!7730312))

(assert (=> b!7026709 m!7730266))

(assert (=> b!7026709 m!7730266))

(declare-fun m!7730314 () Bool)

(assert (=> b!7026709 m!7730314))

(assert (=> b!7026709 m!7730266))

(assert (=> b!7026709 m!7730266))

(declare-fun m!7730316 () Bool)

(assert (=> b!7026709 m!7730316))

(declare-fun m!7730318 () Bool)

(assert (=> b!7026709 m!7730318))

(declare-fun m!7730320 () Bool)

(assert (=> b!7026709 m!7730320))

(declare-fun m!7730322 () Bool)

(assert (=> b!7026701 m!7730322))

(assert (=> b!7026701 m!7730266))

(declare-fun m!7730324 () Bool)

(assert (=> b!7026701 m!7730324))

(declare-fun m!7730326 () Bool)

(assert (=> b!7026701 m!7730326))

(declare-fun m!7730328 () Bool)

(assert (=> b!7026701 m!7730328))

(assert (=> b!7026701 m!7730266))

(assert (=> b!7026701 m!7730266))

(declare-fun m!7730330 () Bool)

(assert (=> b!7026710 m!7730330))

(declare-fun m!7730332 () Bool)

(assert (=> b!7026710 m!7730332))

(assert (=> b!7026710 m!7730288))

(declare-fun m!7730334 () Bool)

(assert (=> b!7026710 m!7730334))

(declare-fun m!7730336 () Bool)

(assert (=> b!7026703 m!7730336))

(declare-fun m!7730338 () Bool)

(assert (=> setNonEmpty!49007 m!7730338))

(declare-fun m!7730340 () Bool)

(assert (=> b!7026699 m!7730340))

(assert (=> b!7026702 m!7730260))

(assert (=> b!7026702 m!7730312))

(declare-fun m!7730342 () Bool)

(assert (=> b!7026702 m!7730342))

(assert (=> b!7026702 m!7730266))

(assert (=> b!7026702 m!7730266))

(declare-fun m!7730344 () Bool)

(assert (=> start!678426 m!7730344))

(declare-fun m!7730346 () Bool)

(assert (=> start!678426 m!7730346))

(declare-fun m!7730348 () Bool)

(assert (=> start!678426 m!7730348))

(assert (=> b!7026707 m!7730290))

(push 1)

(assert (not start!678426))

(assert (not b!7026700))

(assert (not b!7026697))

(assert (not b!7026698))

(assert tp_is_empty!44121)

(assert (not b!7026705))

(assert (not b!7026703))

(assert (not b!7026693))

(assert (not b!7026692))

(assert (not b!7026701))

(assert (not b!7026690))

(assert (not b!7026704))

(assert (not b!7026709))

(assert (not b!7026710))

(assert (not b!7026696))

(assert (not b!7026691))

(assert (not b!7026695))

(assert (not b!7026702))

(assert (not b!7026707))

(assert (not setNonEmpty!49007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2190776 () Bool)

(declare-fun nullableFct!2714 (Regex!17448) Bool)

(assert (=> d!2190776 (= (nullable!7159 (h!74196 (exprs!6944 lt!2515248))) (nullableFct!2714 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun bs!1868938 () Bool)

(assert (= bs!1868938 d!2190776))

(declare-fun m!7730448 () Bool)

(assert (=> bs!1868938 m!7730448))

(assert (=> b!7026695 d!2190776))

(declare-fun d!2190778 () Bool)

(assert (=> d!2190778 (= (tail!13521 (exprs!6944 lt!2515248)) (t!381631 (exprs!6944 lt!2515248)))))

(assert (=> b!7026695 d!2190778))

(declare-fun d!2190780 () Bool)

(declare-fun c!1306253 () Bool)

(declare-fun isEmpty!39502 (List!67873) Bool)

(assert (=> d!2190780 (= c!1306253 (isEmpty!39502 s!7408))))

(declare-fun e!4224170 () Bool)

(assert (=> d!2190780 (= (matchZipper!2988 lt!2515266 s!7408) e!4224170)))

(declare-fun b!7026790 () Bool)

(declare-fun nullableZipper!2565 ((Set Context!12888)) Bool)

(assert (=> b!7026790 (= e!4224170 (nullableZipper!2565 lt!2515266))))

(declare-fun b!7026791 () Bool)

(declare-fun head!14243 (List!67873) C!35166)

(declare-fun tail!13523 (List!67873) List!67873)

(assert (=> b!7026791 (= e!4224170 (matchZipper!2988 (derivationStepZipper!2904 lt!2515266 (head!14243 s!7408)) (tail!13523 s!7408)))))

(assert (= (and d!2190780 c!1306253) b!7026790))

(assert (= (and d!2190780 (not c!1306253)) b!7026791))

(declare-fun m!7730450 () Bool)

(assert (=> d!2190780 m!7730450))

(declare-fun m!7730452 () Bool)

(assert (=> b!7026790 m!7730452))

(declare-fun m!7730454 () Bool)

(assert (=> b!7026791 m!7730454))

(assert (=> b!7026791 m!7730454))

(declare-fun m!7730456 () Bool)

(assert (=> b!7026791 m!7730456))

(declare-fun m!7730458 () Bool)

(assert (=> b!7026791 m!7730458))

(assert (=> b!7026791 m!7730456))

(assert (=> b!7026791 m!7730458))

(declare-fun m!7730460 () Bool)

(assert (=> b!7026791 m!7730460))

(assert (=> b!7026696 d!2190780))

(declare-fun d!2190782 () Bool)

(declare-fun forall!16350 (List!67872 Int) Bool)

(assert (=> d!2190782 (forall!16350 (++!15481 lt!2515239 (exprs!6944 ct2!306)) lambda!413332)))

(declare-fun lt!2515428 () Unit!161561)

(declare-fun choose!53098 (List!67872 List!67872 Int) Unit!161561)

(assert (=> d!2190782 (= lt!2515428 (choose!53098 lt!2515239 (exprs!6944 ct2!306) lambda!413332))))

(assert (=> d!2190782 (forall!16350 lt!2515239 lambda!413332)))

(assert (=> d!2190782 (= (lemmaConcatPreservesForall!769 lt!2515239 (exprs!6944 ct2!306) lambda!413332) lt!2515428)))

(declare-fun bs!1868939 () Bool)

(assert (= bs!1868939 d!2190782))

(assert (=> bs!1868939 m!7730260))

(assert (=> bs!1868939 m!7730260))

(declare-fun m!7730462 () Bool)

(assert (=> bs!1868939 m!7730462))

(declare-fun m!7730464 () Bool)

(assert (=> bs!1868939 m!7730464))

(declare-fun m!7730466 () Bool)

(assert (=> bs!1868939 m!7730466))

(assert (=> b!7026696 d!2190782))

(declare-fun d!2190784 () Bool)

(declare-fun e!4224173 () Bool)

(assert (=> d!2190784 e!4224173))

(declare-fun res!2868578 () Bool)

(assert (=> d!2190784 (=> (not res!2868578) (not e!4224173))))

(declare-fun lt!2515431 () Context!12888)

(declare-fun dynLambda!27318 (Int Context!12888) Bool)

(assert (=> d!2190784 (= res!2868578 (dynLambda!27318 lambda!413330 lt!2515431))))

(declare-fun getWitness!1443 (List!67874 Int) Context!12888)

(assert (=> d!2190784 (= lt!2515431 (getWitness!1443 (toList!10791 lt!2515257) lambda!413330))))

(declare-fun exists!3362 ((Set Context!12888) Int) Bool)

(assert (=> d!2190784 (exists!3362 lt!2515257 lambda!413330)))

(assert (=> d!2190784 (= (getWitness!1441 lt!2515257 lambda!413330) lt!2515431)))

(declare-fun b!7026794 () Bool)

(assert (=> b!7026794 (= e!4224173 (set.member lt!2515431 lt!2515257))))

(assert (= (and d!2190784 res!2868578) b!7026794))

(declare-fun b_lambda!265711 () Bool)

(assert (=> (not b_lambda!265711) (not d!2190784)))

(declare-fun m!7730468 () Bool)

(assert (=> d!2190784 m!7730468))

(assert (=> d!2190784 m!7730298))

(assert (=> d!2190784 m!7730298))

(declare-fun m!7730470 () Bool)

(assert (=> d!2190784 m!7730470))

(declare-fun m!7730472 () Bool)

(assert (=> d!2190784 m!7730472))

(declare-fun m!7730474 () Bool)

(assert (=> b!7026794 m!7730474))

(assert (=> b!7026698 d!2190784))

(declare-fun bs!1868940 () Bool)

(declare-fun d!2190786 () Bool)

(assert (= bs!1868940 (and d!2190786 b!7026698)))

(declare-fun lambda!413396 () Int)

(assert (=> bs!1868940 (= lambda!413396 lambda!413330)))

(assert (=> d!2190786 true))

(assert (=> d!2190786 (exists!3360 lt!2515241 lambda!413396)))

(declare-fun lt!2515434 () Unit!161561)

(declare-fun choose!53099 (List!67874 List!67873) Unit!161561)

(assert (=> d!2190786 (= lt!2515434 (choose!53099 lt!2515241 s!7408))))

(declare-fun content!13500 (List!67874) (Set Context!12888))

(assert (=> d!2190786 (matchZipper!2988 (content!13500 lt!2515241) s!7408)))

(assert (=> d!2190786 (= (lemmaZipperMatchesExistsMatchingContext!387 lt!2515241 s!7408) lt!2515434)))

(declare-fun bs!1868941 () Bool)

(assert (= bs!1868941 d!2190786))

(declare-fun m!7730476 () Bool)

(assert (=> bs!1868941 m!7730476))

(declare-fun m!7730478 () Bool)

(assert (=> bs!1868941 m!7730478))

(declare-fun m!7730480 () Bool)

(assert (=> bs!1868941 m!7730480))

(assert (=> bs!1868941 m!7730480))

(declare-fun m!7730482 () Bool)

(assert (=> bs!1868941 m!7730482))

(assert (=> b!7026698 d!2190786))

(declare-fun d!2190788 () Bool)

(declare-fun c!1306256 () Bool)

(assert (=> d!2190788 (= c!1306256 (isEmpty!39502 s!7408))))

(declare-fun e!4224174 () Bool)

(assert (=> d!2190788 (= (matchZipper!2988 lt!2515275 s!7408) e!4224174)))

(declare-fun b!7026795 () Bool)

(assert (=> b!7026795 (= e!4224174 (nullableZipper!2565 lt!2515275))))

(declare-fun b!7026796 () Bool)

(assert (=> b!7026796 (= e!4224174 (matchZipper!2988 (derivationStepZipper!2904 lt!2515275 (head!14243 s!7408)) (tail!13523 s!7408)))))

(assert (= (and d!2190788 c!1306256) b!7026795))

(assert (= (and d!2190788 (not c!1306256)) b!7026796))

(assert (=> d!2190788 m!7730450))

(declare-fun m!7730484 () Bool)

(assert (=> b!7026795 m!7730484))

(assert (=> b!7026796 m!7730454))

(assert (=> b!7026796 m!7730454))

(declare-fun m!7730486 () Bool)

(assert (=> b!7026796 m!7730486))

(assert (=> b!7026796 m!7730458))

(assert (=> b!7026796 m!7730486))

(assert (=> b!7026796 m!7730458))

(declare-fun m!7730488 () Bool)

(assert (=> b!7026796 m!7730488))

(assert (=> b!7026698 d!2190788))

(declare-fun d!2190790 () Bool)

(declare-fun e!4224177 () Bool)

(assert (=> d!2190790 e!4224177))

(declare-fun res!2868581 () Bool)

(assert (=> d!2190790 (=> (not res!2868581) (not e!4224177))))

(declare-fun lt!2515437 () List!67874)

(declare-fun noDuplicate!2614 (List!67874) Bool)

(assert (=> d!2190790 (= res!2868581 (noDuplicate!2614 lt!2515437))))

(declare-fun choose!53100 ((Set Context!12888)) List!67874)

(assert (=> d!2190790 (= lt!2515437 (choose!53100 lt!2515257))))

(assert (=> d!2190790 (= (toList!10791 lt!2515257) lt!2515437)))

(declare-fun b!7026799 () Bool)

(assert (=> b!7026799 (= e!4224177 (= (content!13500 lt!2515437) lt!2515257))))

(assert (= (and d!2190790 res!2868581) b!7026799))

(declare-fun m!7730490 () Bool)

(assert (=> d!2190790 m!7730490))

(declare-fun m!7730492 () Bool)

(assert (=> d!2190790 m!7730492))

(declare-fun m!7730494 () Bool)

(assert (=> b!7026799 m!7730494))

(assert (=> b!7026698 d!2190790))

(declare-fun bs!1868942 () Bool)

(declare-fun d!2190792 () Bool)

(assert (= bs!1868942 (and d!2190792 b!7026698)))

(declare-fun lambda!413399 () Int)

(assert (=> bs!1868942 (not (= lambda!413399 lambda!413330))))

(declare-fun bs!1868943 () Bool)

(assert (= bs!1868943 (and d!2190792 d!2190786)))

(assert (=> bs!1868943 (not (= lambda!413399 lambda!413396))))

(assert (=> d!2190792 true))

(declare-fun order!28145 () Int)

(declare-fun dynLambda!27319 (Int Int) Int)

(assert (=> d!2190792 (< (dynLambda!27319 order!28145 lambda!413330) (dynLambda!27319 order!28145 lambda!413399))))

(declare-fun forall!16351 (List!67874 Int) Bool)

(assert (=> d!2190792 (= (exists!3360 lt!2515241 lambda!413330) (not (forall!16351 lt!2515241 lambda!413399)))))

(declare-fun bs!1868944 () Bool)

(assert (= bs!1868944 d!2190792))

(declare-fun m!7730496 () Bool)

(assert (=> bs!1868944 m!7730496))

(assert (=> b!7026698 d!2190792))

(declare-fun d!2190794 () Bool)

(declare-fun c!1306257 () Bool)

(assert (=> d!2190794 (= c!1306257 (isEmpty!39502 (t!381632 s!7408)))))

(declare-fun e!4224178 () Bool)

(assert (=> d!2190794 (= (matchZipper!2988 lt!2515273 (t!381632 s!7408)) e!4224178)))

(declare-fun b!7026802 () Bool)

(assert (=> b!7026802 (= e!4224178 (nullableZipper!2565 lt!2515273))))

(declare-fun b!7026803 () Bool)

(assert (=> b!7026803 (= e!4224178 (matchZipper!2988 (derivationStepZipper!2904 lt!2515273 (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))))))

(assert (= (and d!2190794 c!1306257) b!7026802))

(assert (= (and d!2190794 (not c!1306257)) b!7026803))

(declare-fun m!7730498 () Bool)

(assert (=> d!2190794 m!7730498))

(declare-fun m!7730500 () Bool)

(assert (=> b!7026802 m!7730500))

(declare-fun m!7730502 () Bool)

(assert (=> b!7026803 m!7730502))

(assert (=> b!7026803 m!7730502))

(declare-fun m!7730504 () Bool)

(assert (=> b!7026803 m!7730504))

(declare-fun m!7730506 () Bool)

(assert (=> b!7026803 m!7730506))

(assert (=> b!7026803 m!7730504))

(assert (=> b!7026803 m!7730506))

(declare-fun m!7730508 () Bool)

(assert (=> b!7026803 m!7730508))

(assert (=> b!7026707 d!2190794))

(assert (=> b!7026697 d!2190794))

(assert (=> b!7026697 d!2190782))

(declare-fun d!2190796 () Bool)

(declare-fun choose!53101 ((Set Context!12888) Int) (Set Context!12888))

(assert (=> d!2190796 (= (flatMap!2395 lt!2515266 lambda!413333) (choose!53101 lt!2515266 lambda!413333))))

(declare-fun bs!1868945 () Bool)

(assert (= bs!1868945 d!2190796))

(declare-fun m!7730510 () Bool)

(assert (=> bs!1868945 m!7730510))

(assert (=> b!7026709 d!2190796))

(declare-fun d!2190798 () Bool)

(declare-fun dynLambda!27320 (Int Context!12888) (Set Context!12888))

(assert (=> d!2190798 (= (flatMap!2395 lt!2515266 lambda!413333) (dynLambda!27320 lambda!413333 lt!2515243))))

(declare-fun lt!2515440 () Unit!161561)

(declare-fun choose!53102 ((Set Context!12888) Context!12888 Int) Unit!161561)

(assert (=> d!2190798 (= lt!2515440 (choose!53102 lt!2515266 lt!2515243 lambda!413333))))

(assert (=> d!2190798 (= lt!2515266 (set.insert lt!2515243 (as set.empty (Set Context!12888))))))

(assert (=> d!2190798 (= (lemmaFlatMapOnSingletonSet!1909 lt!2515266 lt!2515243 lambda!413333) lt!2515440)))

(declare-fun b_lambda!265713 () Bool)

(assert (=> (not b_lambda!265713) (not d!2190798)))

(declare-fun bs!1868946 () Bool)

(assert (= bs!1868946 d!2190798))

(assert (=> bs!1868946 m!7730314))

(declare-fun m!7730512 () Bool)

(assert (=> bs!1868946 m!7730512))

(declare-fun m!7730514 () Bool)

(assert (=> bs!1868946 m!7730514))

(assert (=> bs!1868946 m!7730316))

(assert (=> b!7026709 d!2190798))

(declare-fun bs!1868947 () Bool)

(declare-fun d!2190800 () Bool)

(assert (= bs!1868947 (and d!2190800 b!7026693)))

(declare-fun lambda!413402 () Int)

(assert (=> bs!1868947 (= lambda!413402 lambda!413333)))

(assert (=> d!2190800 true))

(assert (=> d!2190800 (= (derivationStepZipper!2904 lt!2515266 (h!74197 s!7408)) (flatMap!2395 lt!2515266 lambda!413402))))

(declare-fun bs!1868948 () Bool)

(assert (= bs!1868948 d!2190800))

(declare-fun m!7730516 () Bool)

(assert (=> bs!1868948 m!7730516))

(assert (=> b!7026709 d!2190800))

(declare-fun b!7026816 () Bool)

(declare-fun e!4224186 () (Set Context!12888))

(declare-fun call!637959 () (Set Context!12888))

(assert (=> b!7026816 (= e!4224186 call!637959)))

(declare-fun b!7026817 () Bool)

(declare-fun e!4224187 () (Set Context!12888))

(assert (=> b!7026817 (= e!4224187 e!4224186)))

(declare-fun c!1306265 () Bool)

(assert (=> b!7026817 (= c!1306265 (is-Cons!67748 (exprs!6944 lt!2515243)))))

(declare-fun b!7026818 () Bool)

(assert (=> b!7026818 (= e!4224186 (as set.empty (Set Context!12888)))))

(declare-fun d!2190802 () Bool)

(declare-fun c!1306264 () Bool)

(declare-fun e!4224185 () Bool)

(assert (=> d!2190802 (= c!1306264 e!4224185)))

(declare-fun res!2868584 () Bool)

(assert (=> d!2190802 (=> (not res!2868584) (not e!4224185))))

(assert (=> d!2190802 (= res!2868584 (is-Cons!67748 (exprs!6944 lt!2515243)))))

(assert (=> d!2190802 (= (derivationStepZipperUp!2058 lt!2515243 (h!74197 s!7408)) e!4224187)))

(declare-fun b!7026819 () Bool)

(assert (=> b!7026819 (= e!4224185 (nullable!7159 (h!74196 (exprs!6944 lt!2515243))))))

(declare-fun bm!637954 () Bool)

(assert (=> bm!637954 (= call!637959 (derivationStepZipperDown!2112 (h!74196 (exprs!6944 lt!2515243)) (Context!12889 (t!381631 (exprs!6944 lt!2515243))) (h!74197 s!7408)))))

(declare-fun b!7026820 () Bool)

(assert (=> b!7026820 (= e!4224187 (set.union call!637959 (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 lt!2515243))) (h!74197 s!7408))))))

(assert (= (and d!2190802 res!2868584) b!7026819))

(assert (= (and d!2190802 c!1306264) b!7026820))

(assert (= (and d!2190802 (not c!1306264)) b!7026817))

(assert (= (and b!7026817 c!1306265) b!7026816))

(assert (= (and b!7026817 (not c!1306265)) b!7026818))

(assert (= (or b!7026820 b!7026816) bm!637954))

(declare-fun m!7730518 () Bool)

(assert (=> b!7026819 m!7730518))

(declare-fun m!7730520 () Bool)

(assert (=> bm!637954 m!7730520))

(declare-fun m!7730522 () Bool)

(assert (=> b!7026820 m!7730522))

(assert (=> b!7026709 d!2190802))

(assert (=> b!7026709 d!2190782))

(declare-fun d!2190804 () Bool)

(declare-fun c!1306266 () Bool)

(assert (=> d!2190804 (= c!1306266 (isEmpty!39502 s!7408))))

(declare-fun e!4224188 () Bool)

(assert (=> d!2190804 (= (matchZipper!2988 lt!2515257 s!7408) e!4224188)))

(declare-fun b!7026821 () Bool)

(assert (=> b!7026821 (= e!4224188 (nullableZipper!2565 lt!2515257))))

(declare-fun b!7026822 () Bool)

(assert (=> b!7026822 (= e!4224188 (matchZipper!2988 (derivationStepZipper!2904 lt!2515257 (head!14243 s!7408)) (tail!13523 s!7408)))))

(assert (= (and d!2190804 c!1306266) b!7026821))

(assert (= (and d!2190804 (not c!1306266)) b!7026822))

(assert (=> d!2190804 m!7730450))

(declare-fun m!7730524 () Bool)

(assert (=> b!7026821 m!7730524))

(assert (=> b!7026822 m!7730454))

(assert (=> b!7026822 m!7730454))

(declare-fun m!7730526 () Bool)

(assert (=> b!7026822 m!7730526))

(assert (=> b!7026822 m!7730458))

(assert (=> b!7026822 m!7730526))

(assert (=> b!7026822 m!7730458))

(declare-fun m!7730528 () Bool)

(assert (=> b!7026822 m!7730528))

(assert (=> start!678426 d!2190804))

(declare-fun bs!1868949 () Bool)

(declare-fun d!2190806 () Bool)

(assert (= bs!1868949 (and d!2190806 b!7026710)))

(declare-fun lambda!413407 () Int)

(assert (=> bs!1868949 (= lambda!413407 lambda!413331)))

(assert (=> d!2190806 true))

(assert (=> d!2190806 (= (appendTo!569 z1!570 ct2!306) (map!15740 z1!570 lambda!413407))))

(declare-fun bs!1868950 () Bool)

(assert (= bs!1868950 d!2190806))

(declare-fun m!7730530 () Bool)

(assert (=> bs!1868950 m!7730530))

(assert (=> start!678426 d!2190806))

(declare-fun bs!1868951 () Bool)

(declare-fun d!2190808 () Bool)

(assert (= bs!1868951 (and d!2190808 b!7026710)))

(declare-fun lambda!413410 () Int)

(assert (=> bs!1868951 (= lambda!413410 lambda!413332)))

(assert (=> d!2190808 (= (inv!86480 ct2!306) (forall!16350 (exprs!6944 ct2!306) lambda!413410))))

(declare-fun bs!1868952 () Bool)

(assert (= bs!1868952 d!2190808))

(declare-fun m!7730532 () Bool)

(assert (=> bs!1868952 m!7730532))

(assert (=> start!678426 d!2190808))

(assert (=> b!7026691 d!2190794))

(assert (=> b!7026691 d!2190782))

(declare-fun b!7026833 () Bool)

(declare-fun res!2868590 () Bool)

(declare-fun e!4224193 () Bool)

(assert (=> b!7026833 (=> (not res!2868590) (not e!4224193))))

(declare-fun lt!2515445 () List!67872)

(declare-fun size!41043 (List!67872) Int)

(assert (=> b!7026833 (= res!2868590 (= (size!41043 lt!2515445) (+ (size!41043 (exprs!6944 lt!2515248)) (size!41043 (exprs!6944 ct2!306)))))))

(declare-fun b!7026831 () Bool)

(declare-fun e!4224194 () List!67872)

(assert (=> b!7026831 (= e!4224194 (exprs!6944 ct2!306))))

(declare-fun b!7026832 () Bool)

(assert (=> b!7026832 (= e!4224194 (Cons!67748 (h!74196 (exprs!6944 lt!2515248)) (++!15481 (t!381631 (exprs!6944 lt!2515248)) (exprs!6944 ct2!306))))))

(declare-fun b!7026834 () Bool)

(assert (=> b!7026834 (= e!4224193 (or (not (= (exprs!6944 ct2!306) Nil!67748)) (= lt!2515445 (exprs!6944 lt!2515248))))))

(declare-fun d!2190810 () Bool)

(assert (=> d!2190810 e!4224193))

(declare-fun res!2868589 () Bool)

(assert (=> d!2190810 (=> (not res!2868589) (not e!4224193))))

(declare-fun content!13501 (List!67872) (Set Regex!17448))

(assert (=> d!2190810 (= res!2868589 (= (content!13501 lt!2515445) (set.union (content!13501 (exprs!6944 lt!2515248)) (content!13501 (exprs!6944 ct2!306)))))))

(assert (=> d!2190810 (= lt!2515445 e!4224194)))

(declare-fun c!1306270 () Bool)

(assert (=> d!2190810 (= c!1306270 (is-Nil!67748 (exprs!6944 lt!2515248)))))

(assert (=> d!2190810 (= (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306)) lt!2515445)))

(assert (= (and d!2190810 c!1306270) b!7026831))

(assert (= (and d!2190810 (not c!1306270)) b!7026832))

(assert (= (and d!2190810 res!2868589) b!7026833))

(assert (= (and b!7026833 res!2868590) b!7026834))

(declare-fun m!7730534 () Bool)

(assert (=> b!7026833 m!7730534))

(declare-fun m!7730536 () Bool)

(assert (=> b!7026833 m!7730536))

(declare-fun m!7730538 () Bool)

(assert (=> b!7026833 m!7730538))

(declare-fun m!7730540 () Bool)

(assert (=> b!7026832 m!7730540))

(declare-fun m!7730542 () Bool)

(assert (=> d!2190810 m!7730542))

(declare-fun m!7730544 () Bool)

(assert (=> d!2190810 m!7730544))

(declare-fun m!7730546 () Bool)

(assert (=> d!2190810 m!7730546))

(assert (=> b!7026710 d!2190810))

(declare-fun d!2190812 () Bool)

(assert (=> d!2190812 (forall!16350 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306)) lambda!413332)))

(declare-fun lt!2515446 () Unit!161561)

(assert (=> d!2190812 (= lt!2515446 (choose!53098 (exprs!6944 lt!2515248) (exprs!6944 ct2!306) lambda!413332))))

(assert (=> d!2190812 (forall!16350 (exprs!6944 lt!2515248) lambda!413332)))

(assert (=> d!2190812 (= (lemmaConcatPreservesForall!769 (exprs!6944 lt!2515248) (exprs!6944 ct2!306) lambda!413332) lt!2515446)))

(declare-fun bs!1868953 () Bool)

(assert (= bs!1868953 d!2190812))

(assert (=> bs!1868953 m!7730332))

(assert (=> bs!1868953 m!7730332))

(declare-fun m!7730548 () Bool)

(assert (=> bs!1868953 m!7730548))

(declare-fun m!7730550 () Bool)

(assert (=> bs!1868953 m!7730550))

(declare-fun m!7730552 () Bool)

(assert (=> bs!1868953 m!7730552))

(assert (=> b!7026710 d!2190812))

(declare-fun d!2190814 () Bool)

(declare-fun e!4224197 () Bool)

(assert (=> d!2190814 e!4224197))

(declare-fun res!2868593 () Bool)

(assert (=> d!2190814 (=> (not res!2868593) (not e!4224197))))

(declare-fun lt!2515449 () Context!12888)

(declare-fun dynLambda!27321 (Int Context!12888) Context!12888)

(assert (=> d!2190814 (= res!2868593 (= lt!2515271 (dynLambda!27321 lambda!413331 lt!2515449)))))

(declare-fun choose!53103 ((Set Context!12888) Int Context!12888) Context!12888)

(assert (=> d!2190814 (= lt!2515449 (choose!53103 z1!570 lambda!413331 lt!2515271))))

(assert (=> d!2190814 (set.member lt!2515271 (map!15740 z1!570 lambda!413331))))

(assert (=> d!2190814 (= (mapPost2!289 z1!570 lambda!413331 lt!2515271) lt!2515449)))

(declare-fun b!7026838 () Bool)

(assert (=> b!7026838 (= e!4224197 (set.member lt!2515449 z1!570))))

(assert (= (and d!2190814 res!2868593) b!7026838))

(declare-fun b_lambda!265715 () Bool)

(assert (=> (not b_lambda!265715) (not d!2190814)))

(declare-fun m!7730554 () Bool)

(assert (=> d!2190814 m!7730554))

(declare-fun m!7730556 () Bool)

(assert (=> d!2190814 m!7730556))

(declare-fun m!7730558 () Bool)

(assert (=> d!2190814 m!7730558))

(declare-fun m!7730560 () Bool)

(assert (=> d!2190814 m!7730560))

(declare-fun m!7730562 () Bool)

(assert (=> b!7026838 m!7730562))

(assert (=> b!7026710 d!2190814))

(assert (=> b!7026700 d!2190812))

(declare-fun b!7026841 () Bool)

(declare-fun res!2868595 () Bool)

(declare-fun e!4224198 () Bool)

(assert (=> b!7026841 (=> (not res!2868595) (not e!4224198))))

(declare-fun lt!2515450 () List!67872)

(assert (=> b!7026841 (= res!2868595 (= (size!41043 lt!2515450) (+ (size!41043 lt!2515239) (size!41043 (exprs!6944 ct2!306)))))))

(declare-fun b!7026839 () Bool)

(declare-fun e!4224199 () List!67872)

(assert (=> b!7026839 (= e!4224199 (exprs!6944 ct2!306))))

(declare-fun b!7026840 () Bool)

(assert (=> b!7026840 (= e!4224199 (Cons!67748 (h!74196 lt!2515239) (++!15481 (t!381631 lt!2515239) (exprs!6944 ct2!306))))))

(declare-fun b!7026842 () Bool)

(assert (=> b!7026842 (= e!4224198 (or (not (= (exprs!6944 ct2!306) Nil!67748)) (= lt!2515450 lt!2515239)))))

(declare-fun d!2190816 () Bool)

(assert (=> d!2190816 e!4224198))

(declare-fun res!2868594 () Bool)

(assert (=> d!2190816 (=> (not res!2868594) (not e!4224198))))

(assert (=> d!2190816 (= res!2868594 (= (content!13501 lt!2515450) (set.union (content!13501 lt!2515239) (content!13501 (exprs!6944 ct2!306)))))))

(assert (=> d!2190816 (= lt!2515450 e!4224199)))

(declare-fun c!1306271 () Bool)

(assert (=> d!2190816 (= c!1306271 (is-Nil!67748 lt!2515239))))

(assert (=> d!2190816 (= (++!15481 lt!2515239 (exprs!6944 ct2!306)) lt!2515450)))

(assert (= (and d!2190816 c!1306271) b!7026839))

(assert (= (and d!2190816 (not c!1306271)) b!7026840))

(assert (= (and d!2190816 res!2868594) b!7026841))

(assert (= (and b!7026841 res!2868595) b!7026842))

(declare-fun m!7730564 () Bool)

(assert (=> b!7026841 m!7730564))

(declare-fun m!7730566 () Bool)

(assert (=> b!7026841 m!7730566))

(assert (=> b!7026841 m!7730538))

(declare-fun m!7730568 () Bool)

(assert (=> b!7026840 m!7730568))

(declare-fun m!7730570 () Bool)

(assert (=> d!2190816 m!7730570))

(declare-fun m!7730572 () Bool)

(assert (=> d!2190816 m!7730572))

(assert (=> d!2190816 m!7730546))

(assert (=> b!7026702 d!2190816))

(assert (=> b!7026702 d!2190782))

(declare-fun bm!637967 () Bool)

(declare-fun call!637974 () (Set Context!12888))

(declare-fun call!637973 () (Set Context!12888))

(assert (=> bm!637967 (= call!637974 call!637973)))

(declare-fun call!637977 () (Set Context!12888))

(declare-fun c!1306282 () Bool)

(declare-fun call!637972 () List!67872)

(declare-fun bm!637968 () Bool)

(assert (=> bm!637968 (= call!637977 (derivationStepZipperDown!2112 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))) (ite c!1306282 lt!2515243 (Context!12889 call!637972)) (h!74197 s!7408)))))

(declare-fun b!7026865 () Bool)

(declare-fun e!4224216 () (Set Context!12888))

(declare-fun e!4224217 () (Set Context!12888))

(assert (=> b!7026865 (= e!4224216 e!4224217)))

(declare-fun c!1306285 () Bool)

(assert (=> b!7026865 (= c!1306285 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun bm!637969 () Bool)

(declare-fun c!1306286 () Bool)

(declare-fun $colon$colon!2560 (List!67872 Regex!17448) List!67872)

(assert (=> bm!637969 (= call!637972 ($colon$colon!2560 (exprs!6944 lt!2515243) (ite (or c!1306286 c!1306285) (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (h!74196 (exprs!6944 lt!2515248)))))))

(declare-fun b!7026866 () Bool)

(declare-fun e!4224212 () (Set Context!12888))

(declare-fun e!4224213 () (Set Context!12888))

(assert (=> b!7026866 (= e!4224212 e!4224213)))

(assert (=> b!7026866 (= c!1306282 (is-Union!17448 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun b!7026867 () Bool)

(declare-fun e!4224215 () Bool)

(assert (=> b!7026867 (= e!4224215 (nullable!7159 (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))))))

(declare-fun bm!637970 () Bool)

(declare-fun call!637976 () (Set Context!12888))

(assert (=> bm!637970 (= call!637976 call!637974)))

(declare-fun b!7026868 () Bool)

(assert (=> b!7026868 (= e!4224217 call!637976)))

(declare-fun b!7026869 () Bool)

(assert (=> b!7026869 (= e!4224213 (set.union call!637977 call!637973))))

(declare-fun call!637975 () List!67872)

(declare-fun bm!637971 () Bool)

(assert (=> bm!637971 (= call!637973 (derivationStepZipperDown!2112 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248)))))) (ite (or c!1306282 c!1306286) lt!2515243 (Context!12889 call!637975)) (h!74197 s!7408)))))

(declare-fun b!7026870 () Bool)

(declare-fun e!4224214 () (Set Context!12888))

(assert (=> b!7026870 (= e!4224214 (as set.empty (Set Context!12888)))))

(declare-fun b!7026871 () Bool)

(assert (=> b!7026871 (= e!4224216 (set.union call!637977 call!637974))))

(declare-fun b!7026872 () Bool)

(assert (=> b!7026872 (= e!4224212 (set.insert lt!2515243 (as set.empty (Set Context!12888))))))

(declare-fun bm!637972 () Bool)

(assert (=> bm!637972 (= call!637975 call!637972)))

(declare-fun d!2190818 () Bool)

(declare-fun c!1306284 () Bool)

(assert (=> d!2190818 (= c!1306284 (and (is-ElementMatch!17448 (h!74196 (exprs!6944 lt!2515248))) (= (c!1306235 (h!74196 (exprs!6944 lt!2515248))) (h!74197 s!7408))))))

(assert (=> d!2190818 (= (derivationStepZipperDown!2112 (h!74196 (exprs!6944 lt!2515248)) lt!2515243 (h!74197 s!7408)) e!4224212)))

(declare-fun b!7026873 () Bool)

(declare-fun c!1306283 () Bool)

(assert (=> b!7026873 (= c!1306283 (is-Star!17448 (h!74196 (exprs!6944 lt!2515248))))))

(assert (=> b!7026873 (= e!4224217 e!4224214)))

(declare-fun b!7026874 () Bool)

(assert (=> b!7026874 (= c!1306286 e!4224215)))

(declare-fun res!2868599 () Bool)

(assert (=> b!7026874 (=> (not res!2868599) (not e!4224215))))

(assert (=> b!7026874 (= res!2868599 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515248))))))

(assert (=> b!7026874 (= e!4224213 e!4224216)))

(declare-fun b!7026875 () Bool)

(assert (=> b!7026875 (= e!4224214 call!637976)))

(assert (= (and d!2190818 c!1306284) b!7026872))

(assert (= (and d!2190818 (not c!1306284)) b!7026866))

(assert (= (and b!7026866 c!1306282) b!7026869))

(assert (= (and b!7026866 (not c!1306282)) b!7026874))

(assert (= (and b!7026874 res!2868599) b!7026867))

(assert (= (and b!7026874 c!1306286) b!7026871))

(assert (= (and b!7026874 (not c!1306286)) b!7026865))

(assert (= (and b!7026865 c!1306285) b!7026868))

(assert (= (and b!7026865 (not c!1306285)) b!7026873))

(assert (= (and b!7026873 c!1306283) b!7026875))

(assert (= (and b!7026873 (not c!1306283)) b!7026870))

(assert (= (or b!7026868 b!7026875) bm!637972))

(assert (= (or b!7026868 b!7026875) bm!637970))

(assert (= (or b!7026871 bm!637970) bm!637967))

(assert (= (or b!7026871 bm!637972) bm!637969))

(assert (= (or b!7026869 b!7026871) bm!637968))

(assert (= (or b!7026869 bm!637967) bm!637971))

(declare-fun m!7730574 () Bool)

(assert (=> bm!637968 m!7730574))

(assert (=> b!7026872 m!7730316))

(declare-fun m!7730576 () Bool)

(assert (=> bm!637971 m!7730576))

(declare-fun m!7730578 () Bool)

(assert (=> b!7026867 m!7730578))

(declare-fun m!7730580 () Bool)

(assert (=> bm!637969 m!7730580))

(assert (=> b!7026702 d!2190818))

(assert (=> b!7026702 d!2190802))

(declare-fun e!4224220 () Bool)

(declare-fun d!2190820 () Bool)

(assert (=> d!2190820 (= (matchZipper!2988 (set.union lt!2515259 lt!2515273) (t!381632 s!7408)) e!4224220)))

(declare-fun res!2868602 () Bool)

(assert (=> d!2190820 (=> res!2868602 e!4224220)))

(assert (=> d!2190820 (= res!2868602 (matchZipper!2988 lt!2515259 (t!381632 s!7408)))))

(declare-fun lt!2515453 () Unit!161561)

(declare-fun choose!53104 ((Set Context!12888) (Set Context!12888) List!67873) Unit!161561)

(assert (=> d!2190820 (= lt!2515453 (choose!53104 lt!2515259 lt!2515273 (t!381632 s!7408)))))

(assert (=> d!2190820 (= (lemmaZipperConcatMatchesSameAsBothZippers!1521 lt!2515259 lt!2515273 (t!381632 s!7408)) lt!2515453)))

(declare-fun b!7026878 () Bool)

(assert (=> b!7026878 (= e!4224220 (matchZipper!2988 lt!2515273 (t!381632 s!7408)))))

(assert (= (and d!2190820 (not res!2868602)) b!7026878))

(declare-fun m!7730582 () Bool)

(assert (=> d!2190820 m!7730582))

(assert (=> d!2190820 m!7730326))

(declare-fun m!7730584 () Bool)

(assert (=> d!2190820 m!7730584))

(assert (=> b!7026878 m!7730290))

(assert (=> b!7026701 d!2190820))

(declare-fun d!2190822 () Bool)

(declare-fun c!1306287 () Bool)

(assert (=> d!2190822 (= c!1306287 (isEmpty!39502 (t!381632 s!7408)))))

(declare-fun e!4224221 () Bool)

(assert (=> d!2190822 (= (matchZipper!2988 lt!2515268 (t!381632 s!7408)) e!4224221)))

(declare-fun b!7026879 () Bool)

(assert (=> b!7026879 (= e!4224221 (nullableZipper!2565 lt!2515268))))

(declare-fun b!7026880 () Bool)

(assert (=> b!7026880 (= e!4224221 (matchZipper!2988 (derivationStepZipper!2904 lt!2515268 (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))))))

(assert (= (and d!2190822 c!1306287) b!7026879))

(assert (= (and d!2190822 (not c!1306287)) b!7026880))

(assert (=> d!2190822 m!7730498))

(declare-fun m!7730586 () Bool)

(assert (=> b!7026879 m!7730586))

(assert (=> b!7026880 m!7730502))

(assert (=> b!7026880 m!7730502))

(declare-fun m!7730588 () Bool)

(assert (=> b!7026880 m!7730588))

(assert (=> b!7026880 m!7730506))

(assert (=> b!7026880 m!7730588))

(assert (=> b!7026880 m!7730506))

(declare-fun m!7730590 () Bool)

(assert (=> b!7026880 m!7730590))

(assert (=> b!7026701 d!2190822))

(declare-fun d!2190824 () Bool)

(declare-fun c!1306288 () Bool)

(assert (=> d!2190824 (= c!1306288 (isEmpty!39502 (t!381632 s!7408)))))

(declare-fun e!4224222 () Bool)

(assert (=> d!2190824 (= (matchZipper!2988 lt!2515278 (t!381632 s!7408)) e!4224222)))

(declare-fun b!7026881 () Bool)

(assert (=> b!7026881 (= e!4224222 (nullableZipper!2565 lt!2515278))))

(declare-fun b!7026882 () Bool)

(assert (=> b!7026882 (= e!4224222 (matchZipper!2988 (derivationStepZipper!2904 lt!2515278 (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))))))

(assert (= (and d!2190824 c!1306288) b!7026881))

(assert (= (and d!2190824 (not c!1306288)) b!7026882))

(assert (=> d!2190824 m!7730498))

(declare-fun m!7730592 () Bool)

(assert (=> b!7026881 m!7730592))

(assert (=> b!7026882 m!7730502))

(assert (=> b!7026882 m!7730502))

(declare-fun m!7730594 () Bool)

(assert (=> b!7026882 m!7730594))

(assert (=> b!7026882 m!7730506))

(assert (=> b!7026882 m!7730594))

(assert (=> b!7026882 m!7730506))

(declare-fun m!7730596 () Bool)

(assert (=> b!7026882 m!7730596))

(assert (=> b!7026701 d!2190824))

(declare-fun d!2190826 () Bool)

(declare-fun c!1306289 () Bool)

(assert (=> d!2190826 (= c!1306289 (isEmpty!39502 (t!381632 s!7408)))))

(declare-fun e!4224223 () Bool)

(assert (=> d!2190826 (= (matchZipper!2988 lt!2515259 (t!381632 s!7408)) e!4224223)))

(declare-fun b!7026883 () Bool)

(assert (=> b!7026883 (= e!4224223 (nullableZipper!2565 lt!2515259))))

(declare-fun b!7026884 () Bool)

(assert (=> b!7026884 (= e!4224223 (matchZipper!2988 (derivationStepZipper!2904 lt!2515259 (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))))))

(assert (= (and d!2190826 c!1306289) b!7026883))

(assert (= (and d!2190826 (not c!1306289)) b!7026884))

(assert (=> d!2190826 m!7730498))

(declare-fun m!7730598 () Bool)

(assert (=> b!7026883 m!7730598))

(assert (=> b!7026884 m!7730502))

(assert (=> b!7026884 m!7730502))

(declare-fun m!7730600 () Bool)

(assert (=> b!7026884 m!7730600))

(assert (=> b!7026884 m!7730506))

(assert (=> b!7026884 m!7730600))

(assert (=> b!7026884 m!7730506))

(declare-fun m!7730602 () Bool)

(assert (=> b!7026884 m!7730602))

(assert (=> b!7026701 d!2190826))

(assert (=> b!7026701 d!2190782))

(declare-fun d!2190828 () Bool)

(assert (=> d!2190828 (= (isEmpty!39500 (exprs!6944 lt!2515248)) (is-Nil!67748 (exprs!6944 lt!2515248)))))

(assert (=> b!7026703 d!2190828))

(declare-fun b!7026885 () Bool)

(declare-fun e!4224225 () (Set Context!12888))

(declare-fun call!637978 () (Set Context!12888))

(assert (=> b!7026885 (= e!4224225 call!637978)))

(declare-fun b!7026886 () Bool)

(declare-fun e!4224226 () (Set Context!12888))

(assert (=> b!7026886 (= e!4224226 e!4224225)))

(declare-fun c!1306291 () Bool)

(assert (=> b!7026886 (= c!1306291 (is-Cons!67748 (exprs!6944 lt!2515249)))))

(declare-fun b!7026887 () Bool)

(assert (=> b!7026887 (= e!4224225 (as set.empty (Set Context!12888)))))

(declare-fun d!2190830 () Bool)

(declare-fun c!1306290 () Bool)

(declare-fun e!4224224 () Bool)

(assert (=> d!2190830 (= c!1306290 e!4224224)))

(declare-fun res!2868603 () Bool)

(assert (=> d!2190830 (=> (not res!2868603) (not e!4224224))))

(assert (=> d!2190830 (= res!2868603 (is-Cons!67748 (exprs!6944 lt!2515249)))))

(assert (=> d!2190830 (= (derivationStepZipperUp!2058 lt!2515249 (h!74197 s!7408)) e!4224226)))

(declare-fun b!7026888 () Bool)

(assert (=> b!7026888 (= e!4224224 (nullable!7159 (h!74196 (exprs!6944 lt!2515249))))))

(declare-fun bm!637973 () Bool)

(assert (=> bm!637973 (= call!637978 (derivationStepZipperDown!2112 (h!74196 (exprs!6944 lt!2515249)) (Context!12889 (t!381631 (exprs!6944 lt!2515249))) (h!74197 s!7408)))))

(declare-fun b!7026889 () Bool)

(assert (=> b!7026889 (= e!4224226 (set.union call!637978 (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 lt!2515249))) (h!74197 s!7408))))))

(assert (= (and d!2190830 res!2868603) b!7026888))

(assert (= (and d!2190830 c!1306290) b!7026889))

(assert (= (and d!2190830 (not c!1306290)) b!7026886))

(assert (= (and b!7026886 c!1306291) b!7026885))

(assert (= (and b!7026886 (not c!1306291)) b!7026887))

(assert (= (or b!7026889 b!7026885) bm!637973))

(declare-fun m!7730604 () Bool)

(assert (=> b!7026888 m!7730604))

(declare-fun m!7730606 () Bool)

(assert (=> bm!637973 m!7730606))

(declare-fun m!7730608 () Bool)

(assert (=> b!7026889 m!7730608))

(assert (=> b!7026693 d!2190830))

(declare-fun bs!1868954 () Bool)

(declare-fun d!2190832 () Bool)

(assert (= bs!1868954 (and d!2190832 b!7026693)))

(declare-fun lambda!413411 () Int)

(assert (=> bs!1868954 (= lambda!413411 lambda!413333)))

(declare-fun bs!1868955 () Bool)

(assert (= bs!1868955 (and d!2190832 d!2190800)))

(assert (=> bs!1868955 (= lambda!413411 lambda!413402)))

(assert (=> d!2190832 true))

(assert (=> d!2190832 (= (derivationStepZipper!2904 lt!2515245 (h!74197 s!7408)) (flatMap!2395 lt!2515245 lambda!413411))))

(declare-fun bs!1868956 () Bool)

(assert (= bs!1868956 d!2190832))

(declare-fun m!7730610 () Bool)

(assert (=> bs!1868956 m!7730610))

(assert (=> b!7026693 d!2190832))

(declare-fun d!2190834 () Bool)

(assert (=> d!2190834 (= (flatMap!2395 lt!2515245 lambda!413333) (dynLambda!27320 lambda!413333 lt!2515249))))

(declare-fun lt!2515454 () Unit!161561)

(assert (=> d!2190834 (= lt!2515454 (choose!53102 lt!2515245 lt!2515249 lambda!413333))))

(assert (=> d!2190834 (= lt!2515245 (set.insert lt!2515249 (as set.empty (Set Context!12888))))))

(assert (=> d!2190834 (= (lemmaFlatMapOnSingletonSet!1909 lt!2515245 lt!2515249 lambda!413333) lt!2515454)))

(declare-fun b_lambda!265717 () Bool)

(assert (=> (not b_lambda!265717) (not d!2190834)))

(declare-fun bs!1868957 () Bool)

(assert (= bs!1868957 d!2190834))

(assert (=> bs!1868957 m!7730280))

(declare-fun m!7730612 () Bool)

(assert (=> bs!1868957 m!7730612))

(declare-fun m!7730614 () Bool)

(assert (=> bs!1868957 m!7730614))

(assert (=> bs!1868957 m!7730292))

(assert (=> b!7026693 d!2190834))

(assert (=> b!7026693 d!2190812))

(declare-fun d!2190836 () Bool)

(assert (=> d!2190836 (= (flatMap!2395 lt!2515245 lambda!413333) (choose!53101 lt!2515245 lambda!413333))))

(declare-fun bs!1868958 () Bool)

(assert (= bs!1868958 d!2190836))

(declare-fun m!7730616 () Bool)

(assert (=> bs!1868958 m!7730616))

(assert (=> b!7026693 d!2190836))

(declare-fun bs!1868959 () Bool)

(declare-fun d!2190838 () Bool)

(assert (= bs!1868959 (and d!2190838 b!7026710)))

(declare-fun lambda!413412 () Int)

(assert (=> bs!1868959 (= lambda!413412 lambda!413332)))

(declare-fun bs!1868960 () Bool)

(assert (= bs!1868960 (and d!2190838 d!2190808)))

(assert (=> bs!1868960 (= lambda!413412 lambda!413410)))

(assert (=> d!2190838 (= (inv!86480 setElem!49007) (forall!16350 (exprs!6944 setElem!49007) lambda!413412))))

(declare-fun bs!1868961 () Bool)

(assert (= bs!1868961 d!2190838))

(declare-fun m!7730618 () Bool)

(assert (=> bs!1868961 m!7730618))

(assert (=> setNonEmpty!49007 d!2190838))

(declare-fun d!2190840 () Bool)

(assert (=> d!2190840 (= (flatMap!2395 lt!2515242 lambda!413333) (choose!53101 lt!2515242 lambda!413333))))

(declare-fun bs!1868962 () Bool)

(assert (= bs!1868962 d!2190840))

(declare-fun m!7730620 () Bool)

(assert (=> bs!1868962 m!7730620))

(assert (=> b!7026704 d!2190840))

(declare-fun d!2190842 () Bool)

(declare-fun lt!2515457 () Int)

(assert (=> d!2190842 (>= lt!2515457 0)))

(declare-fun e!4224229 () Int)

(assert (=> d!2190842 (= lt!2515457 e!4224229)))

(declare-fun c!1306294 () Bool)

(assert (=> d!2190842 (= c!1306294 (is-Cons!67750 lt!2515246))))

(assert (=> d!2190842 (= (zipperDepthTotal!511 lt!2515246) lt!2515457)))

(declare-fun b!7026894 () Bool)

(assert (=> b!7026894 (= e!4224229 (+ (contextDepthTotal!483 (h!74198 lt!2515246)) (zipperDepthTotal!511 (t!381633 lt!2515246))))))

(declare-fun b!7026895 () Bool)

(assert (=> b!7026895 (= e!4224229 0)))

(assert (= (and d!2190842 c!1306294) b!7026894))

(assert (= (and d!2190842 (not c!1306294)) b!7026895))

(declare-fun m!7730622 () Bool)

(assert (=> b!7026894 m!7730622))

(declare-fun m!7730624 () Bool)

(assert (=> b!7026894 m!7730624))

(assert (=> b!7026704 d!2190842))

(declare-fun d!2190844 () Bool)

(declare-fun e!4224230 () Bool)

(assert (=> d!2190844 e!4224230))

(declare-fun res!2868604 () Bool)

(assert (=> d!2190844 (=> (not res!2868604) (not e!4224230))))

(declare-fun lt!2515458 () List!67874)

(assert (=> d!2190844 (= res!2868604 (noDuplicate!2614 lt!2515458))))

(assert (=> d!2190844 (= lt!2515458 (choose!53100 z1!570))))

(assert (=> d!2190844 (= (toList!10791 z1!570) lt!2515458)))

(declare-fun b!7026896 () Bool)

(assert (=> b!7026896 (= e!4224230 (= (content!13500 lt!2515458) z1!570))))

(assert (= (and d!2190844 res!2868604) b!7026896))

(declare-fun m!7730626 () Bool)

(assert (=> d!2190844 m!7730626))

(declare-fun m!7730628 () Bool)

(assert (=> d!2190844 m!7730628))

(declare-fun m!7730630 () Bool)

(assert (=> b!7026896 m!7730630))

(assert (=> b!7026704 d!2190844))

(declare-fun d!2190846 () Bool)

(assert (=> d!2190846 (= (map!15740 lt!2515242 lambda!413331) (set.insert (dynLambda!27321 lambda!413331 lt!2515274) (as set.empty (Set Context!12888))))))

(declare-fun lt!2515461 () Unit!161561)

(declare-fun choose!53105 ((Set Context!12888) Context!12888 Int) Unit!161561)

(assert (=> d!2190846 (= lt!2515461 (choose!53105 lt!2515242 lt!2515274 lambda!413331))))

(assert (=> d!2190846 (= lt!2515242 (set.insert lt!2515274 (as set.empty (Set Context!12888))))))

(assert (=> d!2190846 (= (lemmaMapOnSingletonSet!359 lt!2515242 lt!2515274 lambda!413331) lt!2515461)))

(declare-fun b_lambda!265719 () Bool)

(assert (=> (not b_lambda!265719) (not d!2190846)))

(declare-fun bs!1868963 () Bool)

(assert (= bs!1868963 d!2190846))

(assert (=> bs!1868963 m!7730278))

(assert (=> bs!1868963 m!7730258))

(declare-fun m!7730632 () Bool)

(assert (=> bs!1868963 m!7730632))

(declare-fun m!7730634 () Bool)

(assert (=> bs!1868963 m!7730634))

(assert (=> bs!1868963 m!7730634))

(declare-fun m!7730636 () Bool)

(assert (=> bs!1868963 m!7730636))

(assert (=> b!7026704 d!2190846))

(declare-fun d!2190848 () Bool)

(declare-fun lt!2515464 () Int)

(assert (=> d!2190848 (>= lt!2515464 0)))

(declare-fun e!4224233 () Int)

(assert (=> d!2190848 (= lt!2515464 e!4224233)))

(declare-fun c!1306298 () Bool)

(assert (=> d!2190848 (= c!1306298 (is-Cons!67748 (exprs!6944 lt!2515274)))))

(assert (=> d!2190848 (= (contextDepthTotal!483 lt!2515274) lt!2515464)))

(declare-fun b!7026901 () Bool)

(declare-fun regexDepthTotal!289 (Regex!17448) Int)

(assert (=> b!7026901 (= e!4224233 (+ (regexDepthTotal!289 (h!74196 (exprs!6944 lt!2515274))) (contextDepthTotal!483 (Context!12889 (t!381631 (exprs!6944 lt!2515274))))))))

(declare-fun b!7026902 () Bool)

(assert (=> b!7026902 (= e!4224233 1)))

(assert (= (and d!2190848 c!1306298) b!7026901))

(assert (= (and d!2190848 (not c!1306298)) b!7026902))

(declare-fun m!7730638 () Bool)

(assert (=> b!7026901 m!7730638))

(declare-fun m!7730640 () Bool)

(assert (=> b!7026901 m!7730640))

(assert (=> b!7026704 d!2190848))

(declare-fun b!7026903 () Bool)

(declare-fun e!4224235 () (Set Context!12888))

(declare-fun call!637979 () (Set Context!12888))

(assert (=> b!7026903 (= e!4224235 call!637979)))

(declare-fun b!7026904 () Bool)

(declare-fun e!4224236 () (Set Context!12888))

(assert (=> b!7026904 (= e!4224236 e!4224235)))

(declare-fun c!1306300 () Bool)

(assert (=> b!7026904 (= c!1306300 (is-Cons!67748 (exprs!6944 lt!2515274)))))

(declare-fun b!7026905 () Bool)

(assert (=> b!7026905 (= e!4224235 (as set.empty (Set Context!12888)))))

(declare-fun d!2190850 () Bool)

(declare-fun c!1306299 () Bool)

(declare-fun e!4224234 () Bool)

(assert (=> d!2190850 (= c!1306299 e!4224234)))

(declare-fun res!2868605 () Bool)

(assert (=> d!2190850 (=> (not res!2868605) (not e!4224234))))

(assert (=> d!2190850 (= res!2868605 (is-Cons!67748 (exprs!6944 lt!2515274)))))

(assert (=> d!2190850 (= (derivationStepZipperUp!2058 lt!2515274 (h!74197 s!7408)) e!4224236)))

(declare-fun b!7026906 () Bool)

(assert (=> b!7026906 (= e!4224234 (nullable!7159 (h!74196 (exprs!6944 lt!2515274))))))

(declare-fun bm!637974 () Bool)

(assert (=> bm!637974 (= call!637979 (derivationStepZipperDown!2112 (h!74196 (exprs!6944 lt!2515274)) (Context!12889 (t!381631 (exprs!6944 lt!2515274))) (h!74197 s!7408)))))

(declare-fun b!7026907 () Bool)

(assert (=> b!7026907 (= e!4224236 (set.union call!637979 (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 lt!2515274))) (h!74197 s!7408))))))

(assert (= (and d!2190850 res!2868605) b!7026906))

(assert (= (and d!2190850 c!1306299) b!7026907))

(assert (= (and d!2190850 (not c!1306299)) b!7026904))

(assert (= (and b!7026904 c!1306300) b!7026903))

(assert (= (and b!7026904 (not c!1306300)) b!7026905))

(assert (= (or b!7026907 b!7026903) bm!637974))

(declare-fun m!7730642 () Bool)

(assert (=> b!7026906 m!7730642))

(declare-fun m!7730644 () Bool)

(assert (=> bm!637974 m!7730644))

(declare-fun m!7730646 () Bool)

(assert (=> b!7026907 m!7730646))

(assert (=> b!7026704 d!2190850))

(assert (=> b!7026704 d!2190782))

(declare-fun d!2190852 () Bool)

(declare-fun lt!2515465 () Int)

(assert (=> d!2190852 (>= lt!2515465 0)))

(declare-fun e!4224237 () Int)

(assert (=> d!2190852 (= lt!2515465 e!4224237)))

(declare-fun c!1306301 () Bool)

(assert (=> d!2190852 (= c!1306301 (is-Cons!67748 (exprs!6944 lt!2515248)))))

(assert (=> d!2190852 (= (contextDepthTotal!483 lt!2515248) lt!2515465)))

(declare-fun b!7026908 () Bool)

(assert (=> b!7026908 (= e!4224237 (+ (regexDepthTotal!289 (h!74196 (exprs!6944 lt!2515248))) (contextDepthTotal!483 (Context!12889 (t!381631 (exprs!6944 lt!2515248))))))))

(declare-fun b!7026909 () Bool)

(assert (=> b!7026909 (= e!4224237 1)))

(assert (= (and d!2190852 c!1306301) b!7026908))

(assert (= (and d!2190852 (not c!1306301)) b!7026909))

(declare-fun m!7730648 () Bool)

(assert (=> b!7026908 m!7730648))

(declare-fun m!7730650 () Bool)

(assert (=> b!7026908 m!7730650))

(assert (=> b!7026704 d!2190852))

(declare-fun d!2190854 () Bool)

(declare-fun choose!53106 ((Set Context!12888) Int) (Set Context!12888))

(assert (=> d!2190854 (= (map!15740 lt!2515242 lambda!413331) (choose!53106 lt!2515242 lambda!413331))))

(declare-fun bs!1868964 () Bool)

(assert (= bs!1868964 d!2190854))

(declare-fun m!7730652 () Bool)

(assert (=> bs!1868964 m!7730652))

(assert (=> b!7026704 d!2190854))

(declare-fun d!2190856 () Bool)

(assert (=> d!2190856 (= (flatMap!2395 lt!2515242 lambda!413333) (dynLambda!27320 lambda!413333 lt!2515274))))

(declare-fun lt!2515466 () Unit!161561)

(assert (=> d!2190856 (= lt!2515466 (choose!53102 lt!2515242 lt!2515274 lambda!413333))))

(assert (=> d!2190856 (= lt!2515242 (set.insert lt!2515274 (as set.empty (Set Context!12888))))))

(assert (=> d!2190856 (= (lemmaFlatMapOnSingletonSet!1909 lt!2515242 lt!2515274 lambda!413333) lt!2515466)))

(declare-fun b_lambda!265721 () Bool)

(assert (=> (not b_lambda!265721) (not d!2190856)))

(declare-fun bs!1868965 () Bool)

(assert (= bs!1868965 d!2190856))

(assert (=> bs!1868965 m!7730252))

(declare-fun m!7730654 () Bool)

(assert (=> bs!1868965 m!7730654))

(declare-fun m!7730656 () Bool)

(assert (=> bs!1868965 m!7730656))

(assert (=> bs!1868965 m!7730258))

(assert (=> b!7026704 d!2190856))

(declare-fun d!2190858 () Bool)

(assert (=> d!2190858 (<= (contextDepthTotal!483 lt!2515248) (zipperDepthTotal!511 lt!2515246))))

(declare-fun lt!2515469 () Unit!161561)

(declare-fun choose!53107 (List!67874 Context!12888) Unit!161561)

(assert (=> d!2190858 (= lt!2515469 (choose!53107 lt!2515246 lt!2515248))))

(declare-fun contains!20443 (List!67874 Context!12888) Bool)

(assert (=> d!2190858 (contains!20443 lt!2515246 lt!2515248)))

(assert (=> d!2190858 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!51 lt!2515246 lt!2515248) lt!2515469)))

(declare-fun bs!1868966 () Bool)

(assert (= bs!1868966 d!2190858))

(assert (=> bs!1868966 m!7730254))

(assert (=> bs!1868966 m!7730272))

(declare-fun m!7730658 () Bool)

(assert (=> bs!1868966 m!7730658))

(declare-fun m!7730660 () Bool)

(assert (=> bs!1868966 m!7730660))

(assert (=> b!7026704 d!2190858))

(assert (=> b!7026704 d!2190816))

(declare-fun b!7026914 () Bool)

(declare-fun e!4224240 () Bool)

(declare-fun tp!1935648 () Bool)

(declare-fun tp!1935649 () Bool)

(assert (=> b!7026914 (= e!4224240 (and tp!1935648 tp!1935649))))

(assert (=> b!7026690 (= tp!1935629 e!4224240)))

(assert (= (and b!7026690 (is-Cons!67748 (exprs!6944 setElem!49007))) b!7026914))

(declare-fun b!7026919 () Bool)

(declare-fun e!4224243 () Bool)

(declare-fun tp!1935652 () Bool)

(assert (=> b!7026919 (= e!4224243 (and tp_is_empty!44121 tp!1935652))))

(assert (=> b!7026705 (= tp!1935628 e!4224243)))

(assert (= (and b!7026705 (is-Cons!67749 (t!381632 s!7408))) b!7026919))

(declare-fun b!7026920 () Bool)

(declare-fun e!4224244 () Bool)

(declare-fun tp!1935653 () Bool)

(declare-fun tp!1935654 () Bool)

(assert (=> b!7026920 (= e!4224244 (and tp!1935653 tp!1935654))))

(assert (=> b!7026692 (= tp!1935631 e!4224244)))

(assert (= (and b!7026692 (is-Cons!67748 (exprs!6944 ct2!306))) b!7026920))

(declare-fun condSetEmpty!49013 () Bool)

(assert (=> setNonEmpty!49007 (= condSetEmpty!49013 (= setRest!49007 (as set.empty (Set Context!12888))))))

(declare-fun setRes!49013 () Bool)

(assert (=> setNonEmpty!49007 (= tp!1935630 setRes!49013)))

(declare-fun setIsEmpty!49013 () Bool)

(assert (=> setIsEmpty!49013 setRes!49013))

(declare-fun tp!1935660 () Bool)

(declare-fun e!4224247 () Bool)

(declare-fun setNonEmpty!49013 () Bool)

(declare-fun setElem!49013 () Context!12888)

(assert (=> setNonEmpty!49013 (= setRes!49013 (and tp!1935660 (inv!86480 setElem!49013) e!4224247))))

(declare-fun setRest!49013 () (Set Context!12888))

(assert (=> setNonEmpty!49013 (= setRest!49007 (set.union (set.insert setElem!49013 (as set.empty (Set Context!12888))) setRest!49013))))

(declare-fun b!7026925 () Bool)

(declare-fun tp!1935659 () Bool)

(assert (=> b!7026925 (= e!4224247 tp!1935659)))

(assert (= (and setNonEmpty!49007 condSetEmpty!49013) setIsEmpty!49013))

(assert (= (and setNonEmpty!49007 (not condSetEmpty!49013)) setNonEmpty!49013))

(assert (= setNonEmpty!49013 b!7026925))

(declare-fun m!7730662 () Bool)

(assert (=> setNonEmpty!49013 m!7730662))

(declare-fun b_lambda!265723 () Bool)

(assert (= b_lambda!265719 (or b!7026710 b_lambda!265723)))

(declare-fun bs!1868967 () Bool)

(declare-fun d!2190860 () Bool)

(assert (= bs!1868967 (and d!2190860 b!7026710)))

(declare-fun lt!2515470 () Unit!161561)

(assert (=> bs!1868967 (= lt!2515470 (lemmaConcatPreservesForall!769 (exprs!6944 lt!2515274) (exprs!6944 ct2!306) lambda!413332))))

(assert (=> bs!1868967 (= (dynLambda!27321 lambda!413331 lt!2515274) (Context!12889 (++!15481 (exprs!6944 lt!2515274) (exprs!6944 ct2!306))))))

(declare-fun m!7730664 () Bool)

(assert (=> bs!1868967 m!7730664))

(declare-fun m!7730666 () Bool)

(assert (=> bs!1868967 m!7730666))

(assert (=> d!2190846 d!2190860))

(declare-fun b_lambda!265725 () Bool)

(assert (= b_lambda!265711 (or b!7026698 b_lambda!265725)))

(declare-fun bs!1868968 () Bool)

(declare-fun d!2190862 () Bool)

(assert (= bs!1868968 (and d!2190862 b!7026698)))

(assert (=> bs!1868968 (= (dynLambda!27318 lambda!413330 lt!2515431) (matchZipper!2988 (set.insert lt!2515431 (as set.empty (Set Context!12888))) s!7408))))

(declare-fun m!7730668 () Bool)

(assert (=> bs!1868968 m!7730668))

(assert (=> bs!1868968 m!7730668))

(declare-fun m!7730670 () Bool)

(assert (=> bs!1868968 m!7730670))

(assert (=> d!2190784 d!2190862))

(declare-fun b_lambda!265727 () Bool)

(assert (= b_lambda!265713 (or b!7026693 b_lambda!265727)))

(declare-fun bs!1868969 () Bool)

(declare-fun d!2190864 () Bool)

(assert (= bs!1868969 (and d!2190864 b!7026693)))

(assert (=> bs!1868969 (= (dynLambda!27320 lambda!413333 lt!2515243) (derivationStepZipperUp!2058 lt!2515243 (h!74197 s!7408)))))

(assert (=> bs!1868969 m!7730312))

(assert (=> d!2190798 d!2190864))

(declare-fun b_lambda!265729 () Bool)

(assert (= b_lambda!265721 (or b!7026693 b_lambda!265729)))

(declare-fun bs!1868970 () Bool)

(declare-fun d!2190866 () Bool)

(assert (= bs!1868970 (and d!2190866 b!7026693)))

(assert (=> bs!1868970 (= (dynLambda!27320 lambda!413333 lt!2515274) (derivationStepZipperUp!2058 lt!2515274 (h!74197 s!7408)))))

(assert (=> bs!1868970 m!7730270))

(assert (=> d!2190856 d!2190866))

(declare-fun b_lambda!265731 () Bool)

(assert (= b_lambda!265717 (or b!7026693 b_lambda!265731)))

(declare-fun bs!1868971 () Bool)

(declare-fun d!2190868 () Bool)

(assert (= bs!1868971 (and d!2190868 b!7026693)))

(assert (=> bs!1868971 (= (dynLambda!27320 lambda!413333 lt!2515249) (derivationStepZipperUp!2058 lt!2515249 (h!74197 s!7408)))))

(assert (=> bs!1868971 m!7730286))

(assert (=> d!2190834 d!2190868))

(declare-fun b_lambda!265733 () Bool)

(assert (= b_lambda!265715 (or b!7026710 b_lambda!265733)))

(declare-fun bs!1868972 () Bool)

(declare-fun d!2190870 () Bool)

(assert (= bs!1868972 (and d!2190870 b!7026710)))

(declare-fun lt!2515471 () Unit!161561)

(assert (=> bs!1868972 (= lt!2515471 (lemmaConcatPreservesForall!769 (exprs!6944 lt!2515449) (exprs!6944 ct2!306) lambda!413332))))

(assert (=> bs!1868972 (= (dynLambda!27321 lambda!413331 lt!2515449) (Context!12889 (++!15481 (exprs!6944 lt!2515449) (exprs!6944 ct2!306))))))

(declare-fun m!7730672 () Bool)

(assert (=> bs!1868972 m!7730672))

(declare-fun m!7730674 () Bool)

(assert (=> bs!1868972 m!7730674))

(assert (=> d!2190814 d!2190870))

(push 1)

(assert (not bm!637971))

(assert (not b!7026894))

(assert (not d!2190784))

(assert (not b_lambda!265723))

(assert (not d!2190808))

(assert (not b!7026791))

(assert (not d!2190836))

(assert (not d!2190788))

(assert (not d!2190826))

(assert (not b_lambda!265727))

(assert (not b!7026920))

(assert (not d!2190794))

(assert (not bs!1868967))

(assert (not bs!1868970))

(assert (not d!2190824))

(assert (not bs!1868968))

(assert (not bs!1868972))

(assert (not b!7026914))

(assert (not b_lambda!265733))

(assert (not d!2190846))

(assert (not d!2190786))

(assert (not bm!637969))

(assert (not b!7026882))

(assert (not d!2190804))

(assert (not d!2190782))

(assert (not d!2190838))

(assert (not d!2190806))

(assert (not b!7026908))

(assert (not b!7026832))

(assert (not b!7026883))

(assert tp_is_empty!44121)

(assert (not d!2190792))

(assert (not b!7026840))

(assert (not d!2190844))

(assert (not b_lambda!265725))

(assert (not b!7026820))

(assert (not d!2190816))

(assert (not b!7026901))

(assert (not d!2190820))

(assert (not b!7026795))

(assert (not d!2190834))

(assert (not d!2190800))

(assert (not bm!637954))

(assert (not d!2190776))

(assert (not b!7026819))

(assert (not b!7026884))

(assert (not b!7026833))

(assert (not b!7026919))

(assert (not b!7026907))

(assert (not b!7026799))

(assert (not b!7026889))

(assert (not b!7026881))

(assert (not b_lambda!265729))

(assert (not bm!637974))

(assert (not b!7026925))

(assert (not b!7026821))

(assert (not bs!1868969))

(assert (not b!7026803))

(assert (not d!2190812))

(assert (not d!2190822))

(assert (not d!2190840))

(assert (not d!2190814))

(assert (not b!7026802))

(assert (not d!2190858))

(assert (not d!2190832))

(assert (not bm!637973))

(assert (not b_lambda!265731))

(assert (not d!2190854))

(assert (not bm!637968))

(assert (not setNonEmpty!49013))

(assert (not b!7026906))

(assert (not d!2190798))

(assert (not bs!1868971))

(assert (not b!7026879))

(assert (not b!7026880))

(assert (not d!2190796))

(assert (not b!7026790))

(assert (not d!2190810))

(assert (not d!2190790))

(assert (not b!7026878))

(assert (not b!7026896))

(assert (not b!7026822))

(assert (not b!7026841))

(assert (not d!2190780))

(assert (not b!7026796))

(assert (not d!2190856))

(assert (not b!7026888))

(assert (not b!7026867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2190968 () Bool)

(declare-fun lt!2515518 () Int)

(assert (=> d!2190968 (>= lt!2515518 0)))

(declare-fun e!4224328 () Int)

(assert (=> d!2190968 (= lt!2515518 e!4224328)))

(declare-fun c!1306355 () Bool)

(assert (=> d!2190968 (= c!1306355 (is-Cons!67748 (exprs!6944 (h!74198 lt!2515246))))))

(assert (=> d!2190968 (= (contextDepthTotal!483 (h!74198 lt!2515246)) lt!2515518)))

(declare-fun b!7027066 () Bool)

(assert (=> b!7027066 (= e!4224328 (+ (regexDepthTotal!289 (h!74196 (exprs!6944 (h!74198 lt!2515246)))) (contextDepthTotal!483 (Context!12889 (t!381631 (exprs!6944 (h!74198 lt!2515246)))))))))

(declare-fun b!7027067 () Bool)

(assert (=> b!7027067 (= e!4224328 1)))

(assert (= (and d!2190968 c!1306355) b!7027066))

(assert (= (and d!2190968 (not c!1306355)) b!7027067))

(declare-fun m!7730904 () Bool)

(assert (=> b!7027066 m!7730904))

(declare-fun m!7730906 () Bool)

(assert (=> b!7027066 m!7730906))

(assert (=> b!7026894 d!2190968))

(declare-fun d!2190970 () Bool)

(declare-fun lt!2515519 () Int)

(assert (=> d!2190970 (>= lt!2515519 0)))

(declare-fun e!4224329 () Int)

(assert (=> d!2190970 (= lt!2515519 e!4224329)))

(declare-fun c!1306356 () Bool)

(assert (=> d!2190970 (= c!1306356 (is-Cons!67750 (t!381633 lt!2515246)))))

(assert (=> d!2190970 (= (zipperDepthTotal!511 (t!381633 lt!2515246)) lt!2515519)))

(declare-fun b!7027068 () Bool)

(assert (=> b!7027068 (= e!4224329 (+ (contextDepthTotal!483 (h!74198 (t!381633 lt!2515246))) (zipperDepthTotal!511 (t!381633 (t!381633 lt!2515246)))))))

(declare-fun b!7027069 () Bool)

(assert (=> b!7027069 (= e!4224329 0)))

(assert (= (and d!2190970 c!1306356) b!7027068))

(assert (= (and d!2190970 (not c!1306356)) b!7027069))

(declare-fun m!7730908 () Bool)

(assert (=> b!7027068 m!7730908))

(declare-fun m!7730910 () Bool)

(assert (=> b!7027068 m!7730910))

(assert (=> b!7026894 d!2190970))

(declare-fun bs!1869008 () Bool)

(declare-fun d!2190972 () Bool)

(assert (= bs!1869008 (and d!2190972 b!7026698)))

(declare-fun lambda!413434 () Int)

(assert (=> bs!1869008 (not (= lambda!413434 lambda!413330))))

(declare-fun bs!1869009 () Bool)

(assert (= bs!1869009 (and d!2190972 d!2190786)))

(assert (=> bs!1869009 (not (= lambda!413434 lambda!413396))))

(declare-fun bs!1869010 () Bool)

(assert (= bs!1869010 (and d!2190972 d!2190792)))

(assert (=> bs!1869010 (not (= lambda!413434 lambda!413399))))

(assert (=> d!2190972 (= (nullableZipper!2565 lt!2515273) (exists!3362 lt!2515273 lambda!413434))))

(declare-fun bs!1869011 () Bool)

(assert (= bs!1869011 d!2190972))

(declare-fun m!7730912 () Bool)

(assert (=> bs!1869011 m!7730912))

(assert (=> b!7026802 d!2190972))

(declare-fun d!2190974 () Bool)

(assert (=> d!2190974 (= (isEmpty!39502 s!7408) (is-Nil!67749 s!7408))))

(assert (=> d!2190788 d!2190974))

(declare-fun d!2190976 () Bool)

(assert (=> d!2190976 (= (nullable!7159 (h!74196 (exprs!6944 lt!2515249))) (nullableFct!2714 (h!74196 (exprs!6944 lt!2515249))))))

(declare-fun bs!1869012 () Bool)

(assert (= bs!1869012 d!2190976))

(declare-fun m!7730914 () Bool)

(assert (=> bs!1869012 m!7730914))

(assert (=> b!7026888 d!2190976))

(declare-fun d!2190978 () Bool)

(declare-fun res!2868639 () Bool)

(declare-fun e!4224334 () Bool)

(assert (=> d!2190978 (=> res!2868639 e!4224334)))

(assert (=> d!2190978 (= res!2868639 (is-Nil!67748 (exprs!6944 ct2!306)))))

(assert (=> d!2190978 (= (forall!16350 (exprs!6944 ct2!306) lambda!413410) e!4224334)))

(declare-fun b!7027074 () Bool)

(declare-fun e!4224335 () Bool)

(assert (=> b!7027074 (= e!4224334 e!4224335)))

(declare-fun res!2868640 () Bool)

(assert (=> b!7027074 (=> (not res!2868640) (not e!4224335))))

(declare-fun dynLambda!27326 (Int Regex!17448) Bool)

(assert (=> b!7027074 (= res!2868640 (dynLambda!27326 lambda!413410 (h!74196 (exprs!6944 ct2!306))))))

(declare-fun b!7027075 () Bool)

(assert (=> b!7027075 (= e!4224335 (forall!16350 (t!381631 (exprs!6944 ct2!306)) lambda!413410))))

(assert (= (and d!2190978 (not res!2868639)) b!7027074))

(assert (= (and b!7027074 res!2868640) b!7027075))

(declare-fun b_lambda!265759 () Bool)

(assert (=> (not b_lambda!265759) (not b!7027074)))

(declare-fun m!7730916 () Bool)

(assert (=> b!7027074 m!7730916))

(declare-fun m!7730918 () Bool)

(assert (=> b!7027075 m!7730918))

(assert (=> d!2190808 d!2190978))

(declare-fun b!7027076 () Bool)

(declare-fun e!4224337 () (Set Context!12888))

(declare-fun call!638003 () (Set Context!12888))

(assert (=> b!7027076 (= e!4224337 call!638003)))

(declare-fun b!7027077 () Bool)

(declare-fun e!4224338 () (Set Context!12888))

(assert (=> b!7027077 (= e!4224338 e!4224337)))

(declare-fun c!1306360 () Bool)

(assert (=> b!7027077 (= c!1306360 (is-Cons!67748 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515249))))))))

(declare-fun b!7027078 () Bool)

(assert (=> b!7027078 (= e!4224337 (as set.empty (Set Context!12888)))))

(declare-fun d!2190980 () Bool)

(declare-fun c!1306359 () Bool)

(declare-fun e!4224336 () Bool)

(assert (=> d!2190980 (= c!1306359 e!4224336)))

(declare-fun res!2868641 () Bool)

(assert (=> d!2190980 (=> (not res!2868641) (not e!4224336))))

(assert (=> d!2190980 (= res!2868641 (is-Cons!67748 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515249))))))))

(assert (=> d!2190980 (= (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 lt!2515249))) (h!74197 s!7408)) e!4224338)))

(declare-fun b!7027079 () Bool)

(assert (=> b!7027079 (= e!4224336 (nullable!7159 (h!74196 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515249)))))))))

(declare-fun bm!637998 () Bool)

(assert (=> bm!637998 (= call!638003 (derivationStepZipperDown!2112 (h!74196 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515249))))) (Context!12889 (t!381631 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515249)))))) (h!74197 s!7408)))))

(declare-fun b!7027080 () Bool)

(assert (=> b!7027080 (= e!4224338 (set.union call!638003 (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515249)))))) (h!74197 s!7408))))))

(assert (= (and d!2190980 res!2868641) b!7027079))

(assert (= (and d!2190980 c!1306359) b!7027080))

(assert (= (and d!2190980 (not c!1306359)) b!7027077))

(assert (= (and b!7027077 c!1306360) b!7027076))

(assert (= (and b!7027077 (not c!1306360)) b!7027078))

(assert (= (or b!7027080 b!7027076) bm!637998))

(declare-fun m!7730920 () Bool)

(assert (=> b!7027079 m!7730920))

(declare-fun m!7730922 () Bool)

(assert (=> bm!637998 m!7730922))

(declare-fun m!7730924 () Bool)

(assert (=> b!7027080 m!7730924))

(assert (=> b!7026889 d!2190980))

(declare-fun d!2190982 () Bool)

(declare-fun c!1306363 () Bool)

(assert (=> d!2190982 (= c!1306363 (is-Nil!67748 lt!2515450))))

(declare-fun e!4224341 () (Set Regex!17448))

(assert (=> d!2190982 (= (content!13501 lt!2515450) e!4224341)))

(declare-fun b!7027085 () Bool)

(assert (=> b!7027085 (= e!4224341 (as set.empty (Set Regex!17448)))))

(declare-fun b!7027086 () Bool)

(assert (=> b!7027086 (= e!4224341 (set.union (set.insert (h!74196 lt!2515450) (as set.empty (Set Regex!17448))) (content!13501 (t!381631 lt!2515450))))))

(assert (= (and d!2190982 c!1306363) b!7027085))

(assert (= (and d!2190982 (not c!1306363)) b!7027086))

(declare-fun m!7730926 () Bool)

(assert (=> b!7027086 m!7730926))

(declare-fun m!7730928 () Bool)

(assert (=> b!7027086 m!7730928))

(assert (=> d!2190816 d!2190982))

(declare-fun d!2190984 () Bool)

(declare-fun c!1306364 () Bool)

(assert (=> d!2190984 (= c!1306364 (is-Nil!67748 lt!2515239))))

(declare-fun e!4224342 () (Set Regex!17448))

(assert (=> d!2190984 (= (content!13501 lt!2515239) e!4224342)))

(declare-fun b!7027087 () Bool)

(assert (=> b!7027087 (= e!4224342 (as set.empty (Set Regex!17448)))))

(declare-fun b!7027088 () Bool)

(assert (=> b!7027088 (= e!4224342 (set.union (set.insert (h!74196 lt!2515239) (as set.empty (Set Regex!17448))) (content!13501 (t!381631 lt!2515239))))))

(assert (= (and d!2190984 c!1306364) b!7027087))

(assert (= (and d!2190984 (not c!1306364)) b!7027088))

(declare-fun m!7730930 () Bool)

(assert (=> b!7027088 m!7730930))

(declare-fun m!7730932 () Bool)

(assert (=> b!7027088 m!7730932))

(assert (=> d!2190816 d!2190984))

(declare-fun d!2190986 () Bool)

(declare-fun c!1306365 () Bool)

(assert (=> d!2190986 (= c!1306365 (is-Nil!67748 (exprs!6944 ct2!306)))))

(declare-fun e!4224343 () (Set Regex!17448))

(assert (=> d!2190986 (= (content!13501 (exprs!6944 ct2!306)) e!4224343)))

(declare-fun b!7027089 () Bool)

(assert (=> b!7027089 (= e!4224343 (as set.empty (Set Regex!17448)))))

(declare-fun b!7027090 () Bool)

(assert (=> b!7027090 (= e!4224343 (set.union (set.insert (h!74196 (exprs!6944 ct2!306)) (as set.empty (Set Regex!17448))) (content!13501 (t!381631 (exprs!6944 ct2!306)))))))

(assert (= (and d!2190986 c!1306365) b!7027089))

(assert (= (and d!2190986 (not c!1306365)) b!7027090))

(declare-fun m!7730934 () Bool)

(assert (=> b!7027090 m!7730934))

(declare-fun m!7730936 () Bool)

(assert (=> b!7027090 m!7730936))

(assert (=> d!2190816 d!2190986))

(declare-fun d!2190988 () Bool)

(assert (=> d!2190988 (= (isEmpty!39502 (t!381632 s!7408)) (is-Nil!67749 (t!381632 s!7408)))))

(assert (=> d!2190824 d!2190988))

(declare-fun d!2190990 () Bool)

(declare-fun c!1306366 () Bool)

(assert (=> d!2190990 (= c!1306366 (isEmpty!39502 (tail!13523 s!7408)))))

(declare-fun e!4224344 () Bool)

(assert (=> d!2190990 (= (matchZipper!2988 (derivationStepZipper!2904 lt!2515275 (head!14243 s!7408)) (tail!13523 s!7408)) e!4224344)))

(declare-fun b!7027091 () Bool)

(assert (=> b!7027091 (= e!4224344 (nullableZipper!2565 (derivationStepZipper!2904 lt!2515275 (head!14243 s!7408))))))

(declare-fun b!7027092 () Bool)

(assert (=> b!7027092 (= e!4224344 (matchZipper!2988 (derivationStepZipper!2904 (derivationStepZipper!2904 lt!2515275 (head!14243 s!7408)) (head!14243 (tail!13523 s!7408))) (tail!13523 (tail!13523 s!7408))))))

(assert (= (and d!2190990 c!1306366) b!7027091))

(assert (= (and d!2190990 (not c!1306366)) b!7027092))

(assert (=> d!2190990 m!7730458))

(declare-fun m!7730938 () Bool)

(assert (=> d!2190990 m!7730938))

(assert (=> b!7027091 m!7730486))

(declare-fun m!7730940 () Bool)

(assert (=> b!7027091 m!7730940))

(assert (=> b!7027092 m!7730458))

(declare-fun m!7730942 () Bool)

(assert (=> b!7027092 m!7730942))

(assert (=> b!7027092 m!7730486))

(assert (=> b!7027092 m!7730942))

(declare-fun m!7730944 () Bool)

(assert (=> b!7027092 m!7730944))

(assert (=> b!7027092 m!7730458))

(declare-fun m!7730946 () Bool)

(assert (=> b!7027092 m!7730946))

(assert (=> b!7027092 m!7730944))

(assert (=> b!7027092 m!7730946))

(declare-fun m!7730948 () Bool)

(assert (=> b!7027092 m!7730948))

(assert (=> b!7026796 d!2190990))

(declare-fun bs!1869013 () Bool)

(declare-fun d!2190992 () Bool)

(assert (= bs!1869013 (and d!2190992 b!7026693)))

(declare-fun lambda!413435 () Int)

(assert (=> bs!1869013 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413435 lambda!413333))))

(declare-fun bs!1869014 () Bool)

(assert (= bs!1869014 (and d!2190992 d!2190800)))

(assert (=> bs!1869014 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413435 lambda!413402))))

(declare-fun bs!1869015 () Bool)

(assert (= bs!1869015 (and d!2190992 d!2190832)))

(assert (=> bs!1869015 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413435 lambda!413411))))

(assert (=> d!2190992 true))

(assert (=> d!2190992 (= (derivationStepZipper!2904 lt!2515275 (head!14243 s!7408)) (flatMap!2395 lt!2515275 lambda!413435))))

(declare-fun bs!1869016 () Bool)

(assert (= bs!1869016 d!2190992))

(declare-fun m!7730950 () Bool)

(assert (=> bs!1869016 m!7730950))

(assert (=> b!7026796 d!2190992))

(declare-fun d!2190994 () Bool)

(assert (=> d!2190994 (= (head!14243 s!7408) (h!74197 s!7408))))

(assert (=> b!7026796 d!2190994))

(declare-fun d!2190996 () Bool)

(assert (=> d!2190996 (= (tail!13523 s!7408) (t!381632 s!7408))))

(assert (=> b!7026796 d!2190996))

(declare-fun d!2190998 () Bool)

(assert (=> d!2190998 (forall!16350 (++!15481 (exprs!6944 lt!2515449) (exprs!6944 ct2!306)) lambda!413332)))

(declare-fun lt!2515520 () Unit!161561)

(assert (=> d!2190998 (= lt!2515520 (choose!53098 (exprs!6944 lt!2515449) (exprs!6944 ct2!306) lambda!413332))))

(assert (=> d!2190998 (forall!16350 (exprs!6944 lt!2515449) lambda!413332)))

(assert (=> d!2190998 (= (lemmaConcatPreservesForall!769 (exprs!6944 lt!2515449) (exprs!6944 ct2!306) lambda!413332) lt!2515520)))

(declare-fun bs!1869017 () Bool)

(assert (= bs!1869017 d!2190998))

(assert (=> bs!1869017 m!7730674))

(assert (=> bs!1869017 m!7730674))

(declare-fun m!7730952 () Bool)

(assert (=> bs!1869017 m!7730952))

(declare-fun m!7730954 () Bool)

(assert (=> bs!1869017 m!7730954))

(declare-fun m!7730956 () Bool)

(assert (=> bs!1869017 m!7730956))

(assert (=> bs!1868972 d!2190998))

(declare-fun b!7027095 () Bool)

(declare-fun res!2868643 () Bool)

(declare-fun e!4224345 () Bool)

(assert (=> b!7027095 (=> (not res!2868643) (not e!4224345))))

(declare-fun lt!2515521 () List!67872)

(assert (=> b!7027095 (= res!2868643 (= (size!41043 lt!2515521) (+ (size!41043 (exprs!6944 lt!2515449)) (size!41043 (exprs!6944 ct2!306)))))))

(declare-fun b!7027093 () Bool)

(declare-fun e!4224346 () List!67872)

(assert (=> b!7027093 (= e!4224346 (exprs!6944 ct2!306))))

(declare-fun b!7027094 () Bool)

(assert (=> b!7027094 (= e!4224346 (Cons!67748 (h!74196 (exprs!6944 lt!2515449)) (++!15481 (t!381631 (exprs!6944 lt!2515449)) (exprs!6944 ct2!306))))))

(declare-fun b!7027096 () Bool)

(assert (=> b!7027096 (= e!4224345 (or (not (= (exprs!6944 ct2!306) Nil!67748)) (= lt!2515521 (exprs!6944 lt!2515449))))))

(declare-fun d!2191000 () Bool)

(assert (=> d!2191000 e!4224345))

(declare-fun res!2868642 () Bool)

(assert (=> d!2191000 (=> (not res!2868642) (not e!4224345))))

(assert (=> d!2191000 (= res!2868642 (= (content!13501 lt!2515521) (set.union (content!13501 (exprs!6944 lt!2515449)) (content!13501 (exprs!6944 ct2!306)))))))

(assert (=> d!2191000 (= lt!2515521 e!4224346)))

(declare-fun c!1306367 () Bool)

(assert (=> d!2191000 (= c!1306367 (is-Nil!67748 (exprs!6944 lt!2515449)))))

(assert (=> d!2191000 (= (++!15481 (exprs!6944 lt!2515449) (exprs!6944 ct2!306)) lt!2515521)))

(assert (= (and d!2191000 c!1306367) b!7027093))

(assert (= (and d!2191000 (not c!1306367)) b!7027094))

(assert (= (and d!2191000 res!2868642) b!7027095))

(assert (= (and b!7027095 res!2868643) b!7027096))

(declare-fun m!7730958 () Bool)

(assert (=> b!7027095 m!7730958))

(declare-fun m!7730960 () Bool)

(assert (=> b!7027095 m!7730960))

(assert (=> b!7027095 m!7730538))

(declare-fun m!7730962 () Bool)

(assert (=> b!7027094 m!7730962))

(declare-fun m!7730964 () Bool)

(assert (=> d!2191000 m!7730964))

(declare-fun m!7730966 () Bool)

(assert (=> d!2191000 m!7730966))

(assert (=> d!2191000 m!7730546))

(assert (=> bs!1868972 d!2191000))

(declare-fun d!2191002 () Bool)

(assert (=> d!2191002 true))

(declare-fun setRes!49019 () Bool)

(assert (=> d!2191002 setRes!49019))

(declare-fun condSetEmpty!49019 () Bool)

(declare-fun res!2868646 () (Set Context!12888))

(assert (=> d!2191002 (= condSetEmpty!49019 (= res!2868646 (as set.empty (Set Context!12888))))))

(assert (=> d!2191002 (= (choose!53101 lt!2515266 lambda!413333) res!2868646)))

(declare-fun setIsEmpty!49019 () Bool)

(assert (=> setIsEmpty!49019 setRes!49019))

(declare-fun e!4224349 () Bool)

(declare-fun tp!1935682 () Bool)

(declare-fun setNonEmpty!49019 () Bool)

(declare-fun setElem!49019 () Context!12888)

(assert (=> setNonEmpty!49019 (= setRes!49019 (and tp!1935682 (inv!86480 setElem!49019) e!4224349))))

(declare-fun setRest!49019 () (Set Context!12888))

(assert (=> setNonEmpty!49019 (= res!2868646 (set.union (set.insert setElem!49019 (as set.empty (Set Context!12888))) setRest!49019))))

(declare-fun b!7027099 () Bool)

(declare-fun tp!1935683 () Bool)

(assert (=> b!7027099 (= e!4224349 tp!1935683)))

(assert (= (and d!2191002 condSetEmpty!49019) setIsEmpty!49019))

(assert (= (and d!2191002 (not condSetEmpty!49019)) setNonEmpty!49019))

(assert (= setNonEmpty!49019 b!7027099))

(declare-fun m!7730968 () Bool)

(assert (=> setNonEmpty!49019 m!7730968))

(assert (=> d!2190796 d!2191002))

(declare-fun d!2191004 () Bool)

(declare-fun c!1306368 () Bool)

(assert (=> d!2191004 (= c!1306368 (isEmpty!39502 (tail!13523 (t!381632 s!7408))))))

(declare-fun e!4224350 () Bool)

(assert (=> d!2191004 (= (matchZipper!2988 (derivationStepZipper!2904 lt!2515268 (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))) e!4224350)))

(declare-fun b!7027100 () Bool)

(assert (=> b!7027100 (= e!4224350 (nullableZipper!2565 (derivationStepZipper!2904 lt!2515268 (head!14243 (t!381632 s!7408)))))))

(declare-fun b!7027101 () Bool)

(assert (=> b!7027101 (= e!4224350 (matchZipper!2988 (derivationStepZipper!2904 (derivationStepZipper!2904 lt!2515268 (head!14243 (t!381632 s!7408))) (head!14243 (tail!13523 (t!381632 s!7408)))) (tail!13523 (tail!13523 (t!381632 s!7408)))))))

(assert (= (and d!2191004 c!1306368) b!7027100))

(assert (= (and d!2191004 (not c!1306368)) b!7027101))

(assert (=> d!2191004 m!7730506))

(declare-fun m!7730970 () Bool)

(assert (=> d!2191004 m!7730970))

(assert (=> b!7027100 m!7730588))

(declare-fun m!7730972 () Bool)

(assert (=> b!7027100 m!7730972))

(assert (=> b!7027101 m!7730506))

(declare-fun m!7730974 () Bool)

(assert (=> b!7027101 m!7730974))

(assert (=> b!7027101 m!7730588))

(assert (=> b!7027101 m!7730974))

(declare-fun m!7730976 () Bool)

(assert (=> b!7027101 m!7730976))

(assert (=> b!7027101 m!7730506))

(declare-fun m!7730978 () Bool)

(assert (=> b!7027101 m!7730978))

(assert (=> b!7027101 m!7730976))

(assert (=> b!7027101 m!7730978))

(declare-fun m!7730980 () Bool)

(assert (=> b!7027101 m!7730980))

(assert (=> b!7026880 d!2191004))

(declare-fun bs!1869018 () Bool)

(declare-fun d!2191006 () Bool)

(assert (= bs!1869018 (and d!2191006 b!7026693)))

(declare-fun lambda!413436 () Int)

(assert (=> bs!1869018 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413436 lambda!413333))))

(declare-fun bs!1869019 () Bool)

(assert (= bs!1869019 (and d!2191006 d!2190800)))

(assert (=> bs!1869019 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413436 lambda!413402))))

(declare-fun bs!1869020 () Bool)

(assert (= bs!1869020 (and d!2191006 d!2190832)))

(assert (=> bs!1869020 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413436 lambda!413411))))

(declare-fun bs!1869021 () Bool)

(assert (= bs!1869021 (and d!2191006 d!2190992)))

(assert (=> bs!1869021 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413436 lambda!413435))))

(assert (=> d!2191006 true))

(assert (=> d!2191006 (= (derivationStepZipper!2904 lt!2515268 (head!14243 (t!381632 s!7408))) (flatMap!2395 lt!2515268 lambda!413436))))

(declare-fun bs!1869022 () Bool)

(assert (= bs!1869022 d!2191006))

(declare-fun m!7730982 () Bool)

(assert (=> bs!1869022 m!7730982))

(assert (=> b!7026880 d!2191006))

(declare-fun d!2191008 () Bool)

(assert (=> d!2191008 (= (head!14243 (t!381632 s!7408)) (h!74197 (t!381632 s!7408)))))

(assert (=> b!7026880 d!2191008))

(declare-fun d!2191010 () Bool)

(assert (=> d!2191010 (= (tail!13523 (t!381632 s!7408)) (t!381632 (t!381632 s!7408)))))

(assert (=> b!7026880 d!2191010))

(assert (=> d!2190856 d!2190840))

(declare-fun d!2191012 () Bool)

(assert (=> d!2191012 (= (flatMap!2395 lt!2515242 lambda!413333) (dynLambda!27320 lambda!413333 lt!2515274))))

(assert (=> d!2191012 true))

(declare-fun _$13!4444 () Unit!161561)

(assert (=> d!2191012 (= (choose!53102 lt!2515242 lt!2515274 lambda!413333) _$13!4444)))

(declare-fun b_lambda!265761 () Bool)

(assert (=> (not b_lambda!265761) (not d!2191012)))

(declare-fun bs!1869023 () Bool)

(assert (= bs!1869023 d!2191012))

(assert (=> bs!1869023 m!7730252))

(assert (=> bs!1869023 m!7730654))

(assert (=> d!2190856 d!2191012))

(declare-fun bs!1869024 () Bool)

(declare-fun d!2191014 () Bool)

(assert (= bs!1869024 (and d!2191014 b!7026698)))

(declare-fun lambda!413437 () Int)

(assert (=> bs!1869024 (not (= lambda!413437 lambda!413330))))

(declare-fun bs!1869025 () Bool)

(assert (= bs!1869025 (and d!2191014 d!2190786)))

(assert (=> bs!1869025 (not (= lambda!413437 lambda!413396))))

(declare-fun bs!1869026 () Bool)

(assert (= bs!1869026 (and d!2191014 d!2190792)))

(assert (=> bs!1869026 (not (= lambda!413437 lambda!413399))))

(declare-fun bs!1869027 () Bool)

(assert (= bs!1869027 (and d!2191014 d!2190972)))

(assert (=> bs!1869027 (= lambda!413437 lambda!413434)))

(assert (=> d!2191014 (= (nullableZipper!2565 lt!2515259) (exists!3362 lt!2515259 lambda!413437))))

(declare-fun bs!1869028 () Bool)

(assert (= bs!1869028 d!2191014))

(declare-fun m!7730984 () Bool)

(assert (=> bs!1869028 m!7730984))

(assert (=> b!7026883 d!2191014))

(assert (=> d!2190846 d!2190854))

(declare-fun d!2191016 () Bool)

(assert (=> d!2191016 (= (map!15740 lt!2515242 lambda!413331) (set.insert (dynLambda!27321 lambda!413331 lt!2515274) (as set.empty (Set Context!12888))))))

(assert (=> d!2191016 true))

(declare-fun _$12!2302 () Unit!161561)

(assert (=> d!2191016 (= (choose!53105 lt!2515242 lt!2515274 lambda!413331) _$12!2302)))

(declare-fun b_lambda!265763 () Bool)

(assert (=> (not b_lambda!265763) (not d!2191016)))

(declare-fun bs!1869029 () Bool)

(assert (= bs!1869029 d!2191016))

(assert (=> bs!1869029 m!7730278))

(assert (=> bs!1869029 m!7730634))

(assert (=> bs!1869029 m!7730634))

(assert (=> bs!1869029 m!7730636))

(assert (=> d!2190846 d!2191016))

(declare-fun bs!1869030 () Bool)

(declare-fun d!2191018 () Bool)

(assert (= bs!1869030 (and d!2191018 d!2190972)))

(declare-fun lambda!413438 () Int)

(assert (=> bs!1869030 (= lambda!413438 lambda!413434)))

(declare-fun bs!1869031 () Bool)

(assert (= bs!1869031 (and d!2191018 d!2191014)))

(assert (=> bs!1869031 (= lambda!413438 lambda!413437)))

(declare-fun bs!1869032 () Bool)

(assert (= bs!1869032 (and d!2191018 b!7026698)))

(assert (=> bs!1869032 (not (= lambda!413438 lambda!413330))))

(declare-fun bs!1869033 () Bool)

(assert (= bs!1869033 (and d!2191018 d!2190792)))

(assert (=> bs!1869033 (not (= lambda!413438 lambda!413399))))

(declare-fun bs!1869034 () Bool)

(assert (= bs!1869034 (and d!2191018 d!2190786)))

(assert (=> bs!1869034 (not (= lambda!413438 lambda!413396))))

(assert (=> d!2191018 (= (nullableZipper!2565 lt!2515266) (exists!3362 lt!2515266 lambda!413438))))

(declare-fun bs!1869035 () Bool)

(assert (= bs!1869035 d!2191018))

(declare-fun m!7730986 () Bool)

(assert (=> bs!1869035 m!7730986))

(assert (=> b!7026790 d!2191018))

(declare-fun bm!637999 () Bool)

(declare-fun call!638006 () (Set Context!12888))

(declare-fun call!638005 () (Set Context!12888))

(assert (=> bm!637999 (= call!638006 call!638005)))

(declare-fun call!638009 () (Set Context!12888))

(declare-fun call!638004 () List!67872)

(declare-fun bm!638000 () Bool)

(declare-fun c!1306369 () Bool)

(assert (=> bm!638000 (= call!638009 (derivationStepZipperDown!2112 (ite c!1306369 (regOne!35409 (h!74196 (exprs!6944 lt!2515243))) (regOne!35408 (h!74196 (exprs!6944 lt!2515243)))) (ite c!1306369 (Context!12889 (t!381631 (exprs!6944 lt!2515243))) (Context!12889 call!638004)) (h!74197 s!7408)))))

(declare-fun b!7027102 () Bool)

(declare-fun e!4224355 () (Set Context!12888))

(declare-fun e!4224356 () (Set Context!12888))

(assert (=> b!7027102 (= e!4224355 e!4224356)))

(declare-fun c!1306372 () Bool)

(assert (=> b!7027102 (= c!1306372 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515243))))))

(declare-fun c!1306373 () Bool)

(declare-fun bm!638001 () Bool)

(assert (=> bm!638001 (= call!638004 ($colon$colon!2560 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515243)))) (ite (or c!1306373 c!1306372) (regTwo!35408 (h!74196 (exprs!6944 lt!2515243))) (h!74196 (exprs!6944 lt!2515243)))))))

(declare-fun b!7027103 () Bool)

(declare-fun e!4224351 () (Set Context!12888))

(declare-fun e!4224352 () (Set Context!12888))

(assert (=> b!7027103 (= e!4224351 e!4224352)))

(assert (=> b!7027103 (= c!1306369 (is-Union!17448 (h!74196 (exprs!6944 lt!2515243))))))

(declare-fun b!7027104 () Bool)

(declare-fun e!4224354 () Bool)

(assert (=> b!7027104 (= e!4224354 (nullable!7159 (regOne!35408 (h!74196 (exprs!6944 lt!2515243)))))))

(declare-fun bm!638002 () Bool)

(declare-fun call!638008 () (Set Context!12888))

(assert (=> bm!638002 (= call!638008 call!638006)))

(declare-fun b!7027105 () Bool)

(assert (=> b!7027105 (= e!4224356 call!638008)))

(declare-fun b!7027106 () Bool)

(assert (=> b!7027106 (= e!4224352 (set.union call!638009 call!638005))))

(declare-fun bm!638003 () Bool)

(declare-fun call!638007 () List!67872)

(assert (=> bm!638003 (= call!638005 (derivationStepZipperDown!2112 (ite c!1306369 (regTwo!35409 (h!74196 (exprs!6944 lt!2515243))) (ite c!1306373 (regTwo!35408 (h!74196 (exprs!6944 lt!2515243))) (ite c!1306372 (regOne!35408 (h!74196 (exprs!6944 lt!2515243))) (reg!17777 (h!74196 (exprs!6944 lt!2515243)))))) (ite (or c!1306369 c!1306373) (Context!12889 (t!381631 (exprs!6944 lt!2515243))) (Context!12889 call!638007)) (h!74197 s!7408)))))

(declare-fun b!7027107 () Bool)

(declare-fun e!4224353 () (Set Context!12888))

(assert (=> b!7027107 (= e!4224353 (as set.empty (Set Context!12888)))))

(declare-fun b!7027108 () Bool)

(assert (=> b!7027108 (= e!4224355 (set.union call!638009 call!638006))))

(declare-fun b!7027109 () Bool)

(assert (=> b!7027109 (= e!4224351 (set.insert (Context!12889 (t!381631 (exprs!6944 lt!2515243))) (as set.empty (Set Context!12888))))))

(declare-fun bm!638004 () Bool)

(assert (=> bm!638004 (= call!638007 call!638004)))

(declare-fun d!2191020 () Bool)

(declare-fun c!1306371 () Bool)

(assert (=> d!2191020 (= c!1306371 (and (is-ElementMatch!17448 (h!74196 (exprs!6944 lt!2515243))) (= (c!1306235 (h!74196 (exprs!6944 lt!2515243))) (h!74197 s!7408))))))

(assert (=> d!2191020 (= (derivationStepZipperDown!2112 (h!74196 (exprs!6944 lt!2515243)) (Context!12889 (t!381631 (exprs!6944 lt!2515243))) (h!74197 s!7408)) e!4224351)))

(declare-fun b!7027110 () Bool)

(declare-fun c!1306370 () Bool)

(assert (=> b!7027110 (= c!1306370 (is-Star!17448 (h!74196 (exprs!6944 lt!2515243))))))

(assert (=> b!7027110 (= e!4224356 e!4224353)))

(declare-fun b!7027111 () Bool)

(assert (=> b!7027111 (= c!1306373 e!4224354)))

(declare-fun res!2868647 () Bool)

(assert (=> b!7027111 (=> (not res!2868647) (not e!4224354))))

(assert (=> b!7027111 (= res!2868647 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515243))))))

(assert (=> b!7027111 (= e!4224352 e!4224355)))

(declare-fun b!7027112 () Bool)

(assert (=> b!7027112 (= e!4224353 call!638008)))

(assert (= (and d!2191020 c!1306371) b!7027109))

(assert (= (and d!2191020 (not c!1306371)) b!7027103))

(assert (= (and b!7027103 c!1306369) b!7027106))

(assert (= (and b!7027103 (not c!1306369)) b!7027111))

(assert (= (and b!7027111 res!2868647) b!7027104))

(assert (= (and b!7027111 c!1306373) b!7027108))

(assert (= (and b!7027111 (not c!1306373)) b!7027102))

(assert (= (and b!7027102 c!1306372) b!7027105))

(assert (= (and b!7027102 (not c!1306372)) b!7027110))

(assert (= (and b!7027110 c!1306370) b!7027112))

(assert (= (and b!7027110 (not c!1306370)) b!7027107))

(assert (= (or b!7027105 b!7027112) bm!638004))

(assert (= (or b!7027105 b!7027112) bm!638002))

(assert (= (or b!7027108 bm!638002) bm!637999))

(assert (= (or b!7027108 bm!638004) bm!638001))

(assert (= (or b!7027106 b!7027108) bm!638000))

(assert (= (or b!7027106 bm!637999) bm!638003))

(declare-fun m!7730988 () Bool)

(assert (=> bm!638000 m!7730988))

(declare-fun m!7730990 () Bool)

(assert (=> b!7027109 m!7730990))

(declare-fun m!7730992 () Bool)

(assert (=> bm!638003 m!7730992))

(declare-fun m!7730994 () Bool)

(assert (=> b!7027104 m!7730994))

(declare-fun m!7730996 () Bool)

(assert (=> bm!638001 m!7730996))

(assert (=> bm!637954 d!2191020))

(assert (=> bs!1868970 d!2190850))

(declare-fun d!2191022 () Bool)

(assert (=> d!2191022 (= (map!15740 z1!570 lambda!413407) (choose!53106 z1!570 lambda!413407))))

(declare-fun bs!1869036 () Bool)

(assert (= bs!1869036 d!2191022))

(declare-fun m!7730998 () Bool)

(assert (=> bs!1869036 m!7730998))

(assert (=> d!2190806 d!2191022))

(declare-fun d!2191024 () Bool)

(declare-fun c!1306374 () Bool)

(assert (=> d!2191024 (= c!1306374 (isEmpty!39502 (t!381632 s!7408)))))

(declare-fun e!4224357 () Bool)

(assert (=> d!2191024 (= (matchZipper!2988 (set.union lt!2515259 lt!2515273) (t!381632 s!7408)) e!4224357)))

(declare-fun b!7027113 () Bool)

(assert (=> b!7027113 (= e!4224357 (nullableZipper!2565 (set.union lt!2515259 lt!2515273)))))

(declare-fun b!7027114 () Bool)

(assert (=> b!7027114 (= e!4224357 (matchZipper!2988 (derivationStepZipper!2904 (set.union lt!2515259 lt!2515273) (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))))))

(assert (= (and d!2191024 c!1306374) b!7027113))

(assert (= (and d!2191024 (not c!1306374)) b!7027114))

(assert (=> d!2191024 m!7730498))

(declare-fun m!7731000 () Bool)

(assert (=> b!7027113 m!7731000))

(assert (=> b!7027114 m!7730502))

(assert (=> b!7027114 m!7730502))

(declare-fun m!7731002 () Bool)

(assert (=> b!7027114 m!7731002))

(assert (=> b!7027114 m!7730506))

(assert (=> b!7027114 m!7731002))

(assert (=> b!7027114 m!7730506))

(declare-fun m!7731004 () Bool)

(assert (=> b!7027114 m!7731004))

(assert (=> d!2190820 d!2191024))

(assert (=> d!2190820 d!2190826))

(declare-fun d!2191026 () Bool)

(declare-fun e!4224360 () Bool)

(assert (=> d!2191026 (= (matchZipper!2988 (set.union lt!2515259 lt!2515273) (t!381632 s!7408)) e!4224360)))

(declare-fun res!2868650 () Bool)

(assert (=> d!2191026 (=> res!2868650 e!4224360)))

(assert (=> d!2191026 (= res!2868650 (matchZipper!2988 lt!2515259 (t!381632 s!7408)))))

(assert (=> d!2191026 true))

(declare-fun _$48!2467 () Unit!161561)

(assert (=> d!2191026 (= (choose!53104 lt!2515259 lt!2515273 (t!381632 s!7408)) _$48!2467)))

(declare-fun b!7027117 () Bool)

(assert (=> b!7027117 (= e!4224360 (matchZipper!2988 lt!2515273 (t!381632 s!7408)))))

(assert (= (and d!2191026 (not res!2868650)) b!7027117))

(assert (=> d!2191026 m!7730582))

(assert (=> d!2191026 m!7730326))

(assert (=> b!7027117 m!7730290))

(assert (=> d!2190820 d!2191026))

(declare-fun d!2191028 () Bool)

(declare-fun c!1306377 () Bool)

(assert (=> d!2191028 (= c!1306377 (is-Nil!67750 lt!2515458))))

(declare-fun e!4224363 () (Set Context!12888))

(assert (=> d!2191028 (= (content!13500 lt!2515458) e!4224363)))

(declare-fun b!7027122 () Bool)

(assert (=> b!7027122 (= e!4224363 (as set.empty (Set Context!12888)))))

(declare-fun b!7027123 () Bool)

(assert (=> b!7027123 (= e!4224363 (set.union (set.insert (h!74198 lt!2515458) (as set.empty (Set Context!12888))) (content!13500 (t!381633 lt!2515458))))))

(assert (= (and d!2191028 c!1306377) b!7027122))

(assert (= (and d!2191028 (not c!1306377)) b!7027123))

(declare-fun m!7731006 () Bool)

(assert (=> b!7027123 m!7731006))

(declare-fun m!7731008 () Bool)

(assert (=> b!7027123 m!7731008))

(assert (=> b!7026896 d!2191028))

(declare-fun d!2191030 () Bool)

(declare-fun e!4224369 () Bool)

(assert (=> d!2191030 e!4224369))

(declare-fun res!2868653 () Bool)

(assert (=> d!2191030 (=> (not res!2868653) (not e!4224369))))

(declare-fun a!13143 () Context!12888)

(assert (=> d!2191030 (= res!2868653 (= lt!2515271 (dynLambda!27321 lambda!413331 a!13143)))))

(declare-fun e!4224368 () Bool)

(assert (=> d!2191030 (and (inv!86480 a!13143) e!4224368)))

(assert (=> d!2191030 (= (choose!53103 z1!570 lambda!413331 lt!2515271) a!13143)))

(declare-fun b!7027129 () Bool)

(declare-fun tp!1935686 () Bool)

(assert (=> b!7027129 (= e!4224368 tp!1935686)))

(declare-fun b!7027130 () Bool)

(assert (=> b!7027130 (= e!4224369 (set.member a!13143 z1!570))))

(assert (= d!2191030 b!7027129))

(assert (= (and d!2191030 res!2868653) b!7027130))

(declare-fun b_lambda!265765 () Bool)

(assert (=> (not b_lambda!265765) (not d!2191030)))

(declare-fun m!7731010 () Bool)

(assert (=> d!2191030 m!7731010))

(declare-fun m!7731012 () Bool)

(assert (=> d!2191030 m!7731012))

(declare-fun m!7731014 () Bool)

(assert (=> b!7027130 m!7731014))

(assert (=> d!2190814 d!2191030))

(declare-fun d!2191032 () Bool)

(assert (=> d!2191032 (= (map!15740 z1!570 lambda!413331) (choose!53106 z1!570 lambda!413331))))

(declare-fun bs!1869037 () Bool)

(assert (= bs!1869037 d!2191032))

(declare-fun m!7731016 () Bool)

(assert (=> bs!1869037 m!7731016))

(assert (=> d!2190814 d!2191032))

(declare-fun bm!638005 () Bool)

(declare-fun call!638012 () (Set Context!12888))

(declare-fun call!638011 () (Set Context!12888))

(assert (=> bm!638005 (= call!638012 call!638011)))

(declare-fun call!638015 () (Set Context!12888))

(declare-fun call!638010 () List!67872)

(declare-fun c!1306378 () Bool)

(declare-fun bm!638006 () Bool)

(assert (=> bm!638006 (= call!638015 (derivationStepZipperDown!2112 (ite c!1306378 (regOne!35409 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))) (regOne!35408 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248)))))))) (ite c!1306378 (ite (or c!1306282 c!1306286) lt!2515243 (Context!12889 call!637975)) (Context!12889 call!638010)) (h!74197 s!7408)))))

(declare-fun b!7027131 () Bool)

(declare-fun e!4224374 () (Set Context!12888))

(declare-fun e!4224375 () (Set Context!12888))

(assert (=> b!7027131 (= e!4224374 e!4224375)))

(declare-fun c!1306381 () Bool)

(assert (=> b!7027131 (= c!1306381 (is-Concat!26293 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))))))

(declare-fun c!1306382 () Bool)

(declare-fun bm!638007 () Bool)

(assert (=> bm!638007 (= call!638010 ($colon$colon!2560 (exprs!6944 (ite (or c!1306282 c!1306286) lt!2515243 (Context!12889 call!637975))) (ite (or c!1306382 c!1306381) (regTwo!35408 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))) (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248)))))))))))

(declare-fun b!7027132 () Bool)

(declare-fun e!4224370 () (Set Context!12888))

(declare-fun e!4224371 () (Set Context!12888))

(assert (=> b!7027132 (= e!4224370 e!4224371)))

(assert (=> b!7027132 (= c!1306378 (is-Union!17448 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))))))

(declare-fun b!7027133 () Bool)

(declare-fun e!4224373 () Bool)

(assert (=> b!7027133 (= e!4224373 (nullable!7159 (regOne!35408 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248)))))))))))

(declare-fun bm!638008 () Bool)

(declare-fun call!638014 () (Set Context!12888))

(assert (=> bm!638008 (= call!638014 call!638012)))

(declare-fun b!7027134 () Bool)

(assert (=> b!7027134 (= e!4224375 call!638014)))

(declare-fun b!7027135 () Bool)

(assert (=> b!7027135 (= e!4224371 (set.union call!638015 call!638011))))

(declare-fun call!638013 () List!67872)

(declare-fun bm!638009 () Bool)

(assert (=> bm!638009 (= call!638011 (derivationStepZipperDown!2112 (ite c!1306378 (regTwo!35409 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))) (ite c!1306382 (regTwo!35408 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))) (ite c!1306381 (regOne!35408 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))) (reg!17777 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248)))))))))) (ite (or c!1306378 c!1306382) (ite (or c!1306282 c!1306286) lt!2515243 (Context!12889 call!637975)) (Context!12889 call!638013)) (h!74197 s!7408)))))

(declare-fun b!7027136 () Bool)

(declare-fun e!4224372 () (Set Context!12888))

(assert (=> b!7027136 (= e!4224372 (as set.empty (Set Context!12888)))))

(declare-fun b!7027137 () Bool)

(assert (=> b!7027137 (= e!4224374 (set.union call!638015 call!638012))))

(declare-fun b!7027138 () Bool)

(assert (=> b!7027138 (= e!4224370 (set.insert (ite (or c!1306282 c!1306286) lt!2515243 (Context!12889 call!637975)) (as set.empty (Set Context!12888))))))

(declare-fun bm!638010 () Bool)

(assert (=> bm!638010 (= call!638013 call!638010)))

(declare-fun d!2191034 () Bool)

(declare-fun c!1306380 () Bool)

(assert (=> d!2191034 (= c!1306380 (and (is-ElementMatch!17448 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))) (= (c!1306235 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))) (h!74197 s!7408))))))

(assert (=> d!2191034 (= (derivationStepZipperDown!2112 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248)))))) (ite (or c!1306282 c!1306286) lt!2515243 (Context!12889 call!637975)) (h!74197 s!7408)) e!4224370)))

(declare-fun b!7027139 () Bool)

(declare-fun c!1306379 () Bool)

(assert (=> b!7027139 (= c!1306379 (is-Star!17448 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))))))

(assert (=> b!7027139 (= e!4224375 e!4224372)))

(declare-fun b!7027140 () Bool)

(assert (=> b!7027140 (= c!1306382 e!4224373)))

(declare-fun res!2868654 () Bool)

(assert (=> b!7027140 (=> (not res!2868654) (not e!4224373))))

(assert (=> b!7027140 (= res!2868654 (is-Concat!26293 (ite c!1306282 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306286 (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306285 (regOne!35408 (h!74196 (exprs!6944 lt!2515248))) (reg!17777 (h!74196 (exprs!6944 lt!2515248))))))))))

(assert (=> b!7027140 (= e!4224371 e!4224374)))

(declare-fun b!7027141 () Bool)

(assert (=> b!7027141 (= e!4224372 call!638014)))

(assert (= (and d!2191034 c!1306380) b!7027138))

(assert (= (and d!2191034 (not c!1306380)) b!7027132))

(assert (= (and b!7027132 c!1306378) b!7027135))

(assert (= (and b!7027132 (not c!1306378)) b!7027140))

(assert (= (and b!7027140 res!2868654) b!7027133))

(assert (= (and b!7027140 c!1306382) b!7027137))

(assert (= (and b!7027140 (not c!1306382)) b!7027131))

(assert (= (and b!7027131 c!1306381) b!7027134))

(assert (= (and b!7027131 (not c!1306381)) b!7027139))

(assert (= (and b!7027139 c!1306379) b!7027141))

(assert (= (and b!7027139 (not c!1306379)) b!7027136))

(assert (= (or b!7027134 b!7027141) bm!638010))

(assert (= (or b!7027134 b!7027141) bm!638008))

(assert (= (or b!7027137 bm!638008) bm!638005))

(assert (= (or b!7027137 bm!638010) bm!638007))

(assert (= (or b!7027135 b!7027137) bm!638006))

(assert (= (or b!7027135 bm!638005) bm!638009))

(declare-fun m!7731018 () Bool)

(assert (=> bm!638006 m!7731018))

(declare-fun m!7731020 () Bool)

(assert (=> b!7027138 m!7731020))

(declare-fun m!7731022 () Bool)

(assert (=> bm!638009 m!7731022))

(declare-fun m!7731024 () Bool)

(assert (=> b!7027133 m!7731024))

(declare-fun m!7731026 () Bool)

(assert (=> bm!638007 m!7731026))

(assert (=> bm!637971 d!2191034))

(declare-fun d!2191036 () Bool)

(declare-fun c!1306383 () Bool)

(assert (=> d!2191036 (= c!1306383 (isEmpty!39502 (tail!13523 s!7408)))))

(declare-fun e!4224376 () Bool)

(assert (=> d!2191036 (= (matchZipper!2988 (derivationStepZipper!2904 lt!2515257 (head!14243 s!7408)) (tail!13523 s!7408)) e!4224376)))

(declare-fun b!7027142 () Bool)

(assert (=> b!7027142 (= e!4224376 (nullableZipper!2565 (derivationStepZipper!2904 lt!2515257 (head!14243 s!7408))))))

(declare-fun b!7027143 () Bool)

(assert (=> b!7027143 (= e!4224376 (matchZipper!2988 (derivationStepZipper!2904 (derivationStepZipper!2904 lt!2515257 (head!14243 s!7408)) (head!14243 (tail!13523 s!7408))) (tail!13523 (tail!13523 s!7408))))))

(assert (= (and d!2191036 c!1306383) b!7027142))

(assert (= (and d!2191036 (not c!1306383)) b!7027143))

(assert (=> d!2191036 m!7730458))

(assert (=> d!2191036 m!7730938))

(assert (=> b!7027142 m!7730526))

(declare-fun m!7731028 () Bool)

(assert (=> b!7027142 m!7731028))

(assert (=> b!7027143 m!7730458))

(assert (=> b!7027143 m!7730942))

(assert (=> b!7027143 m!7730526))

(assert (=> b!7027143 m!7730942))

(declare-fun m!7731030 () Bool)

(assert (=> b!7027143 m!7731030))

(assert (=> b!7027143 m!7730458))

(assert (=> b!7027143 m!7730946))

(assert (=> b!7027143 m!7731030))

(assert (=> b!7027143 m!7730946))

(declare-fun m!7731032 () Bool)

(assert (=> b!7027143 m!7731032))

(assert (=> b!7026822 d!2191036))

(declare-fun bs!1869038 () Bool)

(declare-fun d!2191038 () Bool)

(assert (= bs!1869038 (and d!2191038 d!2190832)))

(declare-fun lambda!413439 () Int)

(assert (=> bs!1869038 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413439 lambda!413411))))

(declare-fun bs!1869039 () Bool)

(assert (= bs!1869039 (and d!2191038 b!7026693)))

(assert (=> bs!1869039 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413439 lambda!413333))))

(declare-fun bs!1869040 () Bool)

(assert (= bs!1869040 (and d!2191038 d!2190800)))

(assert (=> bs!1869040 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413439 lambda!413402))))

(declare-fun bs!1869041 () Bool)

(assert (= bs!1869041 (and d!2191038 d!2191006)))

(assert (=> bs!1869041 (= (= (head!14243 s!7408) (head!14243 (t!381632 s!7408))) (= lambda!413439 lambda!413436))))

(declare-fun bs!1869042 () Bool)

(assert (= bs!1869042 (and d!2191038 d!2190992)))

(assert (=> bs!1869042 (= lambda!413439 lambda!413435)))

(assert (=> d!2191038 true))

(assert (=> d!2191038 (= (derivationStepZipper!2904 lt!2515257 (head!14243 s!7408)) (flatMap!2395 lt!2515257 lambda!413439))))

(declare-fun bs!1869043 () Bool)

(assert (= bs!1869043 d!2191038))

(declare-fun m!7731034 () Bool)

(assert (=> bs!1869043 m!7731034))

(assert (=> b!7026822 d!2191038))

(assert (=> b!7026822 d!2190994))

(assert (=> b!7026822 d!2190996))

(declare-fun b!7027160 () Bool)

(declare-fun e!4224386 () Int)

(declare-fun e!4224387 () Int)

(assert (=> b!7027160 (= e!4224386 e!4224387)))

(declare-fun c!1306392 () Bool)

(assert (=> b!7027160 (= c!1306392 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515274))))))

(declare-fun b!7027161 () Bool)

(declare-fun e!4224388 () Int)

(assert (=> b!7027161 (= e!4224388 1)))

(declare-fun b!7027162 () Bool)

(assert (=> b!7027162 (= e!4224387 1)))

(declare-fun bm!638017 () Bool)

(declare-fun call!638024 () Int)

(declare-fun c!1306393 () Bool)

(assert (=> bm!638017 (= call!638024 (regexDepthTotal!289 (ite c!1306393 (regTwo!35409 (h!74196 (exprs!6944 lt!2515274))) (regOne!35408 (h!74196 (exprs!6944 lt!2515274))))))))

(declare-fun b!7027163 () Bool)

(declare-fun call!638023 () Int)

(assert (=> b!7027163 (= e!4224387 (+ 1 call!638024 call!638023))))

(declare-fun b!7027164 () Bool)

(assert (=> b!7027164 (= c!1306393 (is-Union!17448 (h!74196 (exprs!6944 lt!2515274))))))

(declare-fun e!4224385 () Int)

(assert (=> b!7027164 (= e!4224385 e!4224386)))

(declare-fun bm!638018 () Bool)

(declare-fun call!638022 () Int)

(assert (=> bm!638018 (= call!638023 call!638022)))

(declare-fun d!2191040 () Bool)

(declare-fun lt!2515524 () Int)

(assert (=> d!2191040 (> lt!2515524 0)))

(assert (=> d!2191040 (= lt!2515524 e!4224388)))

(declare-fun c!1306395 () Bool)

(assert (=> d!2191040 (= c!1306395 (is-ElementMatch!17448 (h!74196 (exprs!6944 lt!2515274))))))

(assert (=> d!2191040 (= (regexDepthTotal!289 (h!74196 (exprs!6944 lt!2515274))) lt!2515524)))

(declare-fun b!7027165 () Bool)

(assert (=> b!7027165 (= e!4224386 (+ 1 call!638023 call!638024))))

(declare-fun b!7027166 () Bool)

(assert (=> b!7027166 (= e!4224388 e!4224385)))

(declare-fun c!1306394 () Bool)

(assert (=> b!7027166 (= c!1306394 (is-Star!17448 (h!74196 (exprs!6944 lt!2515274))))))

(declare-fun b!7027167 () Bool)

(assert (=> b!7027167 (= e!4224385 (+ 1 call!638022))))

(declare-fun bm!638019 () Bool)

(assert (=> bm!638019 (= call!638022 (regexDepthTotal!289 (ite c!1306394 (reg!17777 (h!74196 (exprs!6944 lt!2515274))) (ite c!1306393 (regOne!35409 (h!74196 (exprs!6944 lt!2515274))) (regTwo!35408 (h!74196 (exprs!6944 lt!2515274)))))))))

(assert (= (and d!2191040 c!1306395) b!7027161))

(assert (= (and d!2191040 (not c!1306395)) b!7027166))

(assert (= (and b!7027166 c!1306394) b!7027167))

(assert (= (and b!7027166 (not c!1306394)) b!7027164))

(assert (= (and b!7027164 c!1306393) b!7027165))

(assert (= (and b!7027164 (not c!1306393)) b!7027160))

(assert (= (and b!7027160 c!1306392) b!7027163))

(assert (= (and b!7027160 (not c!1306392)) b!7027162))

(assert (= (or b!7027165 b!7027163) bm!638017))

(assert (= (or b!7027165 b!7027163) bm!638018))

(assert (= (or b!7027167 bm!638018) bm!638019))

(declare-fun m!7731036 () Bool)

(assert (=> bm!638017 m!7731036))

(declare-fun m!7731038 () Bool)

(assert (=> bm!638019 m!7731038))

(assert (=> b!7026901 d!2191040))

(declare-fun d!2191042 () Bool)

(declare-fun lt!2515525 () Int)

(assert (=> d!2191042 (>= lt!2515525 0)))

(declare-fun e!4224389 () Int)

(assert (=> d!2191042 (= lt!2515525 e!4224389)))

(declare-fun c!1306396 () Bool)

(assert (=> d!2191042 (= c!1306396 (is-Cons!67748 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274))))))))

(assert (=> d!2191042 (= (contextDepthTotal!483 (Context!12889 (t!381631 (exprs!6944 lt!2515274)))) lt!2515525)))

(declare-fun b!7027168 () Bool)

(assert (=> b!7027168 (= e!4224389 (+ (regexDepthTotal!289 (h!74196 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274)))))) (contextDepthTotal!483 (Context!12889 (t!381631 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274)))))))))))

(declare-fun b!7027169 () Bool)

(assert (=> b!7027169 (= e!4224389 1)))

(assert (= (and d!2191042 c!1306396) b!7027168))

(assert (= (and d!2191042 (not c!1306396)) b!7027169))

(declare-fun m!7731040 () Bool)

(assert (=> b!7027168 m!7731040))

(declare-fun m!7731042 () Bool)

(assert (=> b!7027168 m!7731042))

(assert (=> b!7026901 d!2191042))

(declare-fun d!2191044 () Bool)

(declare-fun lt!2515528 () Int)

(assert (=> d!2191044 (>= lt!2515528 0)))

(declare-fun e!4224392 () Int)

(assert (=> d!2191044 (= lt!2515528 e!4224392)))

(declare-fun c!1306399 () Bool)

(assert (=> d!2191044 (= c!1306399 (is-Nil!67748 lt!2515450))))

(assert (=> d!2191044 (= (size!41043 lt!2515450) lt!2515528)))

(declare-fun b!7027174 () Bool)

(assert (=> b!7027174 (= e!4224392 0)))

(declare-fun b!7027175 () Bool)

(assert (=> b!7027175 (= e!4224392 (+ 1 (size!41043 (t!381631 lt!2515450))))))

(assert (= (and d!2191044 c!1306399) b!7027174))

(assert (= (and d!2191044 (not c!1306399)) b!7027175))

(declare-fun m!7731044 () Bool)

(assert (=> b!7027175 m!7731044))

(assert (=> b!7026841 d!2191044))

(declare-fun d!2191046 () Bool)

(declare-fun lt!2515529 () Int)

(assert (=> d!2191046 (>= lt!2515529 0)))

(declare-fun e!4224393 () Int)

(assert (=> d!2191046 (= lt!2515529 e!4224393)))

(declare-fun c!1306400 () Bool)

(assert (=> d!2191046 (= c!1306400 (is-Nil!67748 lt!2515239))))

(assert (=> d!2191046 (= (size!41043 lt!2515239) lt!2515529)))

(declare-fun b!7027176 () Bool)

(assert (=> b!7027176 (= e!4224393 0)))

(declare-fun b!7027177 () Bool)

(assert (=> b!7027177 (= e!4224393 (+ 1 (size!41043 (t!381631 lt!2515239))))))

(assert (= (and d!2191046 c!1306400) b!7027176))

(assert (= (and d!2191046 (not c!1306400)) b!7027177))

(declare-fun m!7731046 () Bool)

(assert (=> b!7027177 m!7731046))

(assert (=> b!7026841 d!2191046))

(declare-fun d!2191048 () Bool)

(declare-fun lt!2515530 () Int)

(assert (=> d!2191048 (>= lt!2515530 0)))

(declare-fun e!4224394 () Int)

(assert (=> d!2191048 (= lt!2515530 e!4224394)))

(declare-fun c!1306401 () Bool)

(assert (=> d!2191048 (= c!1306401 (is-Nil!67748 (exprs!6944 ct2!306)))))

(assert (=> d!2191048 (= (size!41043 (exprs!6944 ct2!306)) lt!2515530)))

(declare-fun b!7027178 () Bool)

(assert (=> b!7027178 (= e!4224394 0)))

(declare-fun b!7027179 () Bool)

(assert (=> b!7027179 (= e!4224394 (+ 1 (size!41043 (t!381631 (exprs!6944 ct2!306)))))))

(assert (= (and d!2191048 c!1306401) b!7027178))

(assert (= (and d!2191048 (not c!1306401)) b!7027179))

(declare-fun m!7731048 () Bool)

(assert (=> b!7027179 m!7731048))

(assert (=> b!7026841 d!2191048))

(declare-fun d!2191050 () Bool)

(declare-fun res!2868655 () Bool)

(declare-fun e!4224395 () Bool)

(assert (=> d!2191050 (=> res!2868655 e!4224395)))

(assert (=> d!2191050 (= res!2868655 (is-Nil!67748 (++!15481 lt!2515239 (exprs!6944 ct2!306))))))

(assert (=> d!2191050 (= (forall!16350 (++!15481 lt!2515239 (exprs!6944 ct2!306)) lambda!413332) e!4224395)))

(declare-fun b!7027180 () Bool)

(declare-fun e!4224396 () Bool)

(assert (=> b!7027180 (= e!4224395 e!4224396)))

(declare-fun res!2868656 () Bool)

(assert (=> b!7027180 (=> (not res!2868656) (not e!4224396))))

(assert (=> b!7027180 (= res!2868656 (dynLambda!27326 lambda!413332 (h!74196 (++!15481 lt!2515239 (exprs!6944 ct2!306)))))))

(declare-fun b!7027181 () Bool)

(assert (=> b!7027181 (= e!4224396 (forall!16350 (t!381631 (++!15481 lt!2515239 (exprs!6944 ct2!306))) lambda!413332))))

(assert (= (and d!2191050 (not res!2868655)) b!7027180))

(assert (= (and b!7027180 res!2868656) b!7027181))

(declare-fun b_lambda!265767 () Bool)

(assert (=> (not b_lambda!265767) (not b!7027180)))

(declare-fun m!7731050 () Bool)

(assert (=> b!7027180 m!7731050))

(declare-fun m!7731052 () Bool)

(assert (=> b!7027181 m!7731052))

(assert (=> d!2190782 d!2191050))

(assert (=> d!2190782 d!2190816))

(declare-fun d!2191052 () Bool)

(assert (=> d!2191052 (forall!16350 (++!15481 lt!2515239 (exprs!6944 ct2!306)) lambda!413332)))

(assert (=> d!2191052 true))

(declare-fun _$78!557 () Unit!161561)

(assert (=> d!2191052 (= (choose!53098 lt!2515239 (exprs!6944 ct2!306) lambda!413332) _$78!557)))

(declare-fun bs!1869044 () Bool)

(assert (= bs!1869044 d!2191052))

(assert (=> bs!1869044 m!7730260))

(assert (=> bs!1869044 m!7730260))

(assert (=> bs!1869044 m!7730462))

(assert (=> d!2190782 d!2191052))

(declare-fun d!2191054 () Bool)

(declare-fun res!2868657 () Bool)

(declare-fun e!4224397 () Bool)

(assert (=> d!2191054 (=> res!2868657 e!4224397)))

(assert (=> d!2191054 (= res!2868657 (is-Nil!67748 lt!2515239))))

(assert (=> d!2191054 (= (forall!16350 lt!2515239 lambda!413332) e!4224397)))

(declare-fun b!7027182 () Bool)

(declare-fun e!4224398 () Bool)

(assert (=> b!7027182 (= e!4224397 e!4224398)))

(declare-fun res!2868658 () Bool)

(assert (=> b!7027182 (=> (not res!2868658) (not e!4224398))))

(assert (=> b!7027182 (= res!2868658 (dynLambda!27326 lambda!413332 (h!74196 lt!2515239)))))

(declare-fun b!7027183 () Bool)

(assert (=> b!7027183 (= e!4224398 (forall!16350 (t!381631 lt!2515239) lambda!413332))))

(assert (= (and d!2191054 (not res!2868657)) b!7027182))

(assert (= (and b!7027182 res!2868658) b!7027183))

(declare-fun b_lambda!265769 () Bool)

(assert (=> (not b_lambda!265769) (not b!7027182)))

(declare-fun m!7731054 () Bool)

(assert (=> b!7027182 m!7731054))

(declare-fun m!7731056 () Bool)

(assert (=> b!7027183 m!7731056))

(assert (=> d!2190782 d!2191054))

(assert (=> d!2190822 d!2190988))

(declare-fun d!2191056 () Bool)

(assert (=> d!2191056 (= ($colon$colon!2560 (exprs!6944 lt!2515243) (ite (or c!1306286 c!1306285) (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (h!74196 (exprs!6944 lt!2515248)))) (Cons!67748 (ite (or c!1306286 c!1306285) (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))) (h!74196 (exprs!6944 lt!2515248))) (exprs!6944 lt!2515243)))))

(assert (=> bm!637969 d!2191056))

(declare-fun bs!1869045 () Bool)

(declare-fun d!2191058 () Bool)

(assert (= bs!1869045 (and d!2191058 d!2191018)))

(declare-fun lambda!413440 () Int)

(assert (=> bs!1869045 (= lambda!413440 lambda!413438)))

(declare-fun bs!1869046 () Bool)

(assert (= bs!1869046 (and d!2191058 d!2190972)))

(assert (=> bs!1869046 (= lambda!413440 lambda!413434)))

(declare-fun bs!1869047 () Bool)

(assert (= bs!1869047 (and d!2191058 d!2191014)))

(assert (=> bs!1869047 (= lambda!413440 lambda!413437)))

(declare-fun bs!1869048 () Bool)

(assert (= bs!1869048 (and d!2191058 b!7026698)))

(assert (=> bs!1869048 (not (= lambda!413440 lambda!413330))))

(declare-fun bs!1869049 () Bool)

(assert (= bs!1869049 (and d!2191058 d!2190792)))

(assert (=> bs!1869049 (not (= lambda!413440 lambda!413399))))

(declare-fun bs!1869050 () Bool)

(assert (= bs!1869050 (and d!2191058 d!2190786)))

(assert (=> bs!1869050 (not (= lambda!413440 lambda!413396))))

(assert (=> d!2191058 (= (nullableZipper!2565 lt!2515278) (exists!3362 lt!2515278 lambda!413440))))

(declare-fun bs!1869051 () Bool)

(assert (= bs!1869051 d!2191058))

(declare-fun m!7731058 () Bool)

(assert (=> bs!1869051 m!7731058))

(assert (=> b!7026881 d!2191058))

(declare-fun d!2191060 () Bool)

(declare-fun lt!2515531 () Int)

(assert (=> d!2191060 (>= lt!2515531 0)))

(declare-fun e!4224399 () Int)

(assert (=> d!2191060 (= lt!2515531 e!4224399)))

(declare-fun c!1306402 () Bool)

(assert (=> d!2191060 (= c!1306402 (is-Nil!67748 lt!2515445))))

(assert (=> d!2191060 (= (size!41043 lt!2515445) lt!2515531)))

(declare-fun b!7027184 () Bool)

(assert (=> b!7027184 (= e!4224399 0)))

(declare-fun b!7027185 () Bool)

(assert (=> b!7027185 (= e!4224399 (+ 1 (size!41043 (t!381631 lt!2515445))))))

(assert (= (and d!2191060 c!1306402) b!7027184))

(assert (= (and d!2191060 (not c!1306402)) b!7027185))

(declare-fun m!7731060 () Bool)

(assert (=> b!7027185 m!7731060))

(assert (=> b!7026833 d!2191060))

(declare-fun d!2191062 () Bool)

(declare-fun lt!2515532 () Int)

(assert (=> d!2191062 (>= lt!2515532 0)))

(declare-fun e!4224400 () Int)

(assert (=> d!2191062 (= lt!2515532 e!4224400)))

(declare-fun c!1306403 () Bool)

(assert (=> d!2191062 (= c!1306403 (is-Nil!67748 (exprs!6944 lt!2515248)))))

(assert (=> d!2191062 (= (size!41043 (exprs!6944 lt!2515248)) lt!2515532)))

(declare-fun b!7027186 () Bool)

(assert (=> b!7027186 (= e!4224400 0)))

(declare-fun b!7027187 () Bool)

(assert (=> b!7027187 (= e!4224400 (+ 1 (size!41043 (t!381631 (exprs!6944 lt!2515248)))))))

(assert (= (and d!2191062 c!1306403) b!7027186))

(assert (= (and d!2191062 (not c!1306403)) b!7027187))

(declare-fun m!7731062 () Bool)

(assert (=> b!7027187 m!7731062))

(assert (=> b!7026833 d!2191062))

(assert (=> b!7026833 d!2191048))

(assert (=> b!7026878 d!2190794))

(declare-fun d!2191064 () Bool)

(declare-fun res!2868663 () Bool)

(declare-fun e!4224405 () Bool)

(assert (=> d!2191064 (=> res!2868663 e!4224405)))

(assert (=> d!2191064 (= res!2868663 (is-Nil!67750 lt!2515458))))

(assert (=> d!2191064 (= (noDuplicate!2614 lt!2515458) e!4224405)))

(declare-fun b!7027192 () Bool)

(declare-fun e!4224406 () Bool)

(assert (=> b!7027192 (= e!4224405 e!4224406)))

(declare-fun res!2868664 () Bool)

(assert (=> b!7027192 (=> (not res!2868664) (not e!4224406))))

(assert (=> b!7027192 (= res!2868664 (not (contains!20443 (t!381633 lt!2515458) (h!74198 lt!2515458))))))

(declare-fun b!7027193 () Bool)

(assert (=> b!7027193 (= e!4224406 (noDuplicate!2614 (t!381633 lt!2515458)))))

(assert (= (and d!2191064 (not res!2868663)) b!7027192))

(assert (= (and b!7027192 res!2868664) b!7027193))

(declare-fun m!7731064 () Bool)

(assert (=> b!7027192 m!7731064))

(declare-fun m!7731066 () Bool)

(assert (=> b!7027193 m!7731066))

(assert (=> d!2190844 d!2191064))

(declare-fun d!2191066 () Bool)

(declare-fun e!4224414 () Bool)

(assert (=> d!2191066 e!4224414))

(declare-fun res!2868669 () Bool)

(assert (=> d!2191066 (=> (not res!2868669) (not e!4224414))))

(declare-fun res!2868670 () List!67874)

(assert (=> d!2191066 (= res!2868669 (noDuplicate!2614 res!2868670))))

(declare-fun e!4224415 () Bool)

(assert (=> d!2191066 e!4224415))

(assert (=> d!2191066 (= (choose!53100 z1!570) res!2868670)))

(declare-fun b!7027201 () Bool)

(declare-fun e!4224413 () Bool)

(declare-fun tp!1935691 () Bool)

(assert (=> b!7027201 (= e!4224413 tp!1935691)))

(declare-fun tp!1935692 () Bool)

(declare-fun b!7027200 () Bool)

(assert (=> b!7027200 (= e!4224415 (and (inv!86480 (h!74198 res!2868670)) e!4224413 tp!1935692))))

(declare-fun b!7027202 () Bool)

(assert (=> b!7027202 (= e!4224414 (= (content!13500 res!2868670) z1!570))))

(assert (= b!7027200 b!7027201))

(assert (= (and d!2191066 (is-Cons!67750 res!2868670)) b!7027200))

(assert (= (and d!2191066 res!2868669) b!7027202))

(declare-fun m!7731068 () Bool)

(assert (=> d!2191066 m!7731068))

(declare-fun m!7731070 () Bool)

(assert (=> b!7027200 m!7731070))

(declare-fun m!7731072 () Bool)

(assert (=> b!7027202 m!7731072))

(assert (=> d!2190844 d!2191066))

(declare-fun d!2191068 () Bool)

(assert (=> d!2191068 (= (nullable!7159 (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))) (nullableFct!2714 (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))))))

(declare-fun bs!1869052 () Bool)

(assert (= bs!1869052 d!2191068))

(declare-fun m!7731074 () Bool)

(assert (=> bs!1869052 m!7731074))

(assert (=> b!7026867 d!2191068))

(declare-fun d!2191070 () Bool)

(assert (=> d!2191070 true))

(declare-fun setRes!49020 () Bool)

(assert (=> d!2191070 setRes!49020))

(declare-fun condSetEmpty!49020 () Bool)

(declare-fun res!2868671 () (Set Context!12888))

(assert (=> d!2191070 (= condSetEmpty!49020 (= res!2868671 (as set.empty (Set Context!12888))))))

(assert (=> d!2191070 (= (choose!53101 lt!2515245 lambda!413333) res!2868671)))

(declare-fun setIsEmpty!49020 () Bool)

(assert (=> setIsEmpty!49020 setRes!49020))

(declare-fun setElem!49020 () Context!12888)

(declare-fun tp!1935693 () Bool)

(declare-fun setNonEmpty!49020 () Bool)

(declare-fun e!4224416 () Bool)

(assert (=> setNonEmpty!49020 (= setRes!49020 (and tp!1935693 (inv!86480 setElem!49020) e!4224416))))

(declare-fun setRest!49020 () (Set Context!12888))

(assert (=> setNonEmpty!49020 (= res!2868671 (set.union (set.insert setElem!49020 (as set.empty (Set Context!12888))) setRest!49020))))

(declare-fun b!7027203 () Bool)

(declare-fun tp!1935694 () Bool)

(assert (=> b!7027203 (= e!4224416 tp!1935694)))

(assert (= (and d!2191070 condSetEmpty!49020) setIsEmpty!49020))

(assert (= (and d!2191070 (not condSetEmpty!49020)) setNonEmpty!49020))

(assert (= setNonEmpty!49020 b!7027203))

(declare-fun m!7731076 () Bool)

(assert (=> setNonEmpty!49020 m!7731076))

(assert (=> d!2190836 d!2191070))

(assert (=> d!2190804 d!2190974))

(declare-fun b!7027216 () Bool)

(declare-fun e!4224427 () Context!12888)

(declare-fun e!4224428 () Context!12888)

(assert (=> b!7027216 (= e!4224427 e!4224428)))

(declare-fun c!1306408 () Bool)

(assert (=> b!7027216 (= c!1306408 (is-Cons!67750 (toList!10791 lt!2515257)))))

(declare-fun b!7027217 () Bool)

(declare-fun e!4224425 () Bool)

(declare-fun lt!2515538 () Context!12888)

(assert (=> b!7027217 (= e!4224425 (contains!20443 (toList!10791 lt!2515257) lt!2515538))))

(declare-fun b!7027218 () Bool)

(declare-fun e!4224426 () Bool)

(assert (=> b!7027218 (= e!4224426 (dynLambda!27318 lambda!413330 (h!74198 (toList!10791 lt!2515257))))))

(declare-fun b!7027219 () Bool)

(assert (=> b!7027219 (= e!4224428 (getWitness!1443 (t!381633 (toList!10791 lt!2515257)) lambda!413330))))

(declare-fun d!2191072 () Bool)

(assert (=> d!2191072 e!4224425))

(declare-fun res!2868677 () Bool)

(assert (=> d!2191072 (=> (not res!2868677) (not e!4224425))))

(assert (=> d!2191072 (= res!2868677 (dynLambda!27318 lambda!413330 lt!2515538))))

(assert (=> d!2191072 (= lt!2515538 e!4224427)))

(declare-fun c!1306409 () Bool)

(assert (=> d!2191072 (= c!1306409 e!4224426)))

(declare-fun res!2868676 () Bool)

(assert (=> d!2191072 (=> (not res!2868676) (not e!4224426))))

(assert (=> d!2191072 (= res!2868676 (is-Cons!67750 (toList!10791 lt!2515257)))))

(assert (=> d!2191072 (exists!3360 (toList!10791 lt!2515257) lambda!413330)))

(assert (=> d!2191072 (= (getWitness!1443 (toList!10791 lt!2515257) lambda!413330) lt!2515538)))

(declare-fun b!7027220 () Bool)

(assert (=> b!7027220 (= e!4224427 (h!74198 (toList!10791 lt!2515257)))))

(declare-fun b!7027221 () Bool)

(declare-fun lt!2515537 () Unit!161561)

(declare-fun Unit!161565 () Unit!161561)

(assert (=> b!7027221 (= lt!2515537 Unit!161565)))

(assert (=> b!7027221 false))

(declare-fun head!14245 (List!67874) Context!12888)

(assert (=> b!7027221 (= e!4224428 (head!14245 (toList!10791 lt!2515257)))))

(assert (= (and d!2191072 res!2868676) b!7027218))

(assert (= (and d!2191072 c!1306409) b!7027220))

(assert (= (and d!2191072 (not c!1306409)) b!7027216))

(assert (= (and b!7027216 c!1306408) b!7027219))

(assert (= (and b!7027216 (not c!1306408)) b!7027221))

(assert (= (and d!2191072 res!2868677) b!7027217))

(declare-fun b_lambda!265771 () Bool)

(assert (=> (not b_lambda!265771) (not b!7027218)))

(declare-fun b_lambda!265773 () Bool)

(assert (=> (not b_lambda!265773) (not d!2191072)))

(declare-fun m!7731078 () Bool)

(assert (=> d!2191072 m!7731078))

(assert (=> d!2191072 m!7730298))

(declare-fun m!7731080 () Bool)

(assert (=> d!2191072 m!7731080))

(assert (=> b!7027217 m!7730298))

(declare-fun m!7731082 () Bool)

(assert (=> b!7027217 m!7731082))

(assert (=> b!7027221 m!7730298))

(declare-fun m!7731084 () Bool)

(assert (=> b!7027221 m!7731084))

(declare-fun m!7731086 () Bool)

(assert (=> b!7027219 m!7731086))

(declare-fun m!7731088 () Bool)

(assert (=> b!7027218 m!7731088))

(assert (=> d!2190784 d!2191072))

(assert (=> d!2190784 d!2190790))

(declare-fun d!2191074 () Bool)

(declare-fun lt!2515541 () Bool)

(assert (=> d!2191074 (= lt!2515541 (exists!3360 (toList!10791 lt!2515257) lambda!413330))))

(declare-fun choose!53118 ((Set Context!12888) Int) Bool)

(assert (=> d!2191074 (= lt!2515541 (choose!53118 lt!2515257 lambda!413330))))

(assert (=> d!2191074 (= (exists!3362 lt!2515257 lambda!413330) lt!2515541)))

(declare-fun bs!1869053 () Bool)

(assert (= bs!1869053 d!2191074))

(assert (=> bs!1869053 m!7730298))

(assert (=> bs!1869053 m!7730298))

(assert (=> bs!1869053 m!7731080))

(declare-fun m!7731090 () Bool)

(assert (=> bs!1869053 m!7731090))

(assert (=> d!2190784 d!2191074))

(declare-fun bm!638020 () Bool)

(declare-fun call!638027 () (Set Context!12888))

(declare-fun call!638026 () (Set Context!12888))

(assert (=> bm!638020 (= call!638027 call!638026)))

(declare-fun call!638030 () (Set Context!12888))

(declare-fun c!1306410 () Bool)

(declare-fun bm!638021 () Bool)

(declare-fun call!638025 () List!67872)

(assert (=> bm!638021 (= call!638030 (derivationStepZipperDown!2112 (ite c!1306410 (regOne!35409 (h!74196 (exprs!6944 lt!2515274))) (regOne!35408 (h!74196 (exprs!6944 lt!2515274)))) (ite c!1306410 (Context!12889 (t!381631 (exprs!6944 lt!2515274))) (Context!12889 call!638025)) (h!74197 s!7408)))))

(declare-fun b!7027222 () Bool)

(declare-fun e!4224433 () (Set Context!12888))

(declare-fun e!4224434 () (Set Context!12888))

(assert (=> b!7027222 (= e!4224433 e!4224434)))

(declare-fun c!1306413 () Bool)

(assert (=> b!7027222 (= c!1306413 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515274))))))

(declare-fun bm!638022 () Bool)

(declare-fun c!1306414 () Bool)

(assert (=> bm!638022 (= call!638025 ($colon$colon!2560 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274)))) (ite (or c!1306414 c!1306413) (regTwo!35408 (h!74196 (exprs!6944 lt!2515274))) (h!74196 (exprs!6944 lt!2515274)))))))

(declare-fun b!7027223 () Bool)

(declare-fun e!4224429 () (Set Context!12888))

(declare-fun e!4224430 () (Set Context!12888))

(assert (=> b!7027223 (= e!4224429 e!4224430)))

(assert (=> b!7027223 (= c!1306410 (is-Union!17448 (h!74196 (exprs!6944 lt!2515274))))))

(declare-fun b!7027224 () Bool)

(declare-fun e!4224432 () Bool)

(assert (=> b!7027224 (= e!4224432 (nullable!7159 (regOne!35408 (h!74196 (exprs!6944 lt!2515274)))))))

(declare-fun bm!638023 () Bool)

(declare-fun call!638029 () (Set Context!12888))

(assert (=> bm!638023 (= call!638029 call!638027)))

(declare-fun b!7027225 () Bool)

(assert (=> b!7027225 (= e!4224434 call!638029)))

(declare-fun b!7027226 () Bool)

(assert (=> b!7027226 (= e!4224430 (set.union call!638030 call!638026))))

(declare-fun bm!638024 () Bool)

(declare-fun call!638028 () List!67872)

(assert (=> bm!638024 (= call!638026 (derivationStepZipperDown!2112 (ite c!1306410 (regTwo!35409 (h!74196 (exprs!6944 lt!2515274))) (ite c!1306414 (regTwo!35408 (h!74196 (exprs!6944 lt!2515274))) (ite c!1306413 (regOne!35408 (h!74196 (exprs!6944 lt!2515274))) (reg!17777 (h!74196 (exprs!6944 lt!2515274)))))) (ite (or c!1306410 c!1306414) (Context!12889 (t!381631 (exprs!6944 lt!2515274))) (Context!12889 call!638028)) (h!74197 s!7408)))))

(declare-fun b!7027227 () Bool)

(declare-fun e!4224431 () (Set Context!12888))

(assert (=> b!7027227 (= e!4224431 (as set.empty (Set Context!12888)))))

(declare-fun b!7027228 () Bool)

(assert (=> b!7027228 (= e!4224433 (set.union call!638030 call!638027))))

(declare-fun b!7027229 () Bool)

(assert (=> b!7027229 (= e!4224429 (set.insert (Context!12889 (t!381631 (exprs!6944 lt!2515274))) (as set.empty (Set Context!12888))))))

(declare-fun bm!638025 () Bool)

(assert (=> bm!638025 (= call!638028 call!638025)))

(declare-fun d!2191076 () Bool)

(declare-fun c!1306412 () Bool)

(assert (=> d!2191076 (= c!1306412 (and (is-ElementMatch!17448 (h!74196 (exprs!6944 lt!2515274))) (= (c!1306235 (h!74196 (exprs!6944 lt!2515274))) (h!74197 s!7408))))))

(assert (=> d!2191076 (= (derivationStepZipperDown!2112 (h!74196 (exprs!6944 lt!2515274)) (Context!12889 (t!381631 (exprs!6944 lt!2515274))) (h!74197 s!7408)) e!4224429)))

(declare-fun b!7027230 () Bool)

(declare-fun c!1306411 () Bool)

(assert (=> b!7027230 (= c!1306411 (is-Star!17448 (h!74196 (exprs!6944 lt!2515274))))))

(assert (=> b!7027230 (= e!4224434 e!4224431)))

(declare-fun b!7027231 () Bool)

(assert (=> b!7027231 (= c!1306414 e!4224432)))

(declare-fun res!2868678 () Bool)

(assert (=> b!7027231 (=> (not res!2868678) (not e!4224432))))

(assert (=> b!7027231 (= res!2868678 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515274))))))

(assert (=> b!7027231 (= e!4224430 e!4224433)))

(declare-fun b!7027232 () Bool)

(assert (=> b!7027232 (= e!4224431 call!638029)))

(assert (= (and d!2191076 c!1306412) b!7027229))

(assert (= (and d!2191076 (not c!1306412)) b!7027223))

(assert (= (and b!7027223 c!1306410) b!7027226))

(assert (= (and b!7027223 (not c!1306410)) b!7027231))

(assert (= (and b!7027231 res!2868678) b!7027224))

(assert (= (and b!7027231 c!1306414) b!7027228))

(assert (= (and b!7027231 (not c!1306414)) b!7027222))

(assert (= (and b!7027222 c!1306413) b!7027225))

(assert (= (and b!7027222 (not c!1306413)) b!7027230))

(assert (= (and b!7027230 c!1306411) b!7027232))

(assert (= (and b!7027230 (not c!1306411)) b!7027227))

(assert (= (or b!7027225 b!7027232) bm!638025))

(assert (= (or b!7027225 b!7027232) bm!638023))

(assert (= (or b!7027228 bm!638023) bm!638020))

(assert (= (or b!7027228 bm!638025) bm!638022))

(assert (= (or b!7027226 b!7027228) bm!638021))

(assert (= (or b!7027226 bm!638020) bm!638024))

(declare-fun m!7731092 () Bool)

(assert (=> bm!638021 m!7731092))

(declare-fun m!7731094 () Bool)

(assert (=> b!7027229 m!7731094))

(declare-fun m!7731096 () Bool)

(assert (=> bm!638024 m!7731096))

(declare-fun m!7731098 () Bool)

(assert (=> b!7027224 m!7731098))

(declare-fun m!7731100 () Bool)

(assert (=> bm!638022 m!7731100))

(assert (=> bm!637974 d!2191076))

(declare-fun d!2191078 () Bool)

(declare-fun c!1306415 () Bool)

(assert (=> d!2191078 (= c!1306415 (isEmpty!39502 s!7408))))

(declare-fun e!4224435 () Bool)

(assert (=> d!2191078 (= (matchZipper!2988 (set.insert lt!2515431 (as set.empty (Set Context!12888))) s!7408) e!4224435)))

(declare-fun b!7027233 () Bool)

(assert (=> b!7027233 (= e!4224435 (nullableZipper!2565 (set.insert lt!2515431 (as set.empty (Set Context!12888)))))))

(declare-fun b!7027234 () Bool)

(assert (=> b!7027234 (= e!4224435 (matchZipper!2988 (derivationStepZipper!2904 (set.insert lt!2515431 (as set.empty (Set Context!12888))) (head!14243 s!7408)) (tail!13523 s!7408)))))

(assert (= (and d!2191078 c!1306415) b!7027233))

(assert (= (and d!2191078 (not c!1306415)) b!7027234))

(assert (=> d!2191078 m!7730450))

(assert (=> b!7027233 m!7730668))

(declare-fun m!7731102 () Bool)

(assert (=> b!7027233 m!7731102))

(assert (=> b!7027234 m!7730454))

(assert (=> b!7027234 m!7730668))

(assert (=> b!7027234 m!7730454))

(declare-fun m!7731104 () Bool)

(assert (=> b!7027234 m!7731104))

(assert (=> b!7027234 m!7730458))

(assert (=> b!7027234 m!7731104))

(assert (=> b!7027234 m!7730458))

(declare-fun m!7731106 () Bool)

(assert (=> b!7027234 m!7731106))

(assert (=> bs!1868968 d!2191078))

(declare-fun d!2191080 () Bool)

(declare-fun c!1306416 () Bool)

(assert (=> d!2191080 (= c!1306416 (isEmpty!39502 (tail!13523 s!7408)))))

(declare-fun e!4224436 () Bool)

(assert (=> d!2191080 (= (matchZipper!2988 (derivationStepZipper!2904 lt!2515266 (head!14243 s!7408)) (tail!13523 s!7408)) e!4224436)))

(declare-fun b!7027235 () Bool)

(assert (=> b!7027235 (= e!4224436 (nullableZipper!2565 (derivationStepZipper!2904 lt!2515266 (head!14243 s!7408))))))

(declare-fun b!7027236 () Bool)

(assert (=> b!7027236 (= e!4224436 (matchZipper!2988 (derivationStepZipper!2904 (derivationStepZipper!2904 lt!2515266 (head!14243 s!7408)) (head!14243 (tail!13523 s!7408))) (tail!13523 (tail!13523 s!7408))))))

(assert (= (and d!2191080 c!1306416) b!7027235))

(assert (= (and d!2191080 (not c!1306416)) b!7027236))

(assert (=> d!2191080 m!7730458))

(assert (=> d!2191080 m!7730938))

(assert (=> b!7027235 m!7730456))

(declare-fun m!7731108 () Bool)

(assert (=> b!7027235 m!7731108))

(assert (=> b!7027236 m!7730458))

(assert (=> b!7027236 m!7730942))

(assert (=> b!7027236 m!7730456))

(assert (=> b!7027236 m!7730942))

(declare-fun m!7731110 () Bool)

(assert (=> b!7027236 m!7731110))

(assert (=> b!7027236 m!7730458))

(assert (=> b!7027236 m!7730946))

(assert (=> b!7027236 m!7731110))

(assert (=> b!7027236 m!7730946))

(declare-fun m!7731112 () Bool)

(assert (=> b!7027236 m!7731112))

(assert (=> b!7026791 d!2191080))

(declare-fun bs!1869054 () Bool)

(declare-fun d!2191082 () Bool)

(assert (= bs!1869054 (and d!2191082 d!2190832)))

(declare-fun lambda!413441 () Int)

(assert (=> bs!1869054 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413441 lambda!413411))))

(declare-fun bs!1869055 () Bool)

(assert (= bs!1869055 (and d!2191082 b!7026693)))

(assert (=> bs!1869055 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413441 lambda!413333))))

(declare-fun bs!1869056 () Bool)

(assert (= bs!1869056 (and d!2191082 d!2191038)))

(assert (=> bs!1869056 (= lambda!413441 lambda!413439)))

(declare-fun bs!1869057 () Bool)

(assert (= bs!1869057 (and d!2191082 d!2190800)))

(assert (=> bs!1869057 (= (= (head!14243 s!7408) (h!74197 s!7408)) (= lambda!413441 lambda!413402))))

(declare-fun bs!1869058 () Bool)

(assert (= bs!1869058 (and d!2191082 d!2191006)))

(assert (=> bs!1869058 (= (= (head!14243 s!7408) (head!14243 (t!381632 s!7408))) (= lambda!413441 lambda!413436))))

(declare-fun bs!1869059 () Bool)

(assert (= bs!1869059 (and d!2191082 d!2190992)))

(assert (=> bs!1869059 (= lambda!413441 lambda!413435)))

(assert (=> d!2191082 true))

(assert (=> d!2191082 (= (derivationStepZipper!2904 lt!2515266 (head!14243 s!7408)) (flatMap!2395 lt!2515266 lambda!413441))))

(declare-fun bs!1869060 () Bool)

(assert (= bs!1869060 d!2191082))

(declare-fun m!7731114 () Bool)

(assert (=> bs!1869060 m!7731114))

(assert (=> b!7026791 d!2191082))

(assert (=> b!7026791 d!2190994))

(assert (=> b!7026791 d!2190996))

(declare-fun b!7027237 () Bool)

(declare-fun e!4224438 () (Set Context!12888))

(declare-fun call!638031 () (Set Context!12888))

(assert (=> b!7027237 (= e!4224438 call!638031)))

(declare-fun b!7027238 () Bool)

(declare-fun e!4224439 () (Set Context!12888))

(assert (=> b!7027238 (= e!4224439 e!4224438)))

(declare-fun c!1306418 () Bool)

(assert (=> b!7027238 (= c!1306418 (is-Cons!67748 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515243))))))))

(declare-fun b!7027239 () Bool)

(assert (=> b!7027239 (= e!4224438 (as set.empty (Set Context!12888)))))

(declare-fun d!2191084 () Bool)

(declare-fun c!1306417 () Bool)

(declare-fun e!4224437 () Bool)

(assert (=> d!2191084 (= c!1306417 e!4224437)))

(declare-fun res!2868679 () Bool)

(assert (=> d!2191084 (=> (not res!2868679) (not e!4224437))))

(assert (=> d!2191084 (= res!2868679 (is-Cons!67748 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515243))))))))

(assert (=> d!2191084 (= (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 lt!2515243))) (h!74197 s!7408)) e!4224439)))

(declare-fun b!7027240 () Bool)

(assert (=> b!7027240 (= e!4224437 (nullable!7159 (h!74196 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515243)))))))))

(declare-fun bm!638026 () Bool)

(assert (=> bm!638026 (= call!638031 (derivationStepZipperDown!2112 (h!74196 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515243))))) (Context!12889 (t!381631 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515243)))))) (h!74197 s!7408)))))

(declare-fun b!7027241 () Bool)

(assert (=> b!7027241 (= e!4224439 (set.union call!638031 (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515243)))))) (h!74197 s!7408))))))

(assert (= (and d!2191084 res!2868679) b!7027240))

(assert (= (and d!2191084 c!1306417) b!7027241))

(assert (= (and d!2191084 (not c!1306417)) b!7027238))

(assert (= (and b!7027238 c!1306418) b!7027237))

(assert (= (and b!7027238 (not c!1306418)) b!7027239))

(assert (= (or b!7027241 b!7027237) bm!638026))

(declare-fun m!7731116 () Bool)

(assert (=> b!7027240 m!7731116))

(declare-fun m!7731118 () Bool)

(assert (=> bm!638026 m!7731118))

(declare-fun m!7731120 () Bool)

(assert (=> b!7027241 m!7731120))

(assert (=> b!7026820 d!2191084))

(declare-fun d!2191086 () Bool)

(declare-fun c!1306419 () Bool)

(assert (=> d!2191086 (= c!1306419 (isEmpty!39502 (tail!13523 (t!381632 s!7408))))))

(declare-fun e!4224440 () Bool)

(assert (=> d!2191086 (= (matchZipper!2988 (derivationStepZipper!2904 lt!2515273 (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))) e!4224440)))

(declare-fun b!7027242 () Bool)

(assert (=> b!7027242 (= e!4224440 (nullableZipper!2565 (derivationStepZipper!2904 lt!2515273 (head!14243 (t!381632 s!7408)))))))

(declare-fun b!7027243 () Bool)

(assert (=> b!7027243 (= e!4224440 (matchZipper!2988 (derivationStepZipper!2904 (derivationStepZipper!2904 lt!2515273 (head!14243 (t!381632 s!7408))) (head!14243 (tail!13523 (t!381632 s!7408)))) (tail!13523 (tail!13523 (t!381632 s!7408)))))))

(assert (= (and d!2191086 c!1306419) b!7027242))

(assert (= (and d!2191086 (not c!1306419)) b!7027243))

(assert (=> d!2191086 m!7730506))

(assert (=> d!2191086 m!7730970))

(assert (=> b!7027242 m!7730504))

(declare-fun m!7731122 () Bool)

(assert (=> b!7027242 m!7731122))

(assert (=> b!7027243 m!7730506))

(assert (=> b!7027243 m!7730974))

(assert (=> b!7027243 m!7730504))

(assert (=> b!7027243 m!7730974))

(declare-fun m!7731124 () Bool)

(assert (=> b!7027243 m!7731124))

(assert (=> b!7027243 m!7730506))

(assert (=> b!7027243 m!7730978))

(assert (=> b!7027243 m!7731124))

(assert (=> b!7027243 m!7730978))

(declare-fun m!7731126 () Bool)

(assert (=> b!7027243 m!7731126))

(assert (=> b!7026803 d!2191086))

(declare-fun bs!1869061 () Bool)

(declare-fun d!2191088 () Bool)

(assert (= bs!1869061 (and d!2191088 d!2190832)))

(declare-fun lambda!413442 () Int)

(assert (=> bs!1869061 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413442 lambda!413411))))

(declare-fun bs!1869062 () Bool)

(assert (= bs!1869062 (and d!2191088 b!7026693)))

(assert (=> bs!1869062 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413442 lambda!413333))))

(declare-fun bs!1869063 () Bool)

(assert (= bs!1869063 (and d!2191088 d!2191038)))

(assert (=> bs!1869063 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413442 lambda!413439))))

(declare-fun bs!1869064 () Bool)

(assert (= bs!1869064 (and d!2191088 d!2191006)))

(assert (=> bs!1869064 (= lambda!413442 lambda!413436)))

(declare-fun bs!1869065 () Bool)

(assert (= bs!1869065 (and d!2191088 d!2190992)))

(assert (=> bs!1869065 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413442 lambda!413435))))

(declare-fun bs!1869066 () Bool)

(assert (= bs!1869066 (and d!2191088 d!2190800)))

(assert (=> bs!1869066 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413442 lambda!413402))))

(declare-fun bs!1869067 () Bool)

(assert (= bs!1869067 (and d!2191088 d!2191082)))

(assert (=> bs!1869067 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413442 lambda!413441))))

(assert (=> d!2191088 true))

(assert (=> d!2191088 (= (derivationStepZipper!2904 lt!2515273 (head!14243 (t!381632 s!7408))) (flatMap!2395 lt!2515273 lambda!413442))))

(declare-fun bs!1869068 () Bool)

(assert (= bs!1869068 d!2191088))

(declare-fun m!7731128 () Bool)

(assert (=> bs!1869068 m!7731128))

(assert (=> b!7026803 d!2191088))

(assert (=> b!7026803 d!2191008))

(assert (=> b!7026803 d!2191010))

(assert (=> bs!1868971 d!2190830))

(declare-fun bm!638027 () Bool)

(declare-fun call!638034 () (Set Context!12888))

(declare-fun call!638033 () (Set Context!12888))

(assert (=> bm!638027 (= call!638034 call!638033)))

(declare-fun call!638037 () (Set Context!12888))

(declare-fun c!1306420 () Bool)

(declare-fun call!638032 () List!67872)

(declare-fun bm!638028 () Bool)

(assert (=> bm!638028 (= call!638037 (derivationStepZipperDown!2112 (ite c!1306420 (regOne!35409 (h!74196 (exprs!6944 lt!2515249))) (regOne!35408 (h!74196 (exprs!6944 lt!2515249)))) (ite c!1306420 (Context!12889 (t!381631 (exprs!6944 lt!2515249))) (Context!12889 call!638032)) (h!74197 s!7408)))))

(declare-fun b!7027244 () Bool)

(declare-fun e!4224445 () (Set Context!12888))

(declare-fun e!4224446 () (Set Context!12888))

(assert (=> b!7027244 (= e!4224445 e!4224446)))

(declare-fun c!1306423 () Bool)

(assert (=> b!7027244 (= c!1306423 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515249))))))

(declare-fun bm!638029 () Bool)

(declare-fun c!1306424 () Bool)

(assert (=> bm!638029 (= call!638032 ($colon$colon!2560 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515249)))) (ite (or c!1306424 c!1306423) (regTwo!35408 (h!74196 (exprs!6944 lt!2515249))) (h!74196 (exprs!6944 lt!2515249)))))))

(declare-fun b!7027245 () Bool)

(declare-fun e!4224441 () (Set Context!12888))

(declare-fun e!4224442 () (Set Context!12888))

(assert (=> b!7027245 (= e!4224441 e!4224442)))

(assert (=> b!7027245 (= c!1306420 (is-Union!17448 (h!74196 (exprs!6944 lt!2515249))))))

(declare-fun b!7027246 () Bool)

(declare-fun e!4224444 () Bool)

(assert (=> b!7027246 (= e!4224444 (nullable!7159 (regOne!35408 (h!74196 (exprs!6944 lt!2515249)))))))

(declare-fun bm!638030 () Bool)

(declare-fun call!638036 () (Set Context!12888))

(assert (=> bm!638030 (= call!638036 call!638034)))

(declare-fun b!7027247 () Bool)

(assert (=> b!7027247 (= e!4224446 call!638036)))

(declare-fun b!7027248 () Bool)

(assert (=> b!7027248 (= e!4224442 (set.union call!638037 call!638033))))

(declare-fun call!638035 () List!67872)

(declare-fun bm!638031 () Bool)

(assert (=> bm!638031 (= call!638033 (derivationStepZipperDown!2112 (ite c!1306420 (regTwo!35409 (h!74196 (exprs!6944 lt!2515249))) (ite c!1306424 (regTwo!35408 (h!74196 (exprs!6944 lt!2515249))) (ite c!1306423 (regOne!35408 (h!74196 (exprs!6944 lt!2515249))) (reg!17777 (h!74196 (exprs!6944 lt!2515249)))))) (ite (or c!1306420 c!1306424) (Context!12889 (t!381631 (exprs!6944 lt!2515249))) (Context!12889 call!638035)) (h!74197 s!7408)))))

(declare-fun b!7027249 () Bool)

(declare-fun e!4224443 () (Set Context!12888))

(assert (=> b!7027249 (= e!4224443 (as set.empty (Set Context!12888)))))

(declare-fun b!7027250 () Bool)

(assert (=> b!7027250 (= e!4224445 (set.union call!638037 call!638034))))

(declare-fun b!7027251 () Bool)

(assert (=> b!7027251 (= e!4224441 (set.insert (Context!12889 (t!381631 (exprs!6944 lt!2515249))) (as set.empty (Set Context!12888))))))

(declare-fun bm!638032 () Bool)

(assert (=> bm!638032 (= call!638035 call!638032)))

(declare-fun d!2191090 () Bool)

(declare-fun c!1306422 () Bool)

(assert (=> d!2191090 (= c!1306422 (and (is-ElementMatch!17448 (h!74196 (exprs!6944 lt!2515249))) (= (c!1306235 (h!74196 (exprs!6944 lt!2515249))) (h!74197 s!7408))))))

(assert (=> d!2191090 (= (derivationStepZipperDown!2112 (h!74196 (exprs!6944 lt!2515249)) (Context!12889 (t!381631 (exprs!6944 lt!2515249))) (h!74197 s!7408)) e!4224441)))

(declare-fun b!7027252 () Bool)

(declare-fun c!1306421 () Bool)

(assert (=> b!7027252 (= c!1306421 (is-Star!17448 (h!74196 (exprs!6944 lt!2515249))))))

(assert (=> b!7027252 (= e!4224446 e!4224443)))

(declare-fun b!7027253 () Bool)

(assert (=> b!7027253 (= c!1306424 e!4224444)))

(declare-fun res!2868680 () Bool)

(assert (=> b!7027253 (=> (not res!2868680) (not e!4224444))))

(assert (=> b!7027253 (= res!2868680 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515249))))))

(assert (=> b!7027253 (= e!4224442 e!4224445)))

(declare-fun b!7027254 () Bool)

(assert (=> b!7027254 (= e!4224443 call!638036)))

(assert (= (and d!2191090 c!1306422) b!7027251))

(assert (= (and d!2191090 (not c!1306422)) b!7027245))

(assert (= (and b!7027245 c!1306420) b!7027248))

(assert (= (and b!7027245 (not c!1306420)) b!7027253))

(assert (= (and b!7027253 res!2868680) b!7027246))

(assert (= (and b!7027253 c!1306424) b!7027250))

(assert (= (and b!7027253 (not c!1306424)) b!7027244))

(assert (= (and b!7027244 c!1306423) b!7027247))

(assert (= (and b!7027244 (not c!1306423)) b!7027252))

(assert (= (and b!7027252 c!1306421) b!7027254))

(assert (= (and b!7027252 (not c!1306421)) b!7027249))

(assert (= (or b!7027247 b!7027254) bm!638032))

(assert (= (or b!7027247 b!7027254) bm!638030))

(assert (= (or b!7027250 bm!638030) bm!638027))

(assert (= (or b!7027250 bm!638032) bm!638029))

(assert (= (or b!7027248 b!7027250) bm!638028))

(assert (= (or b!7027248 bm!638027) bm!638031))

(declare-fun m!7731130 () Bool)

(assert (=> bm!638028 m!7731130))

(declare-fun m!7731132 () Bool)

(assert (=> b!7027251 m!7731132))

(declare-fun m!7731134 () Bool)

(assert (=> bm!638031 m!7731134))

(declare-fun m!7731136 () Bool)

(assert (=> b!7027246 m!7731136))

(declare-fun m!7731138 () Bool)

(assert (=> bm!638029 m!7731138))

(assert (=> bm!637973 d!2191090))

(declare-fun b!7027255 () Bool)

(declare-fun e!4224448 () Int)

(declare-fun e!4224449 () Int)

(assert (=> b!7027255 (= e!4224448 e!4224449)))

(declare-fun c!1306425 () Bool)

(assert (=> b!7027255 (= c!1306425 (is-Concat!26293 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun b!7027256 () Bool)

(declare-fun e!4224450 () Int)

(assert (=> b!7027256 (= e!4224450 1)))

(declare-fun b!7027257 () Bool)

(assert (=> b!7027257 (= e!4224449 1)))

(declare-fun bm!638033 () Bool)

(declare-fun call!638040 () Int)

(declare-fun c!1306426 () Bool)

(assert (=> bm!638033 (= call!638040 (regexDepthTotal!289 (ite c!1306426 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))))))

(declare-fun b!7027258 () Bool)

(declare-fun call!638039 () Int)

(assert (=> b!7027258 (= e!4224449 (+ 1 call!638040 call!638039))))

(declare-fun b!7027259 () Bool)

(assert (=> b!7027259 (= c!1306426 (is-Union!17448 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun e!4224447 () Int)

(assert (=> b!7027259 (= e!4224447 e!4224448)))

(declare-fun bm!638034 () Bool)

(declare-fun call!638038 () Int)

(assert (=> bm!638034 (= call!638039 call!638038)))

(declare-fun d!2191092 () Bool)

(declare-fun lt!2515542 () Int)

(assert (=> d!2191092 (> lt!2515542 0)))

(assert (=> d!2191092 (= lt!2515542 e!4224450)))

(declare-fun c!1306428 () Bool)

(assert (=> d!2191092 (= c!1306428 (is-ElementMatch!17448 (h!74196 (exprs!6944 lt!2515248))))))

(assert (=> d!2191092 (= (regexDepthTotal!289 (h!74196 (exprs!6944 lt!2515248))) lt!2515542)))

(declare-fun b!7027260 () Bool)

(assert (=> b!7027260 (= e!4224448 (+ 1 call!638039 call!638040))))

(declare-fun b!7027261 () Bool)

(assert (=> b!7027261 (= e!4224450 e!4224447)))

(declare-fun c!1306427 () Bool)

(assert (=> b!7027261 (= c!1306427 (is-Star!17448 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun b!7027262 () Bool)

(assert (=> b!7027262 (= e!4224447 (+ 1 call!638038))))

(declare-fun bm!638035 () Bool)

(assert (=> bm!638035 (= call!638038 (regexDepthTotal!289 (ite c!1306427 (reg!17777 (h!74196 (exprs!6944 lt!2515248))) (ite c!1306426 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regTwo!35408 (h!74196 (exprs!6944 lt!2515248)))))))))

(assert (= (and d!2191092 c!1306428) b!7027256))

(assert (= (and d!2191092 (not c!1306428)) b!7027261))

(assert (= (and b!7027261 c!1306427) b!7027262))

(assert (= (and b!7027261 (not c!1306427)) b!7027259))

(assert (= (and b!7027259 c!1306426) b!7027260))

(assert (= (and b!7027259 (not c!1306426)) b!7027255))

(assert (= (and b!7027255 c!1306425) b!7027258))

(assert (= (and b!7027255 (not c!1306425)) b!7027257))

(assert (= (or b!7027260 b!7027258) bm!638033))

(assert (= (or b!7027260 b!7027258) bm!638034))

(assert (= (or b!7027262 bm!638034) bm!638035))

(declare-fun m!7731140 () Bool)

(assert (=> bm!638033 m!7731140))

(declare-fun m!7731142 () Bool)

(assert (=> bm!638035 m!7731142))

(assert (=> b!7026908 d!2191092))

(declare-fun d!2191094 () Bool)

(declare-fun lt!2515543 () Int)

(assert (=> d!2191094 (>= lt!2515543 0)))

(declare-fun e!4224451 () Int)

(assert (=> d!2191094 (= lt!2515543 e!4224451)))

(declare-fun c!1306429 () Bool)

(assert (=> d!2191094 (= c!1306429 (is-Cons!67748 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515248))))))))

(assert (=> d!2191094 (= (contextDepthTotal!483 (Context!12889 (t!381631 (exprs!6944 lt!2515248)))) lt!2515543)))

(declare-fun b!7027263 () Bool)

(assert (=> b!7027263 (= e!4224451 (+ (regexDepthTotal!289 (h!74196 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515248)))))) (contextDepthTotal!483 (Context!12889 (t!381631 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515248)))))))))))

(declare-fun b!7027264 () Bool)

(assert (=> b!7027264 (= e!4224451 1)))

(assert (= (and d!2191094 c!1306429) b!7027263))

(assert (= (and d!2191094 (not c!1306429)) b!7027264))

(declare-fun m!7731144 () Bool)

(assert (=> b!7027263 m!7731144))

(declare-fun m!7731146 () Bool)

(assert (=> b!7027263 m!7731146))

(assert (=> b!7026908 d!2191094))

(declare-fun d!2191096 () Bool)

(assert (=> d!2191096 (forall!16350 (++!15481 (exprs!6944 lt!2515274) (exprs!6944 ct2!306)) lambda!413332)))

(declare-fun lt!2515544 () Unit!161561)

(assert (=> d!2191096 (= lt!2515544 (choose!53098 (exprs!6944 lt!2515274) (exprs!6944 ct2!306) lambda!413332))))

(assert (=> d!2191096 (forall!16350 (exprs!6944 lt!2515274) lambda!413332)))

(assert (=> d!2191096 (= (lemmaConcatPreservesForall!769 (exprs!6944 lt!2515274) (exprs!6944 ct2!306) lambda!413332) lt!2515544)))

(declare-fun bs!1869069 () Bool)

(assert (= bs!1869069 d!2191096))

(assert (=> bs!1869069 m!7730666))

(assert (=> bs!1869069 m!7730666))

(declare-fun m!7731148 () Bool)

(assert (=> bs!1869069 m!7731148))

(declare-fun m!7731150 () Bool)

(assert (=> bs!1869069 m!7731150))

(declare-fun m!7731152 () Bool)

(assert (=> bs!1869069 m!7731152))

(assert (=> bs!1868967 d!2191096))

(declare-fun b!7027267 () Bool)

(declare-fun res!2868682 () Bool)

(declare-fun e!4224452 () Bool)

(assert (=> b!7027267 (=> (not res!2868682) (not e!4224452))))

(declare-fun lt!2515545 () List!67872)

(assert (=> b!7027267 (= res!2868682 (= (size!41043 lt!2515545) (+ (size!41043 (exprs!6944 lt!2515274)) (size!41043 (exprs!6944 ct2!306)))))))

(declare-fun b!7027265 () Bool)

(declare-fun e!4224453 () List!67872)

(assert (=> b!7027265 (= e!4224453 (exprs!6944 ct2!306))))

(declare-fun b!7027266 () Bool)

(assert (=> b!7027266 (= e!4224453 (Cons!67748 (h!74196 (exprs!6944 lt!2515274)) (++!15481 (t!381631 (exprs!6944 lt!2515274)) (exprs!6944 ct2!306))))))

(declare-fun b!7027268 () Bool)

(assert (=> b!7027268 (= e!4224452 (or (not (= (exprs!6944 ct2!306) Nil!67748)) (= lt!2515545 (exprs!6944 lt!2515274))))))

(declare-fun d!2191098 () Bool)

(assert (=> d!2191098 e!4224452))

(declare-fun res!2868681 () Bool)

(assert (=> d!2191098 (=> (not res!2868681) (not e!4224452))))

(assert (=> d!2191098 (= res!2868681 (= (content!13501 lt!2515545) (set.union (content!13501 (exprs!6944 lt!2515274)) (content!13501 (exprs!6944 ct2!306)))))))

(assert (=> d!2191098 (= lt!2515545 e!4224453)))

(declare-fun c!1306430 () Bool)

(assert (=> d!2191098 (= c!1306430 (is-Nil!67748 (exprs!6944 lt!2515274)))))

(assert (=> d!2191098 (= (++!15481 (exprs!6944 lt!2515274) (exprs!6944 ct2!306)) lt!2515545)))

(assert (= (and d!2191098 c!1306430) b!7027265))

(assert (= (and d!2191098 (not c!1306430)) b!7027266))

(assert (= (and d!2191098 res!2868681) b!7027267))

(assert (= (and b!7027267 res!2868682) b!7027268))

(declare-fun m!7731154 () Bool)

(assert (=> b!7027267 m!7731154))

(declare-fun m!7731156 () Bool)

(assert (=> b!7027267 m!7731156))

(assert (=> b!7027267 m!7730538))

(declare-fun m!7731158 () Bool)

(assert (=> b!7027266 m!7731158))

(declare-fun m!7731160 () Bool)

(assert (=> d!2191098 m!7731160))

(declare-fun m!7731162 () Bool)

(assert (=> d!2191098 m!7731162))

(assert (=> d!2191098 m!7730546))

(assert (=> bs!1868967 d!2191098))

(assert (=> d!2190798 d!2190796))

(declare-fun d!2191100 () Bool)

(assert (=> d!2191100 (= (flatMap!2395 lt!2515266 lambda!413333) (dynLambda!27320 lambda!413333 lt!2515243))))

(assert (=> d!2191100 true))

(declare-fun _$13!4445 () Unit!161561)

(assert (=> d!2191100 (= (choose!53102 lt!2515266 lt!2515243 lambda!413333) _$13!4445)))

(declare-fun b_lambda!265775 () Bool)

(assert (=> (not b_lambda!265775) (not d!2191100)))

(declare-fun bs!1869070 () Bool)

(assert (= bs!1869070 d!2191100))

(assert (=> bs!1869070 m!7730314))

(assert (=> bs!1869070 m!7730512))

(assert (=> d!2190798 d!2191100))

(declare-fun d!2191102 () Bool)

(declare-fun res!2868683 () Bool)

(declare-fun e!4224454 () Bool)

(assert (=> d!2191102 (=> res!2868683 e!4224454)))

(assert (=> d!2191102 (= res!2868683 (is-Nil!67748 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306))))))

(assert (=> d!2191102 (= (forall!16350 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306)) lambda!413332) e!4224454)))

(declare-fun b!7027269 () Bool)

(declare-fun e!4224455 () Bool)

(assert (=> b!7027269 (= e!4224454 e!4224455)))

(declare-fun res!2868684 () Bool)

(assert (=> b!7027269 (=> (not res!2868684) (not e!4224455))))

(assert (=> b!7027269 (= res!2868684 (dynLambda!27326 lambda!413332 (h!74196 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306)))))))

(declare-fun b!7027270 () Bool)

(assert (=> b!7027270 (= e!4224455 (forall!16350 (t!381631 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306))) lambda!413332))))

(assert (= (and d!2191102 (not res!2868683)) b!7027269))

(assert (= (and b!7027269 res!2868684) b!7027270))

(declare-fun b_lambda!265777 () Bool)

(assert (=> (not b_lambda!265777) (not b!7027269)))

(declare-fun m!7731164 () Bool)

(assert (=> b!7027269 m!7731164))

(declare-fun m!7731166 () Bool)

(assert (=> b!7027270 m!7731166))

(assert (=> d!2190812 d!2191102))

(assert (=> d!2190812 d!2190810))

(declare-fun d!2191104 () Bool)

(assert (=> d!2191104 (forall!16350 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306)) lambda!413332)))

(assert (=> d!2191104 true))

(declare-fun _$78!558 () Unit!161561)

(assert (=> d!2191104 (= (choose!53098 (exprs!6944 lt!2515248) (exprs!6944 ct2!306) lambda!413332) _$78!558)))

(declare-fun bs!1869071 () Bool)

(assert (= bs!1869071 d!2191104))

(assert (=> bs!1869071 m!7730332))

(assert (=> bs!1869071 m!7730332))

(assert (=> bs!1869071 m!7730548))

(assert (=> d!2190812 d!2191104))

(declare-fun d!2191106 () Bool)

(declare-fun res!2868685 () Bool)

(declare-fun e!4224456 () Bool)

(assert (=> d!2191106 (=> res!2868685 e!4224456)))

(assert (=> d!2191106 (= res!2868685 (is-Nil!67748 (exprs!6944 lt!2515248)))))

(assert (=> d!2191106 (= (forall!16350 (exprs!6944 lt!2515248) lambda!413332) e!4224456)))

(declare-fun b!7027271 () Bool)

(declare-fun e!4224457 () Bool)

(assert (=> b!7027271 (= e!4224456 e!4224457)))

(declare-fun res!2868686 () Bool)

(assert (=> b!7027271 (=> (not res!2868686) (not e!4224457))))

(assert (=> b!7027271 (= res!2868686 (dynLambda!27326 lambda!413332 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun b!7027272 () Bool)

(assert (=> b!7027272 (= e!4224457 (forall!16350 (t!381631 (exprs!6944 lt!2515248)) lambda!413332))))

(assert (= (and d!2191106 (not res!2868685)) b!7027271))

(assert (= (and b!7027271 res!2868686) b!7027272))

(declare-fun b_lambda!265779 () Bool)

(assert (=> (not b_lambda!265779) (not b!7027271)))

(declare-fun m!7731168 () Bool)

(assert (=> b!7027271 m!7731168))

(declare-fun m!7731170 () Bool)

(assert (=> b!7027272 m!7731170))

(assert (=> d!2190812 d!2191106))

(declare-fun bs!1869072 () Bool)

(declare-fun d!2191108 () Bool)

(assert (= bs!1869072 (and d!2191108 d!2191018)))

(declare-fun lambda!413443 () Int)

(assert (=> bs!1869072 (= lambda!413443 lambda!413438)))

(declare-fun bs!1869073 () Bool)

(assert (= bs!1869073 (and d!2191108 d!2190972)))

(assert (=> bs!1869073 (= lambda!413443 lambda!413434)))

(declare-fun bs!1869074 () Bool)

(assert (= bs!1869074 (and d!2191108 d!2191058)))

(assert (=> bs!1869074 (= lambda!413443 lambda!413440)))

(declare-fun bs!1869075 () Bool)

(assert (= bs!1869075 (and d!2191108 d!2191014)))

(assert (=> bs!1869075 (= lambda!413443 lambda!413437)))

(declare-fun bs!1869076 () Bool)

(assert (= bs!1869076 (and d!2191108 b!7026698)))

(assert (=> bs!1869076 (not (= lambda!413443 lambda!413330))))

(declare-fun bs!1869077 () Bool)

(assert (= bs!1869077 (and d!2191108 d!2190792)))

(assert (=> bs!1869077 (not (= lambda!413443 lambda!413399))))

(declare-fun bs!1869078 () Bool)

(assert (= bs!1869078 (and d!2191108 d!2190786)))

(assert (=> bs!1869078 (not (= lambda!413443 lambda!413396))))

(assert (=> d!2191108 (= (nullableZipper!2565 lt!2515275) (exists!3362 lt!2515275 lambda!413443))))

(declare-fun bs!1869079 () Bool)

(assert (= bs!1869079 d!2191108))

(declare-fun m!7731172 () Bool)

(assert (=> bs!1869079 m!7731172))

(assert (=> b!7026795 d!2191108))

(declare-fun bm!638036 () Bool)

(declare-fun call!638043 () (Set Context!12888))

(declare-fun call!638042 () (Set Context!12888))

(assert (=> bm!638036 (= call!638043 call!638042)))

(declare-fun call!638041 () List!67872)

(declare-fun call!638046 () (Set Context!12888))

(declare-fun c!1306431 () Bool)

(declare-fun bm!638037 () Bool)

(assert (=> bm!638037 (= call!638046 (derivationStepZipperDown!2112 (ite c!1306431 (regOne!35409 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))) (regOne!35408 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))))) (ite c!1306431 (ite c!1306282 lt!2515243 (Context!12889 call!637972)) (Context!12889 call!638041)) (h!74197 s!7408)))))

(declare-fun b!7027273 () Bool)

(declare-fun e!4224462 () (Set Context!12888))

(declare-fun e!4224463 () (Set Context!12888))

(assert (=> b!7027273 (= e!4224462 e!4224463)))

(declare-fun c!1306434 () Bool)

(assert (=> b!7027273 (= c!1306434 (is-Concat!26293 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))))))

(declare-fun c!1306435 () Bool)

(declare-fun bm!638038 () Bool)

(assert (=> bm!638038 (= call!638041 ($colon$colon!2560 (exprs!6944 (ite c!1306282 lt!2515243 (Context!12889 call!637972))) (ite (or c!1306435 c!1306434) (regTwo!35408 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))) (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))))))))

(declare-fun b!7027274 () Bool)

(declare-fun e!4224458 () (Set Context!12888))

(declare-fun e!4224459 () (Set Context!12888))

(assert (=> b!7027274 (= e!4224458 e!4224459)))

(assert (=> b!7027274 (= c!1306431 (is-Union!17448 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))))))

(declare-fun b!7027275 () Bool)

(declare-fun e!4224461 () Bool)

(assert (=> b!7027275 (= e!4224461 (nullable!7159 (regOne!35408 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))))))))

(declare-fun bm!638039 () Bool)

(declare-fun call!638045 () (Set Context!12888))

(assert (=> bm!638039 (= call!638045 call!638043)))

(declare-fun b!7027276 () Bool)

(assert (=> b!7027276 (= e!4224463 call!638045)))

(declare-fun b!7027277 () Bool)

(assert (=> b!7027277 (= e!4224459 (set.union call!638046 call!638042))))

(declare-fun bm!638040 () Bool)

(declare-fun call!638044 () List!67872)

(assert (=> bm!638040 (= call!638042 (derivationStepZipperDown!2112 (ite c!1306431 (regTwo!35409 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))) (ite c!1306435 (regTwo!35408 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))) (ite c!1306434 (regOne!35408 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))) (reg!17777 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))))))) (ite (or c!1306431 c!1306435) (ite c!1306282 lt!2515243 (Context!12889 call!637972)) (Context!12889 call!638044)) (h!74197 s!7408)))))

(declare-fun b!7027278 () Bool)

(declare-fun e!4224460 () (Set Context!12888))

(assert (=> b!7027278 (= e!4224460 (as set.empty (Set Context!12888)))))

(declare-fun b!7027279 () Bool)

(assert (=> b!7027279 (= e!4224462 (set.union call!638046 call!638043))))

(declare-fun b!7027280 () Bool)

(assert (=> b!7027280 (= e!4224458 (set.insert (ite c!1306282 lt!2515243 (Context!12889 call!637972)) (as set.empty (Set Context!12888))))))

(declare-fun bm!638041 () Bool)

(assert (=> bm!638041 (= call!638044 call!638041)))

(declare-fun d!2191110 () Bool)

(declare-fun c!1306433 () Bool)

(assert (=> d!2191110 (= c!1306433 (and (is-ElementMatch!17448 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))) (= (c!1306235 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))) (h!74197 s!7408))))))

(assert (=> d!2191110 (= (derivationStepZipperDown!2112 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248)))) (ite c!1306282 lt!2515243 (Context!12889 call!637972)) (h!74197 s!7408)) e!4224458)))

(declare-fun b!7027281 () Bool)

(declare-fun c!1306432 () Bool)

(assert (=> b!7027281 (= c!1306432 (is-Star!17448 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))))))

(assert (=> b!7027281 (= e!4224463 e!4224460)))

(declare-fun b!7027282 () Bool)

(assert (=> b!7027282 (= c!1306435 e!4224461)))

(declare-fun res!2868687 () Bool)

(assert (=> b!7027282 (=> (not res!2868687) (not e!4224461))))

(assert (=> b!7027282 (= res!2868687 (is-Concat!26293 (ite c!1306282 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))))))

(assert (=> b!7027282 (= e!4224459 e!4224462)))

(declare-fun b!7027283 () Bool)

(assert (=> b!7027283 (= e!4224460 call!638045)))

(assert (= (and d!2191110 c!1306433) b!7027280))

(assert (= (and d!2191110 (not c!1306433)) b!7027274))

(assert (= (and b!7027274 c!1306431) b!7027277))

(assert (= (and b!7027274 (not c!1306431)) b!7027282))

(assert (= (and b!7027282 res!2868687) b!7027275))

(assert (= (and b!7027282 c!1306435) b!7027279))

(assert (= (and b!7027282 (not c!1306435)) b!7027273))

(assert (= (and b!7027273 c!1306434) b!7027276))

(assert (= (and b!7027273 (not c!1306434)) b!7027281))

(assert (= (and b!7027281 c!1306432) b!7027283))

(assert (= (and b!7027281 (not c!1306432)) b!7027278))

(assert (= (or b!7027276 b!7027283) bm!638041))

(assert (= (or b!7027276 b!7027283) bm!638039))

(assert (= (or b!7027279 bm!638039) bm!638036))

(assert (= (or b!7027279 bm!638041) bm!638038))

(assert (= (or b!7027277 b!7027279) bm!638037))

(assert (= (or b!7027277 bm!638036) bm!638040))

(declare-fun m!7731174 () Bool)

(assert (=> bm!638037 m!7731174))

(declare-fun m!7731176 () Bool)

(assert (=> b!7027280 m!7731176))

(declare-fun m!7731178 () Bool)

(assert (=> bm!638040 m!7731178))

(declare-fun m!7731180 () Bool)

(assert (=> b!7027275 m!7731180))

(declare-fun m!7731182 () Bool)

(assert (=> bm!638038 m!7731182))

(assert (=> bm!637968 d!2191110))

(declare-fun bs!1869080 () Bool)

(declare-fun d!2191112 () Bool)

(assert (= bs!1869080 (and d!2191112 d!2191018)))

(declare-fun lambda!413444 () Int)

(assert (=> bs!1869080 (not (= lambda!413444 lambda!413438))))

(declare-fun bs!1869081 () Bool)

(assert (= bs!1869081 (and d!2191112 d!2190972)))

(assert (=> bs!1869081 (not (= lambda!413444 lambda!413434))))

(declare-fun bs!1869082 () Bool)

(assert (= bs!1869082 (and d!2191112 d!2191108)))

(assert (=> bs!1869082 (not (= lambda!413444 lambda!413443))))

(declare-fun bs!1869083 () Bool)

(assert (= bs!1869083 (and d!2191112 d!2191058)))

(assert (=> bs!1869083 (not (= lambda!413444 lambda!413440))))

(declare-fun bs!1869084 () Bool)

(assert (= bs!1869084 (and d!2191112 d!2191014)))

(assert (=> bs!1869084 (not (= lambda!413444 lambda!413437))))

(declare-fun bs!1869085 () Bool)

(assert (= bs!1869085 (and d!2191112 b!7026698)))

(assert (=> bs!1869085 (not (= lambda!413444 lambda!413330))))

(declare-fun bs!1869086 () Bool)

(assert (= bs!1869086 (and d!2191112 d!2190792)))

(assert (=> bs!1869086 (= (= lambda!413396 lambda!413330) (= lambda!413444 lambda!413399))))

(declare-fun bs!1869087 () Bool)

(assert (= bs!1869087 (and d!2191112 d!2190786)))

(assert (=> bs!1869087 (not (= lambda!413444 lambda!413396))))

(assert (=> d!2191112 true))

(assert (=> d!2191112 (< (dynLambda!27319 order!28145 lambda!413396) (dynLambda!27319 order!28145 lambda!413444))))

(assert (=> d!2191112 (= (exists!3360 lt!2515241 lambda!413396) (not (forall!16351 lt!2515241 lambda!413444)))))

(declare-fun bs!1869088 () Bool)

(assert (= bs!1869088 d!2191112))

(declare-fun m!7731184 () Bool)

(assert (=> bs!1869088 m!7731184))

(assert (=> d!2190786 d!2191112))

(declare-fun bs!1869089 () Bool)

(declare-fun d!2191114 () Bool)

(assert (= bs!1869089 (and d!2191114 d!2191018)))

(declare-fun lambda!413447 () Int)

(assert (=> bs!1869089 (not (= lambda!413447 lambda!413438))))

(declare-fun bs!1869090 () Bool)

(assert (= bs!1869090 (and d!2191114 d!2190972)))

(assert (=> bs!1869090 (not (= lambda!413447 lambda!413434))))

(declare-fun bs!1869091 () Bool)

(assert (= bs!1869091 (and d!2191114 d!2191108)))

(assert (=> bs!1869091 (not (= lambda!413447 lambda!413443))))

(declare-fun bs!1869092 () Bool)

(assert (= bs!1869092 (and d!2191114 d!2191058)))

(assert (=> bs!1869092 (not (= lambda!413447 lambda!413440))))

(declare-fun bs!1869093 () Bool)

(assert (= bs!1869093 (and d!2191114 d!2191112)))

(assert (=> bs!1869093 (not (= lambda!413447 lambda!413444))))

(declare-fun bs!1869094 () Bool)

(assert (= bs!1869094 (and d!2191114 d!2191014)))

(assert (=> bs!1869094 (not (= lambda!413447 lambda!413437))))

(declare-fun bs!1869095 () Bool)

(assert (= bs!1869095 (and d!2191114 b!7026698)))

(assert (=> bs!1869095 (= lambda!413447 lambda!413330)))

(declare-fun bs!1869096 () Bool)

(assert (= bs!1869096 (and d!2191114 d!2190792)))

(assert (=> bs!1869096 (not (= lambda!413447 lambda!413399))))

(declare-fun bs!1869097 () Bool)

(assert (= bs!1869097 (and d!2191114 d!2190786)))

(assert (=> bs!1869097 (= lambda!413447 lambda!413396)))

(assert (=> d!2191114 true))

(assert (=> d!2191114 (exists!3360 lt!2515241 lambda!413447)))

(assert (=> d!2191114 true))

(declare-fun _$60!1105 () Unit!161561)

(assert (=> d!2191114 (= (choose!53099 lt!2515241 s!7408) _$60!1105)))

(declare-fun bs!1869098 () Bool)

(assert (= bs!1869098 d!2191114))

(declare-fun m!7731186 () Bool)

(assert (=> bs!1869098 m!7731186))

(assert (=> d!2190786 d!2191114))

(declare-fun d!2191116 () Bool)

(declare-fun c!1306438 () Bool)

(assert (=> d!2191116 (= c!1306438 (isEmpty!39502 s!7408))))

(declare-fun e!4224464 () Bool)

(assert (=> d!2191116 (= (matchZipper!2988 (content!13500 lt!2515241) s!7408) e!4224464)))

(declare-fun b!7027284 () Bool)

(assert (=> b!7027284 (= e!4224464 (nullableZipper!2565 (content!13500 lt!2515241)))))

(declare-fun b!7027285 () Bool)

(assert (=> b!7027285 (= e!4224464 (matchZipper!2988 (derivationStepZipper!2904 (content!13500 lt!2515241) (head!14243 s!7408)) (tail!13523 s!7408)))))

(assert (= (and d!2191116 c!1306438) b!7027284))

(assert (= (and d!2191116 (not c!1306438)) b!7027285))

(assert (=> d!2191116 m!7730450))

(assert (=> b!7027284 m!7730480))

(declare-fun m!7731188 () Bool)

(assert (=> b!7027284 m!7731188))

(assert (=> b!7027285 m!7730454))

(assert (=> b!7027285 m!7730480))

(assert (=> b!7027285 m!7730454))

(declare-fun m!7731190 () Bool)

(assert (=> b!7027285 m!7731190))

(assert (=> b!7027285 m!7730458))

(assert (=> b!7027285 m!7731190))

(assert (=> b!7027285 m!7730458))

(declare-fun m!7731192 () Bool)

(assert (=> b!7027285 m!7731192))

(assert (=> d!2190786 d!2191116))

(declare-fun d!2191118 () Bool)

(declare-fun c!1306439 () Bool)

(assert (=> d!2191118 (= c!1306439 (is-Nil!67750 lt!2515241))))

(declare-fun e!4224465 () (Set Context!12888))

(assert (=> d!2191118 (= (content!13500 lt!2515241) e!4224465)))

(declare-fun b!7027286 () Bool)

(assert (=> b!7027286 (= e!4224465 (as set.empty (Set Context!12888)))))

(declare-fun b!7027287 () Bool)

(assert (=> b!7027287 (= e!4224465 (set.union (set.insert (h!74198 lt!2515241) (as set.empty (Set Context!12888))) (content!13500 (t!381633 lt!2515241))))))

(assert (= (and d!2191118 c!1306439) b!7027286))

(assert (= (and d!2191118 (not c!1306439)) b!7027287))

(declare-fun m!7731194 () Bool)

(assert (=> b!7027287 m!7731194))

(declare-fun m!7731196 () Bool)

(assert (=> b!7027287 m!7731196))

(assert (=> d!2190786 d!2191118))

(declare-fun d!2191120 () Bool)

(declare-fun c!1306440 () Bool)

(assert (=> d!2191120 (= c!1306440 (is-Nil!67748 lt!2515445))))

(declare-fun e!4224466 () (Set Regex!17448))

(assert (=> d!2191120 (= (content!13501 lt!2515445) e!4224466)))

(declare-fun b!7027288 () Bool)

(assert (=> b!7027288 (= e!4224466 (as set.empty (Set Regex!17448)))))

(declare-fun b!7027289 () Bool)

(assert (=> b!7027289 (= e!4224466 (set.union (set.insert (h!74196 lt!2515445) (as set.empty (Set Regex!17448))) (content!13501 (t!381631 lt!2515445))))))

(assert (= (and d!2191120 c!1306440) b!7027288))

(assert (= (and d!2191120 (not c!1306440)) b!7027289))

(declare-fun m!7731198 () Bool)

(assert (=> b!7027289 m!7731198))

(declare-fun m!7731200 () Bool)

(assert (=> b!7027289 m!7731200))

(assert (=> d!2190810 d!2191120))

(declare-fun d!2191122 () Bool)

(declare-fun c!1306441 () Bool)

(assert (=> d!2191122 (= c!1306441 (is-Nil!67748 (exprs!6944 lt!2515248)))))

(declare-fun e!4224467 () (Set Regex!17448))

(assert (=> d!2191122 (= (content!13501 (exprs!6944 lt!2515248)) e!4224467)))

(declare-fun b!7027290 () Bool)

(assert (=> b!7027290 (= e!4224467 (as set.empty (Set Regex!17448)))))

(declare-fun b!7027291 () Bool)

(assert (=> b!7027291 (= e!4224467 (set.union (set.insert (h!74196 (exprs!6944 lt!2515248)) (as set.empty (Set Regex!17448))) (content!13501 (t!381631 (exprs!6944 lt!2515248)))))))

(assert (= (and d!2191122 c!1306441) b!7027290))

(assert (= (and d!2191122 (not c!1306441)) b!7027291))

(declare-fun m!7731202 () Bool)

(assert (=> b!7027291 m!7731202))

(declare-fun m!7731204 () Bool)

(assert (=> b!7027291 m!7731204))

(assert (=> d!2190810 d!2191122))

(assert (=> d!2190810 d!2190986))

(declare-fun bs!1869099 () Bool)

(declare-fun d!2191124 () Bool)

(assert (= bs!1869099 (and d!2191124 d!2191018)))

(declare-fun lambda!413448 () Int)

(assert (=> bs!1869099 (= lambda!413448 lambda!413438)))

(declare-fun bs!1869100 () Bool)

(assert (= bs!1869100 (and d!2191124 d!2190972)))

(assert (=> bs!1869100 (= lambda!413448 lambda!413434)))

(declare-fun bs!1869101 () Bool)

(assert (= bs!1869101 (and d!2191124 d!2191108)))

(assert (=> bs!1869101 (= lambda!413448 lambda!413443)))

(declare-fun bs!1869102 () Bool)

(assert (= bs!1869102 (and d!2191124 d!2191058)))

(assert (=> bs!1869102 (= lambda!413448 lambda!413440)))

(declare-fun bs!1869103 () Bool)

(assert (= bs!1869103 (and d!2191124 d!2191112)))

(assert (=> bs!1869103 (not (= lambda!413448 lambda!413444))))

(declare-fun bs!1869104 () Bool)

(assert (= bs!1869104 (and d!2191124 d!2191114)))

(assert (=> bs!1869104 (not (= lambda!413448 lambda!413447))))

(declare-fun bs!1869105 () Bool)

(assert (= bs!1869105 (and d!2191124 d!2191014)))

(assert (=> bs!1869105 (= lambda!413448 lambda!413437)))

(declare-fun bs!1869106 () Bool)

(assert (= bs!1869106 (and d!2191124 b!7026698)))

(assert (=> bs!1869106 (not (= lambda!413448 lambda!413330))))

(declare-fun bs!1869107 () Bool)

(assert (= bs!1869107 (and d!2191124 d!2190792)))

(assert (=> bs!1869107 (not (= lambda!413448 lambda!413399))))

(declare-fun bs!1869108 () Bool)

(assert (= bs!1869108 (and d!2191124 d!2190786)))

(assert (=> bs!1869108 (not (= lambda!413448 lambda!413396))))

(assert (=> d!2191124 (= (nullableZipper!2565 lt!2515268) (exists!3362 lt!2515268 lambda!413448))))

(declare-fun bs!1869109 () Bool)

(assert (= bs!1869109 d!2191124))

(declare-fun m!7731206 () Bool)

(assert (=> bs!1869109 m!7731206))

(assert (=> b!7026879 d!2191124))

(assert (=> d!2190826 d!2190988))

(assert (=> bs!1868969 d!2190802))

(assert (=> d!2190794 d!2190988))

(declare-fun d!2191126 () Bool)

(assert (=> d!2191126 (= (nullable!7159 (h!74196 (exprs!6944 lt!2515243))) (nullableFct!2714 (h!74196 (exprs!6944 lt!2515243))))))

(declare-fun bs!1869110 () Bool)

(assert (= bs!1869110 d!2191126))

(declare-fun m!7731208 () Bool)

(assert (=> bs!1869110 m!7731208))

(assert (=> b!7026819 d!2191126))

(assert (=> d!2190834 d!2190836))

(declare-fun d!2191128 () Bool)

(assert (=> d!2191128 (= (flatMap!2395 lt!2515245 lambda!413333) (dynLambda!27320 lambda!413333 lt!2515249))))

(assert (=> d!2191128 true))

(declare-fun _$13!4446 () Unit!161561)

(assert (=> d!2191128 (= (choose!53102 lt!2515245 lt!2515249 lambda!413333) _$13!4446)))

(declare-fun b_lambda!265781 () Bool)

(assert (=> (not b_lambda!265781) (not d!2191128)))

(declare-fun bs!1869111 () Bool)

(assert (= bs!1869111 d!2191128))

(assert (=> bs!1869111 m!7730280))

(assert (=> bs!1869111 m!7730612))

(assert (=> d!2190834 d!2191128))

(declare-fun d!2191130 () Bool)

(assert (=> d!2191130 (= (flatMap!2395 lt!2515266 lambda!413402) (choose!53101 lt!2515266 lambda!413402))))

(declare-fun bs!1869112 () Bool)

(assert (= bs!1869112 d!2191130))

(declare-fun m!7731210 () Bool)

(assert (=> bs!1869112 m!7731210))

(assert (=> d!2190800 d!2191130))

(declare-fun d!2191132 () Bool)

(declare-fun c!1306442 () Bool)

(assert (=> d!2191132 (= c!1306442 (isEmpty!39502 (tail!13523 (t!381632 s!7408))))))

(declare-fun e!4224468 () Bool)

(assert (=> d!2191132 (= (matchZipper!2988 (derivationStepZipper!2904 lt!2515259 (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))) e!4224468)))

(declare-fun b!7027292 () Bool)

(assert (=> b!7027292 (= e!4224468 (nullableZipper!2565 (derivationStepZipper!2904 lt!2515259 (head!14243 (t!381632 s!7408)))))))

(declare-fun b!7027293 () Bool)

(assert (=> b!7027293 (= e!4224468 (matchZipper!2988 (derivationStepZipper!2904 (derivationStepZipper!2904 lt!2515259 (head!14243 (t!381632 s!7408))) (head!14243 (tail!13523 (t!381632 s!7408)))) (tail!13523 (tail!13523 (t!381632 s!7408)))))))

(assert (= (and d!2191132 c!1306442) b!7027292))

(assert (= (and d!2191132 (not c!1306442)) b!7027293))

(assert (=> d!2191132 m!7730506))

(assert (=> d!2191132 m!7730970))

(assert (=> b!7027292 m!7730600))

(declare-fun m!7731212 () Bool)

(assert (=> b!7027292 m!7731212))

(assert (=> b!7027293 m!7730506))

(assert (=> b!7027293 m!7730974))

(assert (=> b!7027293 m!7730600))

(assert (=> b!7027293 m!7730974))

(declare-fun m!7731214 () Bool)

(assert (=> b!7027293 m!7731214))

(assert (=> b!7027293 m!7730506))

(assert (=> b!7027293 m!7730978))

(assert (=> b!7027293 m!7731214))

(assert (=> b!7027293 m!7730978))

(declare-fun m!7731216 () Bool)

(assert (=> b!7027293 m!7731216))

(assert (=> b!7026884 d!2191132))

(declare-fun bs!1869113 () Bool)

(declare-fun d!2191134 () Bool)

(assert (= bs!1869113 (and d!2191134 d!2190832)))

(declare-fun lambda!413449 () Int)

(assert (=> bs!1869113 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413449 lambda!413411))))

(declare-fun bs!1869114 () Bool)

(assert (= bs!1869114 (and d!2191134 b!7026693)))

(assert (=> bs!1869114 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413449 lambda!413333))))

(declare-fun bs!1869115 () Bool)

(assert (= bs!1869115 (and d!2191134 d!2191038)))

(assert (=> bs!1869115 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413449 lambda!413439))))

(declare-fun bs!1869116 () Bool)

(assert (= bs!1869116 (and d!2191134 d!2191088)))

(assert (=> bs!1869116 (= lambda!413449 lambda!413442)))

(declare-fun bs!1869117 () Bool)

(assert (= bs!1869117 (and d!2191134 d!2191006)))

(assert (=> bs!1869117 (= lambda!413449 lambda!413436)))

(declare-fun bs!1869118 () Bool)

(assert (= bs!1869118 (and d!2191134 d!2190992)))

(assert (=> bs!1869118 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413449 lambda!413435))))

(declare-fun bs!1869119 () Bool)

(assert (= bs!1869119 (and d!2191134 d!2190800)))

(assert (=> bs!1869119 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413449 lambda!413402))))

(declare-fun bs!1869120 () Bool)

(assert (= bs!1869120 (and d!2191134 d!2191082)))

(assert (=> bs!1869120 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413449 lambda!413441))))

(assert (=> d!2191134 true))

(assert (=> d!2191134 (= (derivationStepZipper!2904 lt!2515259 (head!14243 (t!381632 s!7408))) (flatMap!2395 lt!2515259 lambda!413449))))

(declare-fun bs!1869121 () Bool)

(assert (= bs!1869121 d!2191134))

(declare-fun m!7731218 () Bool)

(assert (=> bs!1869121 m!7731218))

(assert (=> b!7026884 d!2191134))

(assert (=> b!7026884 d!2191008))

(assert (=> b!7026884 d!2191010))

(declare-fun d!2191136 () Bool)

(assert (=> d!2191136 true))

(declare-fun setRes!49021 () Bool)

(assert (=> d!2191136 setRes!49021))

(declare-fun condSetEmpty!49021 () Bool)

(declare-fun res!2868688 () (Set Context!12888))

(assert (=> d!2191136 (= condSetEmpty!49021 (= res!2868688 (as set.empty (Set Context!12888))))))

(assert (=> d!2191136 (= (choose!53101 lt!2515242 lambda!413333) res!2868688)))

(declare-fun setIsEmpty!49021 () Bool)

(assert (=> setIsEmpty!49021 setRes!49021))

(declare-fun tp!1935695 () Bool)

(declare-fun setNonEmpty!49021 () Bool)

(declare-fun e!4224469 () Bool)

(declare-fun setElem!49021 () Context!12888)

(assert (=> setNonEmpty!49021 (= setRes!49021 (and tp!1935695 (inv!86480 setElem!49021) e!4224469))))

(declare-fun setRest!49021 () (Set Context!12888))

(assert (=> setNonEmpty!49021 (= res!2868688 (set.union (set.insert setElem!49021 (as set.empty (Set Context!12888))) setRest!49021))))

(declare-fun b!7027294 () Bool)

(declare-fun tp!1935696 () Bool)

(assert (=> b!7027294 (= e!4224469 tp!1935696)))

(assert (= (and d!2191136 condSetEmpty!49021) setIsEmpty!49021))

(assert (= (and d!2191136 (not condSetEmpty!49021)) setNonEmpty!49021))

(assert (= setNonEmpty!49021 b!7027294))

(declare-fun m!7731220 () Bool)

(assert (=> setNonEmpty!49021 m!7731220))

(assert (=> d!2190840 d!2191136))

(declare-fun bs!1869122 () Bool)

(declare-fun d!2191138 () Bool)

(assert (= bs!1869122 (and d!2191138 d!2190972)))

(declare-fun lambda!413450 () Int)

(assert (=> bs!1869122 (= lambda!413450 lambda!413434)))

(declare-fun bs!1869123 () Bool)

(assert (= bs!1869123 (and d!2191138 d!2191108)))

(assert (=> bs!1869123 (= lambda!413450 lambda!413443)))

(declare-fun bs!1869124 () Bool)

(assert (= bs!1869124 (and d!2191138 d!2191058)))

(assert (=> bs!1869124 (= lambda!413450 lambda!413440)))

(declare-fun bs!1869125 () Bool)

(assert (= bs!1869125 (and d!2191138 d!2191112)))

(assert (=> bs!1869125 (not (= lambda!413450 lambda!413444))))

(declare-fun bs!1869126 () Bool)

(assert (= bs!1869126 (and d!2191138 d!2191114)))

(assert (=> bs!1869126 (not (= lambda!413450 lambda!413447))))

(declare-fun bs!1869127 () Bool)

(assert (= bs!1869127 (and d!2191138 d!2191014)))

(assert (=> bs!1869127 (= lambda!413450 lambda!413437)))

(declare-fun bs!1869128 () Bool)

(assert (= bs!1869128 (and d!2191138 b!7026698)))

(assert (=> bs!1869128 (not (= lambda!413450 lambda!413330))))

(declare-fun bs!1869129 () Bool)

(assert (= bs!1869129 (and d!2191138 d!2191124)))

(assert (=> bs!1869129 (= lambda!413450 lambda!413448)))

(declare-fun bs!1869130 () Bool)

(assert (= bs!1869130 (and d!2191138 d!2191018)))

(assert (=> bs!1869130 (= lambda!413450 lambda!413438)))

(declare-fun bs!1869131 () Bool)

(assert (= bs!1869131 (and d!2191138 d!2190792)))

(assert (=> bs!1869131 (not (= lambda!413450 lambda!413399))))

(declare-fun bs!1869132 () Bool)

(assert (= bs!1869132 (and d!2191138 d!2190786)))

(assert (=> bs!1869132 (not (= lambda!413450 lambda!413396))))

(assert (=> d!2191138 (= (nullableZipper!2565 lt!2515257) (exists!3362 lt!2515257 lambda!413450))))

(declare-fun bs!1869133 () Bool)

(assert (= bs!1869133 d!2191138))

(declare-fun m!7731222 () Bool)

(assert (=> bs!1869133 m!7731222))

(assert (=> b!7026821 d!2191138))

(declare-fun d!2191140 () Bool)

(assert (=> d!2191140 (= (flatMap!2395 lt!2515245 lambda!413411) (choose!53101 lt!2515245 lambda!413411))))

(declare-fun bs!1869134 () Bool)

(assert (= bs!1869134 d!2191140))

(declare-fun m!7731224 () Bool)

(assert (=> bs!1869134 m!7731224))

(assert (=> d!2190832 d!2191140))

(declare-fun b!7027295 () Bool)

(declare-fun e!4224471 () (Set Context!12888))

(declare-fun call!638047 () (Set Context!12888))

(assert (=> b!7027295 (= e!4224471 call!638047)))

(declare-fun b!7027296 () Bool)

(declare-fun e!4224472 () (Set Context!12888))

(assert (=> b!7027296 (= e!4224472 e!4224471)))

(declare-fun c!1306444 () Bool)

(assert (=> b!7027296 (= c!1306444 (is-Cons!67748 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274))))))))

(declare-fun b!7027297 () Bool)

(assert (=> b!7027297 (= e!4224471 (as set.empty (Set Context!12888)))))

(declare-fun d!2191142 () Bool)

(declare-fun c!1306443 () Bool)

(declare-fun e!4224470 () Bool)

(assert (=> d!2191142 (= c!1306443 e!4224470)))

(declare-fun res!2868689 () Bool)

(assert (=> d!2191142 (=> (not res!2868689) (not e!4224470))))

(assert (=> d!2191142 (= res!2868689 (is-Cons!67748 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274))))))))

(assert (=> d!2191142 (= (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 lt!2515274))) (h!74197 s!7408)) e!4224472)))

(declare-fun b!7027298 () Bool)

(assert (=> b!7027298 (= e!4224470 (nullable!7159 (h!74196 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274)))))))))

(declare-fun bm!638042 () Bool)

(assert (=> bm!638042 (= call!638047 (derivationStepZipperDown!2112 (h!74196 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274))))) (Context!12889 (t!381631 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274)))))) (h!74197 s!7408)))))

(declare-fun b!7027299 () Bool)

(assert (=> b!7027299 (= e!4224472 (set.union call!638047 (derivationStepZipperUp!2058 (Context!12889 (t!381631 (exprs!6944 (Context!12889 (t!381631 (exprs!6944 lt!2515274)))))) (h!74197 s!7408))))))

(assert (= (and d!2191142 res!2868689) b!7027298))

(assert (= (and d!2191142 c!1306443) b!7027299))

(assert (= (and d!2191142 (not c!1306443)) b!7027296))

(assert (= (and b!7027296 c!1306444) b!7027295))

(assert (= (and b!7027296 (not c!1306444)) b!7027297))

(assert (= (or b!7027299 b!7027295) bm!638042))

(declare-fun m!7731226 () Bool)

(assert (=> b!7027298 m!7731226))

(declare-fun m!7731228 () Bool)

(assert (=> bm!638042 m!7731228))

(declare-fun m!7731230 () Bool)

(assert (=> b!7027299 m!7731230))

(assert (=> b!7026907 d!2191142))

(declare-fun b!7027302 () Bool)

(declare-fun res!2868691 () Bool)

(declare-fun e!4224473 () Bool)

(assert (=> b!7027302 (=> (not res!2868691) (not e!4224473))))

(declare-fun lt!2515546 () List!67872)

(assert (=> b!7027302 (= res!2868691 (= (size!41043 lt!2515546) (+ (size!41043 (t!381631 lt!2515239)) (size!41043 (exprs!6944 ct2!306)))))))

(declare-fun b!7027300 () Bool)

(declare-fun e!4224474 () List!67872)

(assert (=> b!7027300 (= e!4224474 (exprs!6944 ct2!306))))

(declare-fun b!7027301 () Bool)

(assert (=> b!7027301 (= e!4224474 (Cons!67748 (h!74196 (t!381631 lt!2515239)) (++!15481 (t!381631 (t!381631 lt!2515239)) (exprs!6944 ct2!306))))))

(declare-fun b!7027303 () Bool)

(assert (=> b!7027303 (= e!4224473 (or (not (= (exprs!6944 ct2!306) Nil!67748)) (= lt!2515546 (t!381631 lt!2515239))))))

(declare-fun d!2191144 () Bool)

(assert (=> d!2191144 e!4224473))

(declare-fun res!2868690 () Bool)

(assert (=> d!2191144 (=> (not res!2868690) (not e!4224473))))

(assert (=> d!2191144 (= res!2868690 (= (content!13501 lt!2515546) (set.union (content!13501 (t!381631 lt!2515239)) (content!13501 (exprs!6944 ct2!306)))))))

(assert (=> d!2191144 (= lt!2515546 e!4224474)))

(declare-fun c!1306445 () Bool)

(assert (=> d!2191144 (= c!1306445 (is-Nil!67748 (t!381631 lt!2515239)))))

(assert (=> d!2191144 (= (++!15481 (t!381631 lt!2515239) (exprs!6944 ct2!306)) lt!2515546)))

(assert (= (and d!2191144 c!1306445) b!7027300))

(assert (= (and d!2191144 (not c!1306445)) b!7027301))

(assert (= (and d!2191144 res!2868690) b!7027302))

(assert (= (and b!7027302 res!2868691) b!7027303))

(declare-fun m!7731232 () Bool)

(assert (=> b!7027302 m!7731232))

(assert (=> b!7027302 m!7731046))

(assert (=> b!7027302 m!7730538))

(declare-fun m!7731234 () Bool)

(assert (=> b!7027301 m!7731234))

(declare-fun m!7731236 () Bool)

(assert (=> d!2191144 m!7731236))

(assert (=> d!2191144 m!7730932))

(assert (=> d!2191144 m!7730546))

(assert (=> b!7026840 d!2191144))

(declare-fun d!2191146 () Bool)

(declare-fun res!2868692 () Bool)

(declare-fun e!4224475 () Bool)

(assert (=> d!2191146 (=> res!2868692 e!4224475)))

(assert (=> d!2191146 (= res!2868692 (is-Nil!67750 lt!2515437))))

(assert (=> d!2191146 (= (noDuplicate!2614 lt!2515437) e!4224475)))

(declare-fun b!7027304 () Bool)

(declare-fun e!4224476 () Bool)

(assert (=> b!7027304 (= e!4224475 e!4224476)))

(declare-fun res!2868693 () Bool)

(assert (=> b!7027304 (=> (not res!2868693) (not e!4224476))))

(assert (=> b!7027304 (= res!2868693 (not (contains!20443 (t!381633 lt!2515437) (h!74198 lt!2515437))))))

(declare-fun b!7027305 () Bool)

(assert (=> b!7027305 (= e!4224476 (noDuplicate!2614 (t!381633 lt!2515437)))))

(assert (= (and d!2191146 (not res!2868692)) b!7027304))

(assert (= (and b!7027304 res!2868693) b!7027305))

(declare-fun m!7731238 () Bool)

(assert (=> b!7027304 m!7731238))

(declare-fun m!7731240 () Bool)

(assert (=> b!7027305 m!7731240))

(assert (=> d!2190790 d!2191146))

(declare-fun d!2191148 () Bool)

(declare-fun e!4224478 () Bool)

(assert (=> d!2191148 e!4224478))

(declare-fun res!2868694 () Bool)

(assert (=> d!2191148 (=> (not res!2868694) (not e!4224478))))

(declare-fun res!2868695 () List!67874)

(assert (=> d!2191148 (= res!2868694 (noDuplicate!2614 res!2868695))))

(declare-fun e!4224479 () Bool)

(assert (=> d!2191148 e!4224479))

(assert (=> d!2191148 (= (choose!53100 lt!2515257) res!2868695)))

(declare-fun b!7027307 () Bool)

(declare-fun e!4224477 () Bool)

(declare-fun tp!1935697 () Bool)

(assert (=> b!7027307 (= e!4224477 tp!1935697)))

(declare-fun b!7027306 () Bool)

(declare-fun tp!1935698 () Bool)

(assert (=> b!7027306 (= e!4224479 (and (inv!86480 (h!74198 res!2868695)) e!4224477 tp!1935698))))

(declare-fun b!7027308 () Bool)

(assert (=> b!7027308 (= e!4224478 (= (content!13500 res!2868695) lt!2515257))))

(assert (= b!7027306 b!7027307))

(assert (= (and d!2191148 (is-Cons!67750 res!2868695)) b!7027306))

(assert (= (and d!2191148 res!2868694) b!7027308))

(declare-fun m!7731242 () Bool)

(assert (=> d!2191148 m!7731242))

(declare-fun m!7731244 () Bool)

(assert (=> b!7027306 m!7731244))

(declare-fun m!7731246 () Bool)

(assert (=> b!7027308 m!7731246))

(assert (=> d!2190790 d!2191148))

(declare-fun d!2191150 () Bool)

(declare-fun res!2868696 () Bool)

(declare-fun e!4224480 () Bool)

(assert (=> d!2191150 (=> res!2868696 e!4224480)))

(assert (=> d!2191150 (= res!2868696 (is-Nil!67748 (exprs!6944 setElem!49007)))))

(assert (=> d!2191150 (= (forall!16350 (exprs!6944 setElem!49007) lambda!413412) e!4224480)))

(declare-fun b!7027309 () Bool)

(declare-fun e!4224481 () Bool)

(assert (=> b!7027309 (= e!4224480 e!4224481)))

(declare-fun res!2868697 () Bool)

(assert (=> b!7027309 (=> (not res!2868697) (not e!4224481))))

(assert (=> b!7027309 (= res!2868697 (dynLambda!27326 lambda!413412 (h!74196 (exprs!6944 setElem!49007))))))

(declare-fun b!7027310 () Bool)

(assert (=> b!7027310 (= e!4224481 (forall!16350 (t!381631 (exprs!6944 setElem!49007)) lambda!413412))))

(assert (= (and d!2191150 (not res!2868696)) b!7027309))

(assert (= (and b!7027309 res!2868697) b!7027310))

(declare-fun b_lambda!265783 () Bool)

(assert (=> (not b_lambda!265783) (not b!7027309)))

(declare-fun m!7731248 () Bool)

(assert (=> b!7027309 m!7731248))

(declare-fun m!7731250 () Bool)

(assert (=> b!7027310 m!7731250))

(assert (=> d!2190838 d!2191150))

(declare-fun b!7027325 () Bool)

(declare-fun e!4224494 () Bool)

(declare-fun call!638053 () Bool)

(assert (=> b!7027325 (= e!4224494 call!638053)))

(declare-fun b!7027326 () Bool)

(declare-fun e!4224498 () Bool)

(declare-fun e!4224497 () Bool)

(assert (=> b!7027326 (= e!4224498 e!4224497)))

(declare-fun res!2868708 () Bool)

(assert (=> b!7027326 (=> (not res!2868708) (not e!4224497))))

(assert (=> b!7027326 (= res!2868708 (and (not (is-EmptyLang!17448 (h!74196 (exprs!6944 lt!2515248)))) (not (is-ElementMatch!17448 (h!74196 (exprs!6944 lt!2515248))))))))

(declare-fun b!7027327 () Bool)

(declare-fun e!4224499 () Bool)

(declare-fun call!638052 () Bool)

(assert (=> b!7027327 (= e!4224499 call!638052)))

(declare-fun d!2191152 () Bool)

(declare-fun res!2868711 () Bool)

(assert (=> d!2191152 (=> res!2868711 e!4224498)))

(assert (=> d!2191152 (= res!2868711 (is-EmptyExpr!17448 (h!74196 (exprs!6944 lt!2515248))))))

(assert (=> d!2191152 (= (nullableFct!2714 (h!74196 (exprs!6944 lt!2515248))) e!4224498)))

(declare-fun b!7027328 () Bool)

(declare-fun e!4224496 () Bool)

(assert (=> b!7027328 (= e!4224496 e!4224499)))

(declare-fun res!2868709 () Bool)

(assert (=> b!7027328 (= res!2868709 call!638053)))

(assert (=> b!7027328 (=> (not res!2868709) (not e!4224499))))

(declare-fun bm!638047 () Bool)

(declare-fun c!1306448 () Bool)

(assert (=> bm!638047 (= call!638053 (nullable!7159 (ite c!1306448 (regTwo!35409 (h!74196 (exprs!6944 lt!2515248))) (regOne!35408 (h!74196 (exprs!6944 lt!2515248))))))))

(declare-fun b!7027329 () Bool)

(declare-fun e!4224495 () Bool)

(assert (=> b!7027329 (= e!4224497 e!4224495)))

(declare-fun res!2868712 () Bool)

(assert (=> b!7027329 (=> res!2868712 e!4224495)))

(assert (=> b!7027329 (= res!2868712 (is-Star!17448 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun b!7027330 () Bool)

(assert (=> b!7027330 (= e!4224495 e!4224496)))

(assert (=> b!7027330 (= c!1306448 (is-Union!17448 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun b!7027331 () Bool)

(assert (=> b!7027331 (= e!4224496 e!4224494)))

(declare-fun res!2868710 () Bool)

(assert (=> b!7027331 (= res!2868710 call!638052)))

(assert (=> b!7027331 (=> res!2868710 e!4224494)))

(declare-fun bm!638048 () Bool)

(assert (=> bm!638048 (= call!638052 (nullable!7159 (ite c!1306448 (regOne!35409 (h!74196 (exprs!6944 lt!2515248))) (regTwo!35408 (h!74196 (exprs!6944 lt!2515248))))))))

(assert (= (and d!2191152 (not res!2868711)) b!7027326))

(assert (= (and b!7027326 res!2868708) b!7027329))

(assert (= (and b!7027329 (not res!2868712)) b!7027330))

(assert (= (and b!7027330 c!1306448) b!7027331))

(assert (= (and b!7027330 (not c!1306448)) b!7027328))

(assert (= (and b!7027331 (not res!2868710)) b!7027325))

(assert (= (and b!7027328 res!2868709) b!7027327))

(assert (= (or b!7027325 b!7027328) bm!638047))

(assert (= (or b!7027331 b!7027327) bm!638048))

(declare-fun m!7731252 () Bool)

(assert (=> bm!638047 m!7731252))

(declare-fun m!7731254 () Bool)

(assert (=> bm!638048 m!7731254))

(assert (=> d!2190776 d!2191152))

(declare-fun d!2191154 () Bool)

(declare-fun res!2868717 () Bool)

(declare-fun e!4224504 () Bool)

(assert (=> d!2191154 (=> res!2868717 e!4224504)))

(assert (=> d!2191154 (= res!2868717 (is-Nil!67750 lt!2515241))))

(assert (=> d!2191154 (= (forall!16351 lt!2515241 lambda!413399) e!4224504)))

(declare-fun b!7027336 () Bool)

(declare-fun e!4224505 () Bool)

(assert (=> b!7027336 (= e!4224504 e!4224505)))

(declare-fun res!2868718 () Bool)

(assert (=> b!7027336 (=> (not res!2868718) (not e!4224505))))

(assert (=> b!7027336 (= res!2868718 (dynLambda!27318 lambda!413399 (h!74198 lt!2515241)))))

(declare-fun b!7027337 () Bool)

(assert (=> b!7027337 (= e!4224505 (forall!16351 (t!381633 lt!2515241) lambda!413399))))

(assert (= (and d!2191154 (not res!2868717)) b!7027336))

(assert (= (and b!7027336 res!2868718) b!7027337))

(declare-fun b_lambda!265785 () Bool)

(assert (=> (not b_lambda!265785) (not b!7027336)))

(declare-fun m!7731256 () Bool)

(assert (=> b!7027336 m!7731256))

(declare-fun m!7731258 () Bool)

(assert (=> b!7027337 m!7731258))

(assert (=> d!2190792 d!2191154))

(declare-fun b!7027340 () Bool)

(declare-fun res!2868720 () Bool)

(declare-fun e!4224506 () Bool)

(assert (=> b!7027340 (=> (not res!2868720) (not e!4224506))))

(declare-fun lt!2515547 () List!67872)

(assert (=> b!7027340 (= res!2868720 (= (size!41043 lt!2515547) (+ (size!41043 (t!381631 (exprs!6944 lt!2515248))) (size!41043 (exprs!6944 ct2!306)))))))

(declare-fun b!7027338 () Bool)

(declare-fun e!4224507 () List!67872)

(assert (=> b!7027338 (= e!4224507 (exprs!6944 ct2!306))))

(declare-fun b!7027339 () Bool)

(assert (=> b!7027339 (= e!4224507 (Cons!67748 (h!74196 (t!381631 (exprs!6944 lt!2515248))) (++!15481 (t!381631 (t!381631 (exprs!6944 lt!2515248))) (exprs!6944 ct2!306))))))

(declare-fun b!7027341 () Bool)

(assert (=> b!7027341 (= e!4224506 (or (not (= (exprs!6944 ct2!306) Nil!67748)) (= lt!2515547 (t!381631 (exprs!6944 lt!2515248)))))))

(declare-fun d!2191156 () Bool)

(assert (=> d!2191156 e!4224506))

(declare-fun res!2868719 () Bool)

(assert (=> d!2191156 (=> (not res!2868719) (not e!4224506))))

(assert (=> d!2191156 (= res!2868719 (= (content!13501 lt!2515547) (set.union (content!13501 (t!381631 (exprs!6944 lt!2515248))) (content!13501 (exprs!6944 ct2!306)))))))

(assert (=> d!2191156 (= lt!2515547 e!4224507)))

(declare-fun c!1306449 () Bool)

(assert (=> d!2191156 (= c!1306449 (is-Nil!67748 (t!381631 (exprs!6944 lt!2515248))))))

(assert (=> d!2191156 (= (++!15481 (t!381631 (exprs!6944 lt!2515248)) (exprs!6944 ct2!306)) lt!2515547)))

(assert (= (and d!2191156 c!1306449) b!7027338))

(assert (= (and d!2191156 (not c!1306449)) b!7027339))

(assert (= (and d!2191156 res!2868719) b!7027340))

(assert (= (and b!7027340 res!2868720) b!7027341))

(declare-fun m!7731260 () Bool)

(assert (=> b!7027340 m!7731260))

(assert (=> b!7027340 m!7731062))

(assert (=> b!7027340 m!7730538))

(declare-fun m!7731262 () Bool)

(assert (=> b!7027339 m!7731262))

(declare-fun m!7731264 () Bool)

(assert (=> d!2191156 m!7731264))

(assert (=> d!2191156 m!7731204))

(assert (=> d!2191156 m!7730546))

(assert (=> b!7026832 d!2191156))

(declare-fun bs!1869135 () Bool)

(declare-fun d!2191158 () Bool)

(assert (= bs!1869135 (and d!2191158 b!7026710)))

(declare-fun lambda!413451 () Int)

(assert (=> bs!1869135 (= lambda!413451 lambda!413332)))

(declare-fun bs!1869136 () Bool)

(assert (= bs!1869136 (and d!2191158 d!2190808)))

(assert (=> bs!1869136 (= lambda!413451 lambda!413410)))

(declare-fun bs!1869137 () Bool)

(assert (= bs!1869137 (and d!2191158 d!2190838)))

(assert (=> bs!1869137 (= lambda!413451 lambda!413412)))

(assert (=> d!2191158 (= (inv!86480 setElem!49013) (forall!16350 (exprs!6944 setElem!49013) lambda!413451))))

(declare-fun bs!1869138 () Bool)

(assert (= bs!1869138 d!2191158))

(declare-fun m!7731266 () Bool)

(assert (=> bs!1869138 m!7731266))

(assert (=> setNonEmpty!49013 d!2191158))

(assert (=> d!2190780 d!2190974))

(declare-fun d!2191160 () Bool)

(declare-fun c!1306450 () Bool)

(assert (=> d!2191160 (= c!1306450 (is-Nil!67750 lt!2515437))))

(declare-fun e!4224508 () (Set Context!12888))

(assert (=> d!2191160 (= (content!13500 lt!2515437) e!4224508)))

(declare-fun b!7027342 () Bool)

(assert (=> b!7027342 (= e!4224508 (as set.empty (Set Context!12888)))))

(declare-fun b!7027343 () Bool)

(assert (=> b!7027343 (= e!4224508 (set.union (set.insert (h!74198 lt!2515437) (as set.empty (Set Context!12888))) (content!13500 (t!381633 lt!2515437))))))

(assert (= (and d!2191160 c!1306450) b!7027342))

(assert (= (and d!2191160 (not c!1306450)) b!7027343))

(declare-fun m!7731268 () Bool)

(assert (=> b!7027343 m!7731268))

(declare-fun m!7731270 () Bool)

(assert (=> b!7027343 m!7731270))

(assert (=> b!7026799 d!2191160))

(assert (=> d!2190858 d!2190852))

(assert (=> d!2190858 d!2190842))

(declare-fun d!2191162 () Bool)

(assert (=> d!2191162 (<= (contextDepthTotal!483 lt!2515248) (zipperDepthTotal!511 lt!2515246))))

(assert (=> d!2191162 true))

(declare-fun _$53!98 () Unit!161561)

(assert (=> d!2191162 (= (choose!53107 lt!2515246 lt!2515248) _$53!98)))

(declare-fun bs!1869139 () Bool)

(assert (= bs!1869139 d!2191162))

(assert (=> bs!1869139 m!7730254))

(assert (=> bs!1869139 m!7730272))

(assert (=> d!2190858 d!2191162))

(declare-fun d!2191164 () Bool)

(declare-fun lt!2515550 () Bool)

(assert (=> d!2191164 (= lt!2515550 (set.member lt!2515248 (content!13500 lt!2515246)))))

(declare-fun e!4224514 () Bool)

(assert (=> d!2191164 (= lt!2515550 e!4224514)))

(declare-fun res!2868725 () Bool)

(assert (=> d!2191164 (=> (not res!2868725) (not e!4224514))))

(assert (=> d!2191164 (= res!2868725 (is-Cons!67750 lt!2515246))))

(assert (=> d!2191164 (= (contains!20443 lt!2515246 lt!2515248) lt!2515550)))

(declare-fun b!7027348 () Bool)

(declare-fun e!4224513 () Bool)

(assert (=> b!7027348 (= e!4224514 e!4224513)))

(declare-fun res!2868726 () Bool)

(assert (=> b!7027348 (=> res!2868726 e!4224513)))

(assert (=> b!7027348 (= res!2868726 (= (h!74198 lt!2515246) lt!2515248))))

(declare-fun b!7027349 () Bool)

(assert (=> b!7027349 (= e!4224513 (contains!20443 (t!381633 lt!2515246) lt!2515248))))

(assert (= (and d!2191164 res!2868725) b!7027348))

(assert (= (and b!7027348 (not res!2868726)) b!7027349))

(declare-fun m!7731272 () Bool)

(assert (=> d!2191164 m!7731272))

(declare-fun m!7731274 () Bool)

(assert (=> d!2191164 m!7731274))

(declare-fun m!7731276 () Bool)

(assert (=> b!7027349 m!7731276))

(assert (=> d!2190858 d!2191164))

(declare-fun d!2191166 () Bool)

(declare-fun c!1306452 () Bool)

(assert (=> d!2191166 (= c!1306452 (isEmpty!39502 (tail!13523 (t!381632 s!7408))))))

(declare-fun e!4224515 () Bool)

(assert (=> d!2191166 (= (matchZipper!2988 (derivationStepZipper!2904 lt!2515278 (head!14243 (t!381632 s!7408))) (tail!13523 (t!381632 s!7408))) e!4224515)))

(declare-fun b!7027350 () Bool)

(assert (=> b!7027350 (= e!4224515 (nullableZipper!2565 (derivationStepZipper!2904 lt!2515278 (head!14243 (t!381632 s!7408)))))))

(declare-fun b!7027351 () Bool)

(assert (=> b!7027351 (= e!4224515 (matchZipper!2988 (derivationStepZipper!2904 (derivationStepZipper!2904 lt!2515278 (head!14243 (t!381632 s!7408))) (head!14243 (tail!13523 (t!381632 s!7408)))) (tail!13523 (tail!13523 (t!381632 s!7408)))))))

(assert (= (and d!2191166 c!1306452) b!7027350))

(assert (= (and d!2191166 (not c!1306452)) b!7027351))

(assert (=> d!2191166 m!7730506))

(assert (=> d!2191166 m!7730970))

(assert (=> b!7027350 m!7730594))

(declare-fun m!7731278 () Bool)

(assert (=> b!7027350 m!7731278))

(assert (=> b!7027351 m!7730506))

(assert (=> b!7027351 m!7730974))

(assert (=> b!7027351 m!7730594))

(assert (=> b!7027351 m!7730974))

(declare-fun m!7731280 () Bool)

(assert (=> b!7027351 m!7731280))

(assert (=> b!7027351 m!7730506))

(assert (=> b!7027351 m!7730978))

(assert (=> b!7027351 m!7731280))

(assert (=> b!7027351 m!7730978))

(declare-fun m!7731282 () Bool)

(assert (=> b!7027351 m!7731282))

(assert (=> b!7026882 d!2191166))

(declare-fun bs!1869140 () Bool)

(declare-fun d!2191168 () Bool)

(assert (= bs!1869140 (and d!2191168 d!2190832)))

(declare-fun lambda!413452 () Int)

(assert (=> bs!1869140 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413452 lambda!413411))))

(declare-fun bs!1869141 () Bool)

(assert (= bs!1869141 (and d!2191168 b!7026693)))

(assert (=> bs!1869141 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413452 lambda!413333))))

(declare-fun bs!1869142 () Bool)

(assert (= bs!1869142 (and d!2191168 d!2191038)))

(assert (=> bs!1869142 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413452 lambda!413439))))

(declare-fun bs!1869143 () Bool)

(assert (= bs!1869143 (and d!2191168 d!2191134)))

(assert (=> bs!1869143 (= lambda!413452 lambda!413449)))

(declare-fun bs!1869144 () Bool)

(assert (= bs!1869144 (and d!2191168 d!2191088)))

(assert (=> bs!1869144 (= lambda!413452 lambda!413442)))

(declare-fun bs!1869145 () Bool)

(assert (= bs!1869145 (and d!2191168 d!2191006)))

(assert (=> bs!1869145 (= lambda!413452 lambda!413436)))

(declare-fun bs!1869146 () Bool)

(assert (= bs!1869146 (and d!2191168 d!2190992)))

(assert (=> bs!1869146 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413452 lambda!413435))))

(declare-fun bs!1869147 () Bool)

(assert (= bs!1869147 (and d!2191168 d!2190800)))

(assert (=> bs!1869147 (= (= (head!14243 (t!381632 s!7408)) (h!74197 s!7408)) (= lambda!413452 lambda!413402))))

(declare-fun bs!1869148 () Bool)

(assert (= bs!1869148 (and d!2191168 d!2191082)))

(assert (=> bs!1869148 (= (= (head!14243 (t!381632 s!7408)) (head!14243 s!7408)) (= lambda!413452 lambda!413441))))

(assert (=> d!2191168 true))

(assert (=> d!2191168 (= (derivationStepZipper!2904 lt!2515278 (head!14243 (t!381632 s!7408))) (flatMap!2395 lt!2515278 lambda!413452))))

(declare-fun bs!1869149 () Bool)

(assert (= bs!1869149 d!2191168))

(declare-fun m!7731284 () Bool)

(assert (=> bs!1869149 m!7731284))

(assert (=> b!7026882 d!2191168))

(assert (=> b!7026882 d!2191008))

(assert (=> b!7026882 d!2191010))

(declare-fun d!2191170 () Bool)

(assert (=> d!2191170 true))

(declare-fun setRes!49024 () Bool)

(assert (=> d!2191170 setRes!49024))

(declare-fun condSetEmpty!49024 () Bool)

(declare-fun res!2868729 () (Set Context!12888))

(assert (=> d!2191170 (= condSetEmpty!49024 (= res!2868729 (as set.empty (Set Context!12888))))))

(assert (=> d!2191170 (= (choose!53106 lt!2515242 lambda!413331) res!2868729)))

(declare-fun setIsEmpty!49024 () Bool)

(assert (=> setIsEmpty!49024 setRes!49024))

(declare-fun setElem!49024 () Context!12888)

(declare-fun tp!1935703 () Bool)

(declare-fun e!4224518 () Bool)

(declare-fun setNonEmpty!49024 () Bool)

(assert (=> setNonEmpty!49024 (= setRes!49024 (and tp!1935703 (inv!86480 setElem!49024) e!4224518))))

(declare-fun setRest!49024 () (Set Context!12888))

(assert (=> setNonEmpty!49024 (= res!2868729 (set.union (set.insert setElem!49024 (as set.empty (Set Context!12888))) setRest!49024))))

(declare-fun b!7027354 () Bool)

(declare-fun tp!1935704 () Bool)

(assert (=> b!7027354 (= e!4224518 tp!1935704)))

(assert (= (and d!2191170 condSetEmpty!49024) setIsEmpty!49024))

(assert (= (and d!2191170 (not condSetEmpty!49024)) setNonEmpty!49024))

(assert (= setNonEmpty!49024 b!7027354))

(declare-fun m!7731286 () Bool)

(assert (=> setNonEmpty!49024 m!7731286))

(assert (=> d!2190854 d!2191170))

(declare-fun d!2191172 () Bool)

(assert (=> d!2191172 (= (nullable!7159 (h!74196 (exprs!6944 lt!2515274))) (nullableFct!2714 (h!74196 (exprs!6944 lt!2515274))))))

(declare-fun bs!1869150 () Bool)

(assert (= bs!1869150 d!2191172))

(declare-fun m!7731288 () Bool)

(assert (=> bs!1869150 m!7731288))

(assert (=> b!7026906 d!2191172))

(declare-fun e!4224521 () Bool)

(assert (=> b!7026920 (= tp!1935653 e!4224521)))

(declare-fun b!7027365 () Bool)

(assert (=> b!7027365 (= e!4224521 tp_is_empty!44121)))

(declare-fun b!7027366 () Bool)

(declare-fun tp!1935716 () Bool)

(declare-fun tp!1935719 () Bool)

(assert (=> b!7027366 (= e!4224521 (and tp!1935716 tp!1935719))))

(declare-fun b!7027368 () Bool)

(declare-fun tp!1935717 () Bool)

(declare-fun tp!1935715 () Bool)

(assert (=> b!7027368 (= e!4224521 (and tp!1935717 tp!1935715))))

(declare-fun b!7027367 () Bool)

(declare-fun tp!1935718 () Bool)

(assert (=> b!7027367 (= e!4224521 tp!1935718)))

(assert (= (and b!7026920 (is-ElementMatch!17448 (h!74196 (exprs!6944 ct2!306)))) b!7027365))

(assert (= (and b!7026920 (is-Concat!26293 (h!74196 (exprs!6944 ct2!306)))) b!7027366))

(assert (= (and b!7026920 (is-Star!17448 (h!74196 (exprs!6944 ct2!306)))) b!7027367))

(assert (= (and b!7026920 (is-Union!17448 (h!74196 (exprs!6944 ct2!306)))) b!7027368))

(declare-fun b!7027369 () Bool)

(declare-fun e!4224522 () Bool)

(declare-fun tp!1935720 () Bool)

(declare-fun tp!1935721 () Bool)

(assert (=> b!7027369 (= e!4224522 (and tp!1935720 tp!1935721))))

(assert (=> b!7026920 (= tp!1935654 e!4224522)))

(assert (= (and b!7026920 (is-Cons!67748 (t!381631 (exprs!6944 ct2!306)))) b!7027369))

(declare-fun e!4224523 () Bool)

(assert (=> b!7026914 (= tp!1935648 e!4224523)))

(declare-fun b!7027370 () Bool)

(assert (=> b!7027370 (= e!4224523 tp_is_empty!44121)))

(declare-fun b!7027371 () Bool)

(declare-fun tp!1935723 () Bool)

(declare-fun tp!1935726 () Bool)

(assert (=> b!7027371 (= e!4224523 (and tp!1935723 tp!1935726))))

(declare-fun b!7027373 () Bool)

(declare-fun tp!1935724 () Bool)

(declare-fun tp!1935722 () Bool)

(assert (=> b!7027373 (= e!4224523 (and tp!1935724 tp!1935722))))

(declare-fun b!7027372 () Bool)

(declare-fun tp!1935725 () Bool)

(assert (=> b!7027372 (= e!4224523 tp!1935725)))

(assert (= (and b!7026914 (is-ElementMatch!17448 (h!74196 (exprs!6944 setElem!49007)))) b!7027370))

(assert (= (and b!7026914 (is-Concat!26293 (h!74196 (exprs!6944 setElem!49007)))) b!7027371))

(assert (= (and b!7026914 (is-Star!17448 (h!74196 (exprs!6944 setElem!49007)))) b!7027372))

(assert (= (and b!7026914 (is-Union!17448 (h!74196 (exprs!6944 setElem!49007)))) b!7027373))

(declare-fun b!7027374 () Bool)

(declare-fun e!4224524 () Bool)

(declare-fun tp!1935727 () Bool)

(declare-fun tp!1935728 () Bool)

(assert (=> b!7027374 (= e!4224524 (and tp!1935727 tp!1935728))))

(assert (=> b!7026914 (= tp!1935649 e!4224524)))

(assert (= (and b!7026914 (is-Cons!67748 (t!381631 (exprs!6944 setElem!49007)))) b!7027374))

(declare-fun condSetEmpty!49025 () Bool)

(assert (=> setNonEmpty!49013 (= condSetEmpty!49025 (= setRest!49013 (as set.empty (Set Context!12888))))))

(declare-fun setRes!49025 () Bool)

(assert (=> setNonEmpty!49013 (= tp!1935660 setRes!49025)))

(declare-fun setIsEmpty!49025 () Bool)

(assert (=> setIsEmpty!49025 setRes!49025))

(declare-fun setElem!49025 () Context!12888)

(declare-fun tp!1935730 () Bool)

(declare-fun setNonEmpty!49025 () Bool)

(declare-fun e!4224525 () Bool)

(assert (=> setNonEmpty!49025 (= setRes!49025 (and tp!1935730 (inv!86480 setElem!49025) e!4224525))))

(declare-fun setRest!49025 () (Set Context!12888))

(assert (=> setNonEmpty!49025 (= setRest!49013 (set.union (set.insert setElem!49025 (as set.empty (Set Context!12888))) setRest!49025))))

(declare-fun b!7027375 () Bool)

(declare-fun tp!1935729 () Bool)

(assert (=> b!7027375 (= e!4224525 tp!1935729)))

(assert (= (and setNonEmpty!49013 condSetEmpty!49025) setIsEmpty!49025))

(assert (= (and setNonEmpty!49013 (not condSetEmpty!49025)) setNonEmpty!49025))

(assert (= setNonEmpty!49025 b!7027375))

(declare-fun m!7731290 () Bool)

(assert (=> setNonEmpty!49025 m!7731290))

(declare-fun b!7027376 () Bool)

(declare-fun e!4224526 () Bool)

(declare-fun tp!1935731 () Bool)

(declare-fun tp!1935732 () Bool)

(assert (=> b!7027376 (= e!4224526 (and tp!1935731 tp!1935732))))

(assert (=> b!7026925 (= tp!1935659 e!4224526)))

(assert (= (and b!7026925 (is-Cons!67748 (exprs!6944 setElem!49013))) b!7027376))

(declare-fun b!7027377 () Bool)

(declare-fun e!4224527 () Bool)

(declare-fun tp!1935733 () Bool)

(assert (=> b!7027377 (= e!4224527 (and tp_is_empty!44121 tp!1935733))))

(assert (=> b!7026919 (= tp!1935652 e!4224527)))

(assert (= (and b!7026919 (is-Cons!67749 (t!381632 (t!381632 s!7408)))) b!7027377))

(declare-fun b_lambda!265787 () Bool)

(assert (= b_lambda!265767 (or b!7026710 b_lambda!265787)))

(declare-fun bs!1869151 () Bool)

(declare-fun d!2191174 () Bool)

(assert (= bs!1869151 (and d!2191174 b!7026710)))

(declare-fun validRegex!8924 (Regex!17448) Bool)

(assert (=> bs!1869151 (= (dynLambda!27326 lambda!413332 (h!74196 (++!15481 lt!2515239 (exprs!6944 ct2!306)))) (validRegex!8924 (h!74196 (++!15481 lt!2515239 (exprs!6944 ct2!306)))))))

(declare-fun m!7731292 () Bool)

(assert (=> bs!1869151 m!7731292))

(assert (=> b!7027180 d!2191174))

(declare-fun b_lambda!265789 () Bool)

(assert (= b_lambda!265771 (or b!7026698 b_lambda!265789)))

(declare-fun bs!1869152 () Bool)

(declare-fun d!2191176 () Bool)

(assert (= bs!1869152 (and d!2191176 b!7026698)))

(assert (=> bs!1869152 (= (dynLambda!27318 lambda!413330 (h!74198 (toList!10791 lt!2515257))) (matchZipper!2988 (set.insert (h!74198 (toList!10791 lt!2515257)) (as set.empty (Set Context!12888))) s!7408))))

(declare-fun m!7731294 () Bool)

(assert (=> bs!1869152 m!7731294))

(assert (=> bs!1869152 m!7731294))

(declare-fun m!7731296 () Bool)

(assert (=> bs!1869152 m!7731296))

(assert (=> b!7027218 d!2191176))

(declare-fun b_lambda!265791 () Bool)

(assert (= b_lambda!265777 (or b!7026710 b_lambda!265791)))

(declare-fun bs!1869153 () Bool)

(declare-fun d!2191178 () Bool)

(assert (= bs!1869153 (and d!2191178 b!7026710)))

(assert (=> bs!1869153 (= (dynLambda!27326 lambda!413332 (h!74196 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306)))) (validRegex!8924 (h!74196 (++!15481 (exprs!6944 lt!2515248) (exprs!6944 ct2!306)))))))

(declare-fun m!7731298 () Bool)

(assert (=> bs!1869153 m!7731298))

(assert (=> b!7027269 d!2191178))

(declare-fun b_lambda!265793 () Bool)

(assert (= b_lambda!265765 (or b!7026710 b_lambda!265793)))

(declare-fun bs!1869154 () Bool)

(declare-fun d!2191180 () Bool)

(assert (= bs!1869154 (and d!2191180 b!7026710)))

(declare-fun lt!2515551 () Unit!161561)

(assert (=> bs!1869154 (= lt!2515551 (lemmaConcatPreservesForall!769 (exprs!6944 a!13143) (exprs!6944 ct2!306) lambda!413332))))

(assert (=> bs!1869154 (= (dynLambda!27321 lambda!413331 a!13143) (Context!12889 (++!15481 (exprs!6944 a!13143) (exprs!6944 ct2!306))))))

(declare-fun m!7731300 () Bool)

(assert (=> bs!1869154 m!7731300))

(declare-fun m!7731302 () Bool)

(assert (=> bs!1869154 m!7731302))

(assert (=> d!2191030 d!2191180))

(declare-fun b_lambda!265795 () Bool)

(assert (= b_lambda!265769 (or b!7026710 b_lambda!265795)))

(declare-fun bs!1869155 () Bool)

(declare-fun d!2191182 () Bool)

(assert (= bs!1869155 (and d!2191182 b!7026710)))

(assert (=> bs!1869155 (= (dynLambda!27326 lambda!413332 (h!74196 lt!2515239)) (validRegex!8924 (h!74196 lt!2515239)))))

(declare-fun m!7731304 () Bool)

(assert (=> bs!1869155 m!7731304))

(assert (=> b!7027182 d!2191182))

(declare-fun b_lambda!265797 () Bool)

(assert (= b_lambda!265775 (or b!7026693 b_lambda!265797)))

(assert (=> d!2191100 d!2190864))

(declare-fun b_lambda!265799 () Bool)

(assert (= b_lambda!265763 (or b!7026710 b_lambda!265799)))

(assert (=> d!2191016 d!2190860))

(declare-fun b_lambda!265801 () Bool)

(assert (= b_lambda!265773 (or b!7026698 b_lambda!265801)))

(declare-fun bs!1869156 () Bool)

(declare-fun d!2191184 () Bool)

(assert (= bs!1869156 (and d!2191184 b!7026698)))

(assert (=> bs!1869156 (= (dynLambda!27318 lambda!413330 lt!2515538) (matchZipper!2988 (set.insert lt!2515538 (as set.empty (Set Context!12888))) s!7408))))

(declare-fun m!7731306 () Bool)

(assert (=> bs!1869156 m!7731306))

(assert (=> bs!1869156 m!7731306))

(declare-fun m!7731308 () Bool)

(assert (=> bs!1869156 m!7731308))

(assert (=> d!2191072 d!2191184))

(declare-fun b_lambda!265803 () Bool)

(assert (= b_lambda!265779 (or b!7026710 b_lambda!265803)))

(declare-fun bs!1869157 () Bool)

(declare-fun d!2191186 () Bool)

(assert (= bs!1869157 (and d!2191186 b!7026710)))

(assert (=> bs!1869157 (= (dynLambda!27326 lambda!413332 (h!74196 (exprs!6944 lt!2515248))) (validRegex!8924 (h!74196 (exprs!6944 lt!2515248))))))

(declare-fun m!7731310 () Bool)

(assert (=> bs!1869157 m!7731310))

(assert (=> b!7027271 d!2191186))

(declare-fun b_lambda!265805 () Bool)

(assert (= b_lambda!265781 (or b!7026693 b_lambda!265805)))

(assert (=> d!2191128 d!2190868))

(declare-fun b_lambda!265807 () Bool)

(assert (= b_lambda!265759 (or d!2190808 b_lambda!265807)))

(declare-fun bs!1869158 () Bool)

(declare-fun d!2191188 () Bool)

(assert (= bs!1869158 (and d!2191188 d!2190808)))

(assert (=> bs!1869158 (= (dynLambda!27326 lambda!413410 (h!74196 (exprs!6944 ct2!306))) (validRegex!8924 (h!74196 (exprs!6944 ct2!306))))))

(declare-fun m!7731312 () Bool)

(assert (=> bs!1869158 m!7731312))

(assert (=> b!7027074 d!2191188))

(declare-fun b_lambda!265809 () Bool)

(assert (= b_lambda!265783 (or d!2190838 b_lambda!265809)))

(declare-fun bs!1869159 () Bool)

(declare-fun d!2191190 () Bool)

(assert (= bs!1869159 (and d!2191190 d!2190838)))

(assert (=> bs!1869159 (= (dynLambda!27326 lambda!413412 (h!74196 (exprs!6944 setElem!49007))) (validRegex!8924 (h!74196 (exprs!6944 setElem!49007))))))

(declare-fun m!7731314 () Bool)

(assert (=> bs!1869159 m!7731314))

(assert (=> b!7027309 d!2191190))

(declare-fun b_lambda!265811 () Bool)

(assert (= b_lambda!265761 (or b!7026693 b_lambda!265811)))

(assert (=> d!2191012 d!2190866))

(declare-fun b_lambda!265813 () Bool)

(assert (= b_lambda!265785 (or d!2190792 b_lambda!265813)))

(declare-fun bs!1869160 () Bool)

(declare-fun d!2191192 () Bool)

(assert (= bs!1869160 (and d!2191192 d!2190792)))

(assert (=> bs!1869160 (= (dynLambda!27318 lambda!413399 (h!74198 lt!2515241)) (not (dynLambda!27318 lambda!413330 (h!74198 lt!2515241))))))

(declare-fun b_lambda!265815 () Bool)

(assert (=> (not b_lambda!265815) (not bs!1869160)))

(declare-fun m!7731316 () Bool)

(assert (=> bs!1869160 m!7731316))

(assert (=> b!7027336 d!2191192))

(push 1)

(assert (not b!7027236))

(assert (not b_lambda!265723))

(assert (not b!7027272))

(assert (not d!2191026))

(assert (not b_lambda!265815))

(assert (not b!7027298))

(assert (not b!7027200))

(assert (not bm!638007))

(assert (not d!2191012))

(assert (not d!2191058))

(assert (not b!7027233))

(assert (not b!7027246))

(assert (not b_lambda!265727))

(assert (not bs!1869156))

(assert (not b_lambda!265811))

(assert (not bm!638042))

(assert (not b!7027193))

(assert (not d!2191132))

(assert (not d!2191116))

(assert (not b_lambda!265799))

(assert (not bm!638038))

(assert (not b!7027129))

(assert (not b!7027079))

(assert (not b!7027090))

(assert (not bs!1869153))

(assert (not b!7027234))

(assert (not b!7027224))

(assert (not b!7027308))

(assert (not d!2191080))

(assert (not setNonEmpty!49020))

(assert (not bm!638033))

(assert (not b!7027068))

(assert (not b_lambda!265797))

(assert (not b!7027242))

(assert (not b_lambda!265787))

(assert (not b_lambda!265733))

(assert (not b!7027368))

(assert (not b!7027123))

(assert (not b_lambda!265807))

(assert (not d!2191168))

(assert (not bm!638029))

(assert (not bs!1869154))

(assert (not b!7027284))

(assert (not b!7027367))

(assert (not bm!638031))

(assert (not d!2191166))

(assert (not d!2191030))

(assert (not d!2191000))

(assert (not b!7027142))

(assert (not b!7027304))

(assert (not b!7027175))

(assert (not b!7027187))

(assert (not b!7027270))

(assert (not b_lambda!265789))

(assert (not d!2191052))

(assert (not b_lambda!265813))

(assert (not d!2191066))

(assert (not d!2191072))

(assert (not b!7027203))

(assert (not setNonEmpty!49024))

(assert (not bm!638000))

(assert (not b!7027240))

(assert (not b_lambda!265803))

(assert (not b!7027066))

(assert (not b!7027235))

(assert (not b!7027267))

(assert (not b!7027376))

(assert (not b!7027192))

(assert (not d!2191004))

(assert (not bm!638026))

(assert (not b!7027340))

(assert (not b!7027117))

(assert (not d!2191006))

(assert (not d!2191018))

(assert (not bm!638048))

(assert (not bm!638003))

(assert (not d!2190992))

(assert tp_is_empty!44121)

(assert (not d!2191014))

(assert (not d!2191158))

(assert (not bm!638037))

(assert (not bs!1869157))

(assert (not b_lambda!265793))

(assert (not bm!638009))

(assert (not d!2190998))

(assert (not b!7027374))

(assert (not b!7027366))

(assert (not d!2191162))

(assert (not b!7027294))

(assert (not b!7027075))

(assert (not d!2191098))

(assert (not b!7027094))

(assert (not d!2191124))

(assert (not d!2191108))

(assert (not b!7027369))

(assert (not b_lambda!265725))

(assert (not b!7027301))

(assert (not d!2191088))

(assert (not b!7027285))

(assert (not b!7027113))

(assert (not b!7027377))

(assert (not b!7027371))

(assert (not b!7027114))

(assert (not b!7027299))

(assert (not b!7027221))

(assert (not b!7027104))

(assert (not bm!638019))

(assert (not d!2191138))

(assert (not bm!638028))

(assert (not b!7027310))

(assert (not d!2191074))

(assert (not b!7027168))

(assert (not b!7027201))

(assert (not d!2190972))

(assert (not d!2190976))

(assert (not b!7027263))

(assert (not bs!1869155))

(assert (not b!7027306))

(assert (not d!2191156))

(assert (not bm!638035))

(assert (not d!2191022))

(assert (not b!7027185))

(assert (not b!7027375))

(assert (not d!2191082))

(assert (not d!2191172))

(assert (not b!7027219))

(assert (not b!7027092))

(assert (not b_lambda!265809))

(assert (not bs!1869152))

(assert (not b!7027177))

(assert (not b_lambda!265729))

(assert (not b!7027291))

(assert (not d!2191126))

(assert (not b!7027373))

(assert (not b!7027372))

(assert (not b!7027241))

(assert (not b!7027302))

(assert (not b!7027349))

(assert (not b!7027088))

(assert (not b!7027101))

(assert (not bs!1869159))

(assert (not b!7027337))

(assert (not bm!638017))

(assert (not bm!638040))

(assert (not b_lambda!265801))

(assert (not b!7027099))

(assert (not d!2191164))

(assert (not b!7027086))

(assert (not b!7027351))

(assert (not b!7027275))

(assert (not setNonEmpty!49021))

(assert (not b!7027080))

(assert (not b!7027095))

(assert (not d!2191134))

(assert (not bm!638006))

(assert (not b!7027293))

(assert (not b_lambda!265731))

(assert (not d!2191086))

(assert (not b!7027091))

(assert (not d!2191068))

(assert (not b!7027183))

(assert (not d!2191130))

(assert (not b!7027339))

(assert (not bm!638024))

(assert (not d!2190990))

(assert (not b_lambda!265805))

(assert (not b!7027181))

(assert (not b!7027289))

(assert (not d!2191114))

(assert (not d!2191128))

(assert (not bm!638021))

(assert (not d!2191096))

(assert (not b!7027287))

(assert (not d!2191100))

(assert (not bm!638047))

(assert (not b!7027354))

(assert (not d!2191148))

(assert (not d!2191032))

(assert (not b!7027243))

(assert (not b!7027100))

(assert (not b!7027143))

(assert (not bs!1869151))

(assert (not d!2191036))

(assert (not bs!1869158))

(assert (not b!7027343))

(assert (not b!7027133))

(assert (not d!2191016))

(assert (not bm!637998))

(assert (not d!2191038))

(assert (not d!2191140))

(assert (not d!2191144))

(assert (not setNonEmpty!49019))

(assert (not setNonEmpty!49025))

(assert (not bm!638001))

(assert (not b!7027179))

(assert (not b!7027202))

(assert (not b!7027307))

(assert (not bm!638022))

(assert (not d!2191104))

(assert (not b!7027292))

(assert (not b!7027217))

(assert (not b_lambda!265791))

(assert (not b!7027305))

(assert (not d!2191024))

(assert (not b!7027350))

(assert (not d!2191112))

(assert (not b!7027266))

(assert (not d!2191078))

(assert (not b_lambda!265795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

