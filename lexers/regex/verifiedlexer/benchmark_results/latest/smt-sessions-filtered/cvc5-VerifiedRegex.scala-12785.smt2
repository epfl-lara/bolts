; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707170 () Bool)

(assert start!707170)

(declare-fun b!7258620 () Bool)

(assert (=> b!7258620 true))

(declare-fun b!7258621 () Bool)

(assert (=> b!7258621 true))

(declare-fun bs!1908194 () Bool)

(assert (= bs!1908194 (and b!7258621 b!7258620)))

(declare-fun lambda!445937 () Int)

(declare-datatypes ((C!37630 0))(
  ( (C!37631 (val!28763 Int)) )
))
(declare-datatypes ((List!70614 0))(
  ( (Nil!70490) (Cons!70490 (h!76938 C!37630) (t!384678 List!70614)) )
))
(declare-fun s1!1971 () List!70614)

(declare-fun lt!2589344 () List!70614)

(declare-fun lambda!445935 () Int)

(assert (=> bs!1908194 (= (= lt!2589344 (t!384678 s1!1971)) (= lambda!445937 lambda!445935))))

(assert (=> b!7258621 true))

(declare-fun b!7258611 () Bool)

(declare-fun e!4352530 () Bool)

(declare-fun e!4352525 () Bool)

(assert (=> b!7258611 (= e!4352530 e!4352525)))

(declare-fun res!2943324 () Bool)

(assert (=> b!7258611 (=> (not res!2943324) (not e!4352525))))

(declare-datatypes ((Regex!18678 0))(
  ( (ElementMatch!18678 (c!1350066 C!37630)) (Concat!27523 (regOne!37868 Regex!18678) (regTwo!37868 Regex!18678)) (EmptyExpr!18678) (Star!18678 (reg!19007 Regex!18678)) (EmptyLang!18678) (Union!18678 (regOne!37869 Regex!18678) (regTwo!37869 Regex!18678)) )
))
(declare-datatypes ((List!70615 0))(
  ( (Nil!70491) (Cons!70491 (h!76939 Regex!18678) (t!384679 List!70615)) )
))
(declare-datatypes ((Context!15236 0))(
  ( (Context!15237 (exprs!8118 List!70615)) )
))
(declare-fun lt!2589335 () (Set Context!15236))

(declare-fun matchZipper!3588 ((Set Context!15236) List!70614) Bool)

(assert (=> b!7258611 (= res!2943324 (matchZipper!3588 lt!2589335 (t!384678 s1!1971)))))

(declare-fun lt!2589332 () (Set Context!15236))

(declare-fun derivationStepZipper!3456 ((Set Context!15236) C!37630) (Set Context!15236))

(assert (=> b!7258611 (= lt!2589335 (derivationStepZipper!3456 lt!2589332 (h!76938 s1!1971)))))

(declare-fun b!7258612 () Bool)

(declare-fun e!4352534 () Bool)

(declare-fun lt!2589338 () (Set Context!15236))

(declare-fun exists!4434 ((Set Context!15236) Int) Bool)

(assert (=> b!7258612 (= e!4352534 (exists!4434 lt!2589338 lambda!445937))))

(declare-fun b!7258613 () Bool)

(declare-fun e!4352522 () Bool)

(declare-fun tp!2038515 () Bool)

(assert (=> b!7258613 (= e!4352522 tp!2038515)))

(declare-fun b!7258614 () Bool)

(declare-fun e!4352532 () Bool)

(assert (=> b!7258614 (= e!4352532 e!4352530)))

(declare-fun res!2943317 () Bool)

(assert (=> b!7258614 (=> (not res!2943317) (not e!4352530))))

(declare-fun ct1!232 () Context!15236)

(assert (=> b!7258614 (= res!2943317 (and (not (is-Nil!70491 (exprs!8118 ct1!232))) (is-Cons!70490 s1!1971)))))

(declare-fun lt!2589339 () (Set Context!15236))

(declare-fun lt!2589319 () Context!15236)

(assert (=> b!7258614 (= lt!2589339 (set.insert lt!2589319 (as set.empty (Set Context!15236))))))

(declare-fun lt!2589343 () List!70615)

(assert (=> b!7258614 (= lt!2589319 (Context!15237 lt!2589343))))

(declare-fun ct2!328 () Context!15236)

(declare-fun ++!16618 (List!70615 List!70615) List!70615)

(assert (=> b!7258614 (= lt!2589343 (++!16618 (exprs!8118 ct1!232) (exprs!8118 ct2!328)))))

(declare-fun lambda!445934 () Int)

(declare-datatypes ((Unit!163980 0))(
  ( (Unit!163981) )
))
(declare-fun lt!2589341 () Unit!163980)

(declare-fun lemmaConcatPreservesForall!1485 (List!70615 List!70615 Int) Unit!163980)

(assert (=> b!7258614 (= lt!2589341 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(declare-fun b!7258615 () Bool)

(declare-fun e!4352521 () Bool)

(declare-fun e!4352523 () Bool)

(assert (=> b!7258615 (= e!4352521 e!4352523)))

(declare-fun res!2943326 () Bool)

(assert (=> b!7258615 (=> res!2943326 e!4352523)))

(declare-fun isEmpty!40592 (List!70615) Bool)

(assert (=> b!7258615 (= res!2943326 (isEmpty!40592 (exprs!8118 ct1!232)))))

(declare-fun lt!2589347 () (Set Context!15236))

(declare-fun derivationStepZipperUp!2502 (Context!15236 C!37630) (Set Context!15236))

(assert (=> b!7258615 (= lt!2589347 (derivationStepZipperUp!2502 ct1!232 (h!76938 s1!1971)))))

(declare-fun lt!2589345 () Unit!163980)

(declare-fun lt!2589333 () Context!15236)

(assert (=> b!7258615 (= lt!2589345 (lemmaConcatPreservesForall!1485 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445934))))

(declare-fun lt!2589326 () Context!15236)

(assert (=> b!7258615 (matchZipper!3588 (set.insert lt!2589326 (as set.empty (Set Context!15236))) lt!2589344)))

(declare-fun s2!1849 () List!70614)

(declare-fun ++!16619 (List!70614 List!70614) List!70614)

(assert (=> b!7258615 (= lt!2589344 (++!16619 (t!384678 s1!1971) s2!1849))))

(assert (=> b!7258615 (= lt!2589326 (Context!15237 (++!16618 (exprs!8118 lt!2589333) (exprs!8118 ct2!328))))))

(declare-fun lt!2589342 () Unit!163980)

(assert (=> b!7258615 (= lt!2589342 (lemmaConcatPreservesForall!1485 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445934))))

(declare-fun lt!2589330 () Unit!163980)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!423 (Context!15236 Context!15236 List!70614 List!70614) Unit!163980)

(assert (=> b!7258615 (= lt!2589330 (lemmaConcatenateContextMatchesConcatOfStrings!423 lt!2589333 ct2!328 (t!384678 s1!1971) s2!1849))))

(declare-fun getWitness!2256 ((Set Context!15236) Int) Context!15236)

(assert (=> b!7258615 (= lt!2589333 (getWitness!2256 lt!2589335 lambda!445935))))

(declare-fun b!7258616 () Bool)

(declare-fun e!4352529 () Bool)

(assert (=> b!7258616 (= e!4352523 e!4352529)))

(declare-fun res!2943323 () Bool)

(assert (=> b!7258616 (=> res!2943323 e!4352529)))

(assert (=> b!7258616 (= res!2943323 (isEmpty!40592 lt!2589343))))

(declare-fun lt!2589325 () Unit!163980)

(assert (=> b!7258616 (= lt!2589325 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(declare-fun lt!2589320 () (Set Context!15236))

(assert (=> b!7258616 (= lt!2589320 (derivationStepZipperUp!2502 lt!2589319 (h!76938 s1!1971)))))

(declare-fun lt!2589328 () Unit!163980)

(assert (=> b!7258616 (= lt!2589328 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(declare-fun lt!2589355 () Context!15236)

(declare-fun lt!2589327 () (Set Context!15236))

(declare-fun derivationStepZipperDown!2672 (Regex!18678 Context!15236 C!37630) (Set Context!15236))

(assert (=> b!7258616 (= lt!2589327 (derivationStepZipperDown!2672 (h!76939 (exprs!8118 ct1!232)) lt!2589355 (h!76938 s1!1971)))))

(declare-fun tail!14380 (List!70615) List!70615)

(assert (=> b!7258616 (= lt!2589355 (Context!15237 (tail!14380 (exprs!8118 ct1!232))))))

(declare-fun b!7258617 () Bool)

(declare-fun res!2943325 () Bool)

(assert (=> b!7258617 (=> (not res!2943325) (not e!4352532))))

(assert (=> b!7258617 (= res!2943325 (matchZipper!3588 (set.insert ct2!328 (as set.empty (Set Context!15236))) s2!1849))))

(declare-fun b!7258618 () Bool)

(declare-fun e!4352533 () Bool)

(declare-fun tp_is_empty!46821 () Bool)

(declare-fun tp!2038517 () Bool)

(assert (=> b!7258618 (= e!4352533 (and tp_is_empty!46821 tp!2038517))))

(declare-fun b!7258619 () Bool)

(declare-fun e!4352526 () Bool)

(declare-fun lt!2589321 () (Set Context!15236))

(assert (=> b!7258619 (= e!4352526 (matchZipper!3588 lt!2589321 (t!384678 s1!1971)))))

(assert (=> b!7258620 (= e!4352525 (not e!4352521))))

(declare-fun res!2943319 () Bool)

(assert (=> b!7258620 (=> res!2943319 e!4352521)))

(assert (=> b!7258620 (= res!2943319 (not (exists!4434 lt!2589335 lambda!445935)))))

(declare-datatypes ((List!70616 0))(
  ( (Nil!70492) (Cons!70492 (h!76940 Context!15236) (t!384680 List!70616)) )
))
(declare-fun lt!2589352 () List!70616)

(declare-fun exists!4435 (List!70616 Int) Bool)

(assert (=> b!7258620 (exists!4435 lt!2589352 lambda!445935)))

(declare-fun lt!2589324 () Unit!163980)

(declare-fun lemmaZipperMatchesExistsMatchingContext!781 (List!70616 List!70614) Unit!163980)

(assert (=> b!7258620 (= lt!2589324 (lemmaZipperMatchesExistsMatchingContext!781 lt!2589352 (t!384678 s1!1971)))))

(declare-fun toList!11507 ((Set Context!15236)) List!70616)

(assert (=> b!7258620 (= lt!2589352 (toList!11507 lt!2589335))))

(assert (=> b!7258620 (= lt!2589338 (derivationStepZipper!3456 lt!2589339 (h!76938 s1!1971)))))

(declare-fun inv!89706 (Context!15236) Bool)

(assert (=> b!7258621 (= e!4352529 (inv!89706 lt!2589319))))

(declare-fun lt!2589316 () Unit!163980)

(assert (=> b!7258621 (= lt!2589316 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(declare-fun e!4352528 () Bool)

(assert (=> b!7258621 e!4352528))

(declare-fun res!2943327 () Bool)

(assert (=> b!7258621 (=> (not res!2943327) (not e!4352528))))

(declare-fun lt!2589354 () List!70616)

(declare-fun content!14669 (List!70616) (Set Context!15236))

(assert (=> b!7258621 (= res!2943327 (matchZipper!3588 (content!14669 lt!2589354) lt!2589344))))

(declare-fun lt!2589317 () Unit!163980)

(declare-fun lemmaExistsMatchingContextThenMatchingString!87 (List!70616 List!70614) Unit!163980)

(assert (=> b!7258621 (= lt!2589317 (lemmaExistsMatchingContextThenMatchingString!87 lt!2589354 lt!2589344))))

(assert (=> b!7258621 (= lt!2589354 (toList!11507 lt!2589338))))

(assert (=> b!7258621 e!4352534))

(declare-fun res!2943318 () Bool)

(assert (=> b!7258621 (=> (not res!2943318) (not e!4352534))))

(assert (=> b!7258621 (= res!2943318 (exists!4434 lt!2589338 lambda!445937))))

(declare-fun lt!2589350 () Unit!163980)

(declare-fun lemmaContainsThenExists!226 ((Set Context!15236) Context!15236 Int) Unit!163980)

(assert (=> b!7258621 (= lt!2589350 (lemmaContainsThenExists!226 lt!2589338 lt!2589326 lambda!445937))))

(declare-fun lt!2589353 () Unit!163980)

(assert (=> b!7258621 (= lt!2589353 (lemmaConcatPreservesForall!1485 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445934))))

(assert (=> b!7258621 (set.member lt!2589326 lt!2589338)))

(declare-fun lt!2589336 () Unit!163980)

(assert (=> b!7258621 (= lt!2589336 (lemmaConcatPreservesForall!1485 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445934))))

(assert (=> b!7258621 (set.member lt!2589326 lt!2589320)))

(declare-fun lt!2589314 () Unit!163980)

(assert (=> b!7258621 (= lt!2589314 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(declare-fun lt!2589331 () Unit!163980)

(assert (=> b!7258621 (= lt!2589331 (lemmaConcatPreservesForall!1485 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445934))))

(declare-fun lt!2589315 () Unit!163980)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!33 (Context!15236 Context!15236 Context!15236 C!37630) Unit!163980)

(assert (=> b!7258621 (= lt!2589315 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!33 ct1!232 ct2!328 lt!2589333 (h!76938 s1!1971)))))

(declare-fun tail!14381 (List!70614) List!70614)

(assert (=> b!7258621 (= (tail!14381 (++!16619 s1!1971 s2!1849)) lt!2589344)))

(declare-fun lt!2589348 () Unit!163980)

(declare-fun e!4352531 () Unit!163980)

(assert (=> b!7258621 (= lt!2589348 e!4352531)))

(declare-fun c!1350065 () Bool)

(declare-fun nullable!7938 (Regex!18678) Bool)

(assert (=> b!7258621 (= c!1350065 (nullable!7938 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun lambda!445936 () Int)

(declare-fun flatMap!2843 ((Set Context!15236) Int) (Set Context!15236))

(assert (=> b!7258621 (= (flatMap!2843 lt!2589339 lambda!445936) (derivationStepZipperUp!2502 lt!2589319 (h!76938 s1!1971)))))

(declare-fun lt!2589329 () Unit!163980)

(declare-fun lemmaFlatMapOnSingletonSet!2247 ((Set Context!15236) Context!15236 Int) Unit!163980)

(assert (=> b!7258621 (= lt!2589329 (lemmaFlatMapOnSingletonSet!2247 lt!2589339 lt!2589319 lambda!445936))))

(declare-fun lt!2589334 () Unit!163980)

(assert (=> b!7258621 (= lt!2589334 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(assert (=> b!7258621 (= (flatMap!2843 lt!2589332 lambda!445936) (derivationStepZipperUp!2502 ct1!232 (h!76938 s1!1971)))))

(declare-fun lt!2589346 () Unit!163980)

(assert (=> b!7258621 (= lt!2589346 (lemmaFlatMapOnSingletonSet!2247 lt!2589332 ct1!232 lambda!445936))))

(declare-fun lt!2589337 () Context!15236)

(declare-fun lt!2589323 () (Set Context!15236))

(assert (=> b!7258621 (= lt!2589323 (derivationStepZipperDown!2672 (h!76939 (exprs!8118 ct1!232)) lt!2589337 (h!76938 s1!1971)))))

(assert (=> b!7258621 (= lt!2589337 (Context!15237 (tail!14380 lt!2589343)))))

(declare-fun res!2943321 () Bool)

(assert (=> start!707170 (=> (not res!2943321) (not e!4352532))))

(assert (=> start!707170 (= res!2943321 (matchZipper!3588 lt!2589332 s1!1971))))

(assert (=> start!707170 (= lt!2589332 (set.insert ct1!232 (as set.empty (Set Context!15236))))))

(assert (=> start!707170 e!4352532))

(assert (=> start!707170 (and (inv!89706 ct1!232) e!4352522)))

(assert (=> start!707170 e!4352533))

(declare-fun e!4352520 () Bool)

(assert (=> start!707170 e!4352520))

(declare-fun e!4352527 () Bool)

(assert (=> start!707170 (and (inv!89706 ct2!328) e!4352527)))

(declare-fun b!7258622 () Bool)

(declare-fun e!4352524 () Bool)

(declare-fun lt!2589351 () (Set Context!15236))

(assert (=> b!7258622 (= e!4352524 (matchZipper!3588 lt!2589351 lt!2589344))))

(declare-fun b!7258623 () Bool)

(declare-fun tp!2038518 () Bool)

(assert (=> b!7258623 (= e!4352520 (and tp_is_empty!46821 tp!2038518))))

(declare-fun b!7258624 () Bool)

(declare-fun Unit!163982 () Unit!163980)

(assert (=> b!7258624 (= e!4352531 Unit!163982)))

(declare-fun lt!2589340 () Unit!163980)

(assert (=> b!7258624 (= lt!2589340 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(assert (=> b!7258624 (= lt!2589321 (derivationStepZipperUp!2502 lt!2589355 (h!76938 s1!1971)))))

(declare-fun lt!2589322 () Unit!163980)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1733 ((Set Context!15236) (Set Context!15236) List!70614) Unit!163980)

(assert (=> b!7258624 (= lt!2589322 (lemmaZipperConcatMatchesSameAsBothZippers!1733 lt!2589327 lt!2589321 (t!384678 s1!1971)))))

(declare-fun res!2943322 () Bool)

(assert (=> b!7258624 (= res!2943322 (matchZipper!3588 lt!2589327 (t!384678 s1!1971)))))

(assert (=> b!7258624 (=> res!2943322 e!4352526)))

(assert (=> b!7258624 (= (matchZipper!3588 (set.union lt!2589327 lt!2589321) (t!384678 s1!1971)) e!4352526)))

(declare-fun lt!2589349 () Unit!163980)

(assert (=> b!7258624 (= lt!2589349 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(assert (=> b!7258624 (= lt!2589351 (derivationStepZipperUp!2502 lt!2589337 (h!76938 s1!1971)))))

(declare-fun lt!2589318 () Unit!163980)

(assert (=> b!7258624 (= lt!2589318 (lemmaZipperConcatMatchesSameAsBothZippers!1733 lt!2589323 lt!2589351 lt!2589344))))

(declare-fun res!2943320 () Bool)

(assert (=> b!7258624 (= res!2943320 (matchZipper!3588 lt!2589323 lt!2589344))))

(assert (=> b!7258624 (=> res!2943320 e!4352524)))

(assert (=> b!7258624 (= (matchZipper!3588 (set.union lt!2589323 lt!2589351) lt!2589344) e!4352524)))

(declare-fun b!7258625 () Bool)

(declare-fun tp!2038516 () Bool)

(assert (=> b!7258625 (= e!4352527 tp!2038516)))

(declare-fun b!7258626 () Bool)

(declare-fun Unit!163983 () Unit!163980)

(assert (=> b!7258626 (= e!4352531 Unit!163983)))

(declare-fun b!7258627 () Bool)

(assert (=> b!7258627 (= e!4352528 (matchZipper!3588 lt!2589338 lt!2589344))))

(assert (= (and start!707170 res!2943321) b!7258617))

(assert (= (and b!7258617 res!2943325) b!7258614))

(assert (= (and b!7258614 res!2943317) b!7258611))

(assert (= (and b!7258611 res!2943324) b!7258620))

(assert (= (and b!7258620 (not res!2943319)) b!7258615))

(assert (= (and b!7258615 (not res!2943326)) b!7258616))

(assert (= (and b!7258616 (not res!2943323)) b!7258621))

(assert (= (and b!7258621 c!1350065) b!7258624))

(assert (= (and b!7258621 (not c!1350065)) b!7258626))

(assert (= (and b!7258624 (not res!2943322)) b!7258619))

(assert (= (and b!7258624 (not res!2943320)) b!7258622))

(assert (= (and b!7258621 res!2943318) b!7258612))

(assert (= (and b!7258621 res!2943327) b!7258627))

(assert (= start!707170 b!7258613))

(assert (= (and start!707170 (is-Cons!70490 s1!1971)) b!7258618))

(assert (= (and start!707170 (is-Cons!70490 s2!1849)) b!7258623))

(assert (= start!707170 b!7258625))

(declare-fun m!7941764 () Bool)

(assert (=> start!707170 m!7941764))

(declare-fun m!7941766 () Bool)

(assert (=> start!707170 m!7941766))

(declare-fun m!7941768 () Bool)

(assert (=> start!707170 m!7941768))

(declare-fun m!7941770 () Bool)

(assert (=> start!707170 m!7941770))

(declare-fun m!7941772 () Bool)

(assert (=> b!7258614 m!7941772))

(declare-fun m!7941774 () Bool)

(assert (=> b!7258614 m!7941774))

(declare-fun m!7941776 () Bool)

(assert (=> b!7258614 m!7941776))

(declare-fun m!7941778 () Bool)

(assert (=> b!7258617 m!7941778))

(assert (=> b!7258617 m!7941778))

(declare-fun m!7941780 () Bool)

(assert (=> b!7258617 m!7941780))

(declare-fun m!7941782 () Bool)

(assert (=> b!7258612 m!7941782))

(declare-fun m!7941784 () Bool)

(assert (=> b!7258611 m!7941784))

(declare-fun m!7941786 () Bool)

(assert (=> b!7258611 m!7941786))

(declare-fun m!7941788 () Bool)

(assert (=> b!7258616 m!7941788))

(declare-fun m!7941790 () Bool)

(assert (=> b!7258616 m!7941790))

(assert (=> b!7258616 m!7941776))

(declare-fun m!7941792 () Bool)

(assert (=> b!7258616 m!7941792))

(declare-fun m!7941794 () Bool)

(assert (=> b!7258616 m!7941794))

(assert (=> b!7258616 m!7941776))

(declare-fun m!7941796 () Bool)

(assert (=> b!7258619 m!7941796))

(declare-fun m!7941798 () Bool)

(assert (=> b!7258615 m!7941798))

(declare-fun m!7941800 () Bool)

(assert (=> b!7258615 m!7941800))

(assert (=> b!7258615 m!7941798))

(declare-fun m!7941802 () Bool)

(assert (=> b!7258615 m!7941802))

(declare-fun m!7941804 () Bool)

(assert (=> b!7258615 m!7941804))

(declare-fun m!7941806 () Bool)

(assert (=> b!7258615 m!7941806))

(declare-fun m!7941808 () Bool)

(assert (=> b!7258615 m!7941808))

(declare-fun m!7941810 () Bool)

(assert (=> b!7258615 m!7941810))

(declare-fun m!7941812 () Bool)

(assert (=> b!7258615 m!7941812))

(assert (=> b!7258615 m!7941806))

(declare-fun m!7941814 () Bool)

(assert (=> b!7258615 m!7941814))

(declare-fun m!7941816 () Bool)

(assert (=> b!7258624 m!7941816))

(declare-fun m!7941818 () Bool)

(assert (=> b!7258624 m!7941818))

(declare-fun m!7941820 () Bool)

(assert (=> b!7258624 m!7941820))

(declare-fun m!7941822 () Bool)

(assert (=> b!7258624 m!7941822))

(assert (=> b!7258624 m!7941776))

(declare-fun m!7941824 () Bool)

(assert (=> b!7258624 m!7941824))

(declare-fun m!7941826 () Bool)

(assert (=> b!7258624 m!7941826))

(assert (=> b!7258624 m!7941776))

(declare-fun m!7941828 () Bool)

(assert (=> b!7258624 m!7941828))

(declare-fun m!7941830 () Bool)

(assert (=> b!7258624 m!7941830))

(assert (=> b!7258621 m!7941776))

(declare-fun m!7941832 () Bool)

(assert (=> b!7258621 m!7941832))

(declare-fun m!7941834 () Bool)

(assert (=> b!7258621 m!7941834))

(assert (=> b!7258621 m!7941798))

(declare-fun m!7941836 () Bool)

(assert (=> b!7258621 m!7941836))

(assert (=> b!7258621 m!7941802))

(assert (=> b!7258621 m!7941782))

(assert (=> b!7258621 m!7941798))

(declare-fun m!7941838 () Bool)

(assert (=> b!7258621 m!7941838))

(assert (=> b!7258621 m!7941776))

(declare-fun m!7941840 () Bool)

(assert (=> b!7258621 m!7941840))

(declare-fun m!7941842 () Bool)

(assert (=> b!7258621 m!7941842))

(assert (=> b!7258621 m!7941794))

(declare-fun m!7941844 () Bool)

(assert (=> b!7258621 m!7941844))

(declare-fun m!7941846 () Bool)

(assert (=> b!7258621 m!7941846))

(declare-fun m!7941848 () Bool)

(assert (=> b!7258621 m!7941848))

(declare-fun m!7941850 () Bool)

(assert (=> b!7258621 m!7941850))

(declare-fun m!7941852 () Bool)

(assert (=> b!7258621 m!7941852))

(declare-fun m!7941854 () Bool)

(assert (=> b!7258621 m!7941854))

(assert (=> b!7258621 m!7941842))

(declare-fun m!7941856 () Bool)

(assert (=> b!7258621 m!7941856))

(declare-fun m!7941858 () Bool)

(assert (=> b!7258621 m!7941858))

(assert (=> b!7258621 m!7941848))

(declare-fun m!7941860 () Bool)

(assert (=> b!7258621 m!7941860))

(assert (=> b!7258621 m!7941798))

(declare-fun m!7941862 () Bool)

(assert (=> b!7258621 m!7941862))

(assert (=> b!7258621 m!7941776))

(declare-fun m!7941864 () Bool)

(assert (=> b!7258621 m!7941864))

(declare-fun m!7941866 () Bool)

(assert (=> b!7258621 m!7941866))

(declare-fun m!7941868 () Bool)

(assert (=> b!7258620 m!7941868))

(declare-fun m!7941870 () Bool)

(assert (=> b!7258620 m!7941870))

(declare-fun m!7941872 () Bool)

(assert (=> b!7258620 m!7941872))

(declare-fun m!7941874 () Bool)

(assert (=> b!7258620 m!7941874))

(declare-fun m!7941876 () Bool)

(assert (=> b!7258620 m!7941876))

(declare-fun m!7941878 () Bool)

(assert (=> b!7258622 m!7941878))

(declare-fun m!7941880 () Bool)

(assert (=> b!7258627 m!7941880))

(push 1)

(assert (not b!7258613))

(assert (not b!7258614))

(assert (not b!7258616))

(assert (not b!7258617))

(assert (not b!7258624))

(assert (not b!7258619))

(assert (not b!7258618))

(assert (not b!7258620))

(assert (not b!7258612))

(assert (not b!7258611))

(assert (not start!707170))

(assert (not b!7258623))

(assert (not b!7258615))

(assert (not b!7258622))

(assert (not b!7258621))

(assert (not b!7258627))

(assert tp_is_empty!46821)

(assert (not b!7258625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2257740 () Bool)

(declare-fun c!1350088 () Bool)

(declare-fun isEmpty!40594 (List!70614) Bool)

(assert (=> d!2257740 (= c!1350088 (isEmpty!40594 lt!2589344))))

(declare-fun e!4352582 () Bool)

(assert (=> d!2257740 (= (matchZipper!3588 lt!2589338 lt!2589344) e!4352582)))

(declare-fun b!7258691 () Bool)

(declare-fun nullableZipper!2934 ((Set Context!15236)) Bool)

(assert (=> b!7258691 (= e!4352582 (nullableZipper!2934 lt!2589338))))

(declare-fun b!7258692 () Bool)

(declare-fun head!14931 (List!70614) C!37630)

(assert (=> b!7258692 (= e!4352582 (matchZipper!3588 (derivationStepZipper!3456 lt!2589338 (head!14931 lt!2589344)) (tail!14381 lt!2589344)))))

(assert (= (and d!2257740 c!1350088) b!7258691))

(assert (= (and d!2257740 (not c!1350088)) b!7258692))

(declare-fun m!7942000 () Bool)

(assert (=> d!2257740 m!7942000))

(declare-fun m!7942002 () Bool)

(assert (=> b!7258691 m!7942002))

(declare-fun m!7942004 () Bool)

(assert (=> b!7258692 m!7942004))

(assert (=> b!7258692 m!7942004))

(declare-fun m!7942006 () Bool)

(assert (=> b!7258692 m!7942006))

(declare-fun m!7942008 () Bool)

(assert (=> b!7258692 m!7942008))

(assert (=> b!7258692 m!7942006))

(assert (=> b!7258692 m!7942008))

(declare-fun m!7942010 () Bool)

(assert (=> b!7258692 m!7942010))

(assert (=> b!7258627 d!2257740))

(declare-fun d!2257742 () Bool)

(declare-fun c!1350089 () Bool)

(assert (=> d!2257742 (= c!1350089 (isEmpty!40594 s2!1849))))

(declare-fun e!4352583 () Bool)

(assert (=> d!2257742 (= (matchZipper!3588 (set.insert ct2!328 (as set.empty (Set Context!15236))) s2!1849) e!4352583)))

(declare-fun b!7258693 () Bool)

(assert (=> b!7258693 (= e!4352583 (nullableZipper!2934 (set.insert ct2!328 (as set.empty (Set Context!15236)))))))

(declare-fun b!7258694 () Bool)

(assert (=> b!7258694 (= e!4352583 (matchZipper!3588 (derivationStepZipper!3456 (set.insert ct2!328 (as set.empty (Set Context!15236))) (head!14931 s2!1849)) (tail!14381 s2!1849)))))

(assert (= (and d!2257742 c!1350089) b!7258693))

(assert (= (and d!2257742 (not c!1350089)) b!7258694))

(declare-fun m!7942012 () Bool)

(assert (=> d!2257742 m!7942012))

(assert (=> b!7258693 m!7941778))

(declare-fun m!7942014 () Bool)

(assert (=> b!7258693 m!7942014))

(declare-fun m!7942016 () Bool)

(assert (=> b!7258694 m!7942016))

(assert (=> b!7258694 m!7941778))

(assert (=> b!7258694 m!7942016))

(declare-fun m!7942018 () Bool)

(assert (=> b!7258694 m!7942018))

(declare-fun m!7942020 () Bool)

(assert (=> b!7258694 m!7942020))

(assert (=> b!7258694 m!7942018))

(assert (=> b!7258694 m!7942020))

(declare-fun m!7942022 () Bool)

(assert (=> b!7258694 m!7942022))

(assert (=> b!7258617 d!2257742))

(declare-fun d!2257744 () Bool)

(declare-fun e!4352586 () Bool)

(assert (=> d!2257744 e!4352586))

(declare-fun res!2943363 () Bool)

(assert (=> d!2257744 (=> (not res!2943363) (not e!4352586))))

(declare-fun lt!2589484 () Context!15236)

(declare-fun dynLambda!28806 (Int Context!15236) Bool)

(assert (=> d!2257744 (= res!2943363 (dynLambda!28806 lambda!445935 lt!2589484))))

(declare-fun getWitness!2258 (List!70616 Int) Context!15236)

(assert (=> d!2257744 (= lt!2589484 (getWitness!2258 (toList!11507 lt!2589335) lambda!445935))))

(assert (=> d!2257744 (exists!4434 lt!2589335 lambda!445935)))

(assert (=> d!2257744 (= (getWitness!2256 lt!2589335 lambda!445935) lt!2589484)))

(declare-fun b!7258697 () Bool)

(assert (=> b!7258697 (= e!4352586 (set.member lt!2589484 lt!2589335))))

(assert (= (and d!2257744 res!2943363) b!7258697))

(declare-fun b_lambda!279129 () Bool)

(assert (=> (not b_lambda!279129) (not d!2257744)))

(declare-fun m!7942024 () Bool)

(assert (=> d!2257744 m!7942024))

(assert (=> d!2257744 m!7941872))

(assert (=> d!2257744 m!7941872))

(declare-fun m!7942026 () Bool)

(assert (=> d!2257744 m!7942026))

(assert (=> d!2257744 m!7941870))

(declare-fun m!7942028 () Bool)

(assert (=> b!7258697 m!7942028))

(assert (=> b!7258615 d!2257744))

(declare-fun bs!1908196 () Bool)

(declare-fun d!2257746 () Bool)

(assert (= bs!1908196 (and d!2257746 b!7258614)))

(declare-fun lambda!445984 () Int)

(assert (=> bs!1908196 (= lambda!445984 lambda!445934)))

(assert (=> d!2257746 (matchZipper!3588 (set.insert (Context!15237 (++!16618 (exprs!8118 lt!2589333) (exprs!8118 ct2!328))) (as set.empty (Set Context!15236))) (++!16619 (t!384678 s1!1971) s2!1849))))

(declare-fun lt!2589490 () Unit!163980)

(assert (=> d!2257746 (= lt!2589490 (lemmaConcatPreservesForall!1485 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445984))))

(declare-fun lt!2589489 () Unit!163980)

(declare-fun choose!56179 (Context!15236 Context!15236 List!70614 List!70614) Unit!163980)

(assert (=> d!2257746 (= lt!2589489 (choose!56179 lt!2589333 ct2!328 (t!384678 s1!1971) s2!1849))))

(assert (=> d!2257746 (matchZipper!3588 (set.insert lt!2589333 (as set.empty (Set Context!15236))) (t!384678 s1!1971))))

(assert (=> d!2257746 (= (lemmaConcatenateContextMatchesConcatOfStrings!423 lt!2589333 ct2!328 (t!384678 s1!1971) s2!1849) lt!2589489)))

(declare-fun bs!1908197 () Bool)

(assert (= bs!1908197 d!2257746))

(assert (=> bs!1908197 m!7941804))

(assert (=> bs!1908197 m!7941810))

(declare-fun m!7942030 () Bool)

(assert (=> bs!1908197 m!7942030))

(assert (=> bs!1908197 m!7941804))

(declare-fun m!7942032 () Bool)

(assert (=> bs!1908197 m!7942032))

(declare-fun m!7942034 () Bool)

(assert (=> bs!1908197 m!7942034))

(assert (=> bs!1908197 m!7942030))

(declare-fun m!7942036 () Bool)

(assert (=> bs!1908197 m!7942036))

(declare-fun m!7942038 () Bool)

(assert (=> bs!1908197 m!7942038))

(declare-fun m!7942040 () Bool)

(assert (=> bs!1908197 m!7942040))

(assert (=> bs!1908197 m!7942038))

(assert (=> b!7258615 d!2257746))

(declare-fun d!2257748 () Bool)

(assert (=> d!2257748 (= (isEmpty!40592 (exprs!8118 ct1!232)) (is-Nil!70491 (exprs!8118 ct1!232)))))

(assert (=> b!7258615 d!2257748))

(declare-fun d!2257750 () Bool)

(declare-fun c!1350090 () Bool)

(assert (=> d!2257750 (= c!1350090 (isEmpty!40594 lt!2589344))))

(declare-fun e!4352587 () Bool)

(assert (=> d!2257750 (= (matchZipper!3588 (set.insert lt!2589326 (as set.empty (Set Context!15236))) lt!2589344) e!4352587)))

(declare-fun b!7258698 () Bool)

(assert (=> b!7258698 (= e!4352587 (nullableZipper!2934 (set.insert lt!2589326 (as set.empty (Set Context!15236)))))))

(declare-fun b!7258699 () Bool)

(assert (=> b!7258699 (= e!4352587 (matchZipper!3588 (derivationStepZipper!3456 (set.insert lt!2589326 (as set.empty (Set Context!15236))) (head!14931 lt!2589344)) (tail!14381 lt!2589344)))))

(assert (= (and d!2257750 c!1350090) b!7258698))

(assert (= (and d!2257750 (not c!1350090)) b!7258699))

(assert (=> d!2257750 m!7942000))

(assert (=> b!7258698 m!7941806))

(declare-fun m!7942042 () Bool)

(assert (=> b!7258698 m!7942042))

(assert (=> b!7258699 m!7942004))

(assert (=> b!7258699 m!7941806))

(assert (=> b!7258699 m!7942004))

(declare-fun m!7942044 () Bool)

(assert (=> b!7258699 m!7942044))

(assert (=> b!7258699 m!7942008))

(assert (=> b!7258699 m!7942044))

(assert (=> b!7258699 m!7942008))

(declare-fun m!7942046 () Bool)

(assert (=> b!7258699 m!7942046))

(assert (=> b!7258615 d!2257750))

(declare-fun d!2257752 () Bool)

(declare-fun e!4352593 () Bool)

(assert (=> d!2257752 e!4352593))

(declare-fun res!2943369 () Bool)

(assert (=> d!2257752 (=> (not res!2943369) (not e!4352593))))

(declare-fun lt!2589493 () List!70614)

(declare-fun content!14671 (List!70614) (Set C!37630))

(assert (=> d!2257752 (= res!2943369 (= (content!14671 lt!2589493) (set.union (content!14671 (t!384678 s1!1971)) (content!14671 s2!1849))))))

(declare-fun e!4352592 () List!70614)

(assert (=> d!2257752 (= lt!2589493 e!4352592)))

(declare-fun c!1350093 () Bool)

(assert (=> d!2257752 (= c!1350093 (is-Nil!70490 (t!384678 s1!1971)))))

(assert (=> d!2257752 (= (++!16619 (t!384678 s1!1971) s2!1849) lt!2589493)))

(declare-fun b!7258710 () Bool)

(declare-fun res!2943368 () Bool)

(assert (=> b!7258710 (=> (not res!2943368) (not e!4352593))))

(declare-fun size!41756 (List!70614) Int)

(assert (=> b!7258710 (= res!2943368 (= (size!41756 lt!2589493) (+ (size!41756 (t!384678 s1!1971)) (size!41756 s2!1849))))))

(declare-fun b!7258709 () Bool)

(assert (=> b!7258709 (= e!4352592 (Cons!70490 (h!76938 (t!384678 s1!1971)) (++!16619 (t!384678 (t!384678 s1!1971)) s2!1849)))))

(declare-fun b!7258708 () Bool)

(assert (=> b!7258708 (= e!4352592 s2!1849)))

(declare-fun b!7258711 () Bool)

(assert (=> b!7258711 (= e!4352593 (or (not (= s2!1849 Nil!70490)) (= lt!2589493 (t!384678 s1!1971))))))

(assert (= (and d!2257752 c!1350093) b!7258708))

(assert (= (and d!2257752 (not c!1350093)) b!7258709))

(assert (= (and d!2257752 res!2943369) b!7258710))

(assert (= (and b!7258710 res!2943368) b!7258711))

(declare-fun m!7942048 () Bool)

(assert (=> d!2257752 m!7942048))

(declare-fun m!7942050 () Bool)

(assert (=> d!2257752 m!7942050))

(declare-fun m!7942052 () Bool)

(assert (=> d!2257752 m!7942052))

(declare-fun m!7942054 () Bool)

(assert (=> b!7258710 m!7942054))

(declare-fun m!7942056 () Bool)

(assert (=> b!7258710 m!7942056))

(declare-fun m!7942058 () Bool)

(assert (=> b!7258710 m!7942058))

(declare-fun m!7942060 () Bool)

(assert (=> b!7258709 m!7942060))

(assert (=> b!7258615 d!2257752))

(declare-fun b!7258722 () Bool)

(declare-fun e!4352602 () (Set Context!15236))

(declare-fun call!661559 () (Set Context!15236))

(assert (=> b!7258722 (= e!4352602 call!661559)))

(declare-fun bm!661554 () Bool)

(assert (=> bm!661554 (= call!661559 (derivationStepZipperDown!2672 (h!76939 (exprs!8118 ct1!232)) (Context!15237 (t!384679 (exprs!8118 ct1!232))) (h!76938 s1!1971)))))

(declare-fun b!7258723 () Bool)

(declare-fun e!4352601 () Bool)

(assert (=> b!7258723 (= e!4352601 (nullable!7938 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun b!7258724 () Bool)

(assert (=> b!7258724 (= e!4352602 (as set.empty (Set Context!15236)))))

(declare-fun b!7258725 () Bool)

(declare-fun e!4352600 () (Set Context!15236))

(assert (=> b!7258725 (= e!4352600 e!4352602)))

(declare-fun c!1350099 () Bool)

(assert (=> b!7258725 (= c!1350099 (is-Cons!70491 (exprs!8118 ct1!232)))))

(declare-fun d!2257754 () Bool)

(declare-fun c!1350098 () Bool)

(assert (=> d!2257754 (= c!1350098 e!4352601)))

(declare-fun res!2943372 () Bool)

(assert (=> d!2257754 (=> (not res!2943372) (not e!4352601))))

(assert (=> d!2257754 (= res!2943372 (is-Cons!70491 (exprs!8118 ct1!232)))))

(assert (=> d!2257754 (= (derivationStepZipperUp!2502 ct1!232 (h!76938 s1!1971)) e!4352600)))

(declare-fun b!7258726 () Bool)

(assert (=> b!7258726 (= e!4352600 (set.union call!661559 (derivationStepZipperUp!2502 (Context!15237 (t!384679 (exprs!8118 ct1!232))) (h!76938 s1!1971))))))

(assert (= (and d!2257754 res!2943372) b!7258723))

(assert (= (and d!2257754 c!1350098) b!7258726))

(assert (= (and d!2257754 (not c!1350098)) b!7258725))

(assert (= (and b!7258725 c!1350099) b!7258722))

(assert (= (and b!7258725 (not c!1350099)) b!7258724))

(assert (= (or b!7258726 b!7258722) bm!661554))

(declare-fun m!7942062 () Bool)

(assert (=> bm!661554 m!7942062))

(assert (=> b!7258723 m!7941846))

(declare-fun m!7942064 () Bool)

(assert (=> b!7258726 m!7942064))

(assert (=> b!7258615 d!2257754))

(declare-fun b!7258735 () Bool)

(declare-fun e!4352608 () List!70615)

(assert (=> b!7258735 (= e!4352608 (exprs!8118 ct2!328))))

(declare-fun b!7258738 () Bool)

(declare-fun e!4352607 () Bool)

(declare-fun lt!2589496 () List!70615)

(assert (=> b!7258738 (= e!4352607 (or (not (= (exprs!8118 ct2!328) Nil!70491)) (= lt!2589496 (exprs!8118 lt!2589333))))))

(declare-fun b!7258737 () Bool)

(declare-fun res!2943378 () Bool)

(assert (=> b!7258737 (=> (not res!2943378) (not e!4352607))))

(declare-fun size!41757 (List!70615) Int)

(assert (=> b!7258737 (= res!2943378 (= (size!41757 lt!2589496) (+ (size!41757 (exprs!8118 lt!2589333)) (size!41757 (exprs!8118 ct2!328)))))))

(declare-fun b!7258736 () Bool)

(assert (=> b!7258736 (= e!4352608 (Cons!70491 (h!76939 (exprs!8118 lt!2589333)) (++!16618 (t!384679 (exprs!8118 lt!2589333)) (exprs!8118 ct2!328))))))

(declare-fun d!2257756 () Bool)

(assert (=> d!2257756 e!4352607))

(declare-fun res!2943377 () Bool)

(assert (=> d!2257756 (=> (not res!2943377) (not e!4352607))))

(declare-fun content!14672 (List!70615) (Set Regex!18678))

(assert (=> d!2257756 (= res!2943377 (= (content!14672 lt!2589496) (set.union (content!14672 (exprs!8118 lt!2589333)) (content!14672 (exprs!8118 ct2!328)))))))

(assert (=> d!2257756 (= lt!2589496 e!4352608)))

(declare-fun c!1350102 () Bool)

(assert (=> d!2257756 (= c!1350102 (is-Nil!70491 (exprs!8118 lt!2589333)))))

(assert (=> d!2257756 (= (++!16618 (exprs!8118 lt!2589333) (exprs!8118 ct2!328)) lt!2589496)))

(assert (= (and d!2257756 c!1350102) b!7258735))

(assert (= (and d!2257756 (not c!1350102)) b!7258736))

(assert (= (and d!2257756 res!2943377) b!7258737))

(assert (= (and b!7258737 res!2943378) b!7258738))

(declare-fun m!7942066 () Bool)

(assert (=> b!7258737 m!7942066))

(declare-fun m!7942068 () Bool)

(assert (=> b!7258737 m!7942068))

(declare-fun m!7942070 () Bool)

(assert (=> b!7258737 m!7942070))

(declare-fun m!7942072 () Bool)

(assert (=> b!7258736 m!7942072))

(declare-fun m!7942074 () Bool)

(assert (=> d!2257756 m!7942074))

(declare-fun m!7942076 () Bool)

(assert (=> d!2257756 m!7942076))

(declare-fun m!7942078 () Bool)

(assert (=> d!2257756 m!7942078))

(assert (=> b!7258615 d!2257756))

(declare-fun d!2257758 () Bool)

(declare-fun forall!17533 (List!70615 Int) Bool)

(assert (=> d!2257758 (forall!17533 (++!16618 (exprs!8118 lt!2589333) (exprs!8118 ct2!328)) lambda!445934)))

(declare-fun lt!2589499 () Unit!163980)

(declare-fun choose!56180 (List!70615 List!70615 Int) Unit!163980)

(assert (=> d!2257758 (= lt!2589499 (choose!56180 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445934))))

(assert (=> d!2257758 (forall!17533 (exprs!8118 lt!2589333) lambda!445934)))

(assert (=> d!2257758 (= (lemmaConcatPreservesForall!1485 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445934) lt!2589499)))

(declare-fun bs!1908198 () Bool)

(assert (= bs!1908198 d!2257758))

(assert (=> bs!1908198 m!7941810))

(assert (=> bs!1908198 m!7941810))

(declare-fun m!7942080 () Bool)

(assert (=> bs!1908198 m!7942080))

(declare-fun m!7942082 () Bool)

(assert (=> bs!1908198 m!7942082))

(declare-fun m!7942084 () Bool)

(assert (=> bs!1908198 m!7942084))

(assert (=> b!7258615 d!2257758))

(declare-fun d!2257760 () Bool)

(assert (=> d!2257760 (= (tail!14380 (exprs!8118 ct1!232)) (t!384679 (exprs!8118 ct1!232)))))

(assert (=> b!7258616 d!2257760))

(declare-fun b!7258761 () Bool)

(declare-fun e!4352624 () Bool)

(assert (=> b!7258761 (= e!4352624 (nullable!7938 (regOne!37868 (h!76939 (exprs!8118 ct1!232)))))))

(declare-fun b!7258762 () Bool)

(declare-fun c!1350113 () Bool)

(assert (=> b!7258762 (= c!1350113 e!4352624)))

(declare-fun res!2943381 () Bool)

(assert (=> b!7258762 (=> (not res!2943381) (not e!4352624))))

(assert (=> b!7258762 (= res!2943381 (is-Concat!27523 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun e!4352626 () (Set Context!15236))

(declare-fun e!4352625 () (Set Context!15236))

(assert (=> b!7258762 (= e!4352626 e!4352625)))

(declare-fun b!7258763 () Bool)

(declare-fun e!4352623 () (Set Context!15236))

(declare-fun call!661576 () (Set Context!15236))

(assert (=> b!7258763 (= e!4352623 call!661576)))

(declare-fun bm!661567 () Bool)

(declare-fun call!661574 () List!70615)

(declare-fun call!661575 () List!70615)

(assert (=> bm!661567 (= call!661574 call!661575)))

(declare-fun b!7258764 () Bool)

(declare-fun e!4352621 () (Set Context!15236))

(assert (=> b!7258764 (= e!4352621 e!4352626)))

(declare-fun c!1350115 () Bool)

(assert (=> b!7258764 (= c!1350115 (is-Union!18678 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun bm!661568 () Bool)

(declare-fun c!1350116 () Bool)

(declare-fun $colon$colon!2936 (List!70615 Regex!18678) List!70615)

(assert (=> bm!661568 (= call!661575 ($colon$colon!2936 (exprs!8118 lt!2589355) (ite (or c!1350113 c!1350116) (regTwo!37868 (h!76939 (exprs!8118 ct1!232))) (h!76939 (exprs!8118 ct1!232)))))))

(declare-fun bm!661569 () Bool)

(declare-fun call!661577 () (Set Context!15236))

(assert (=> bm!661569 (= call!661577 (derivationStepZipperDown!2672 (ite c!1350115 (regOne!37869 (h!76939 (exprs!8118 ct1!232))) (regOne!37868 (h!76939 (exprs!8118 ct1!232)))) (ite c!1350115 lt!2589355 (Context!15237 call!661575)) (h!76938 s1!1971)))))

(declare-fun b!7258765 () Bool)

(declare-fun call!661573 () (Set Context!15236))

(assert (=> b!7258765 (= e!4352625 (set.union call!661577 call!661573))))

(declare-fun b!7258766 () Bool)

(assert (=> b!7258766 (= e!4352621 (set.insert lt!2589355 (as set.empty (Set Context!15236))))))

(declare-fun bm!661570 () Bool)

(declare-fun call!661572 () (Set Context!15236))

(assert (=> bm!661570 (= call!661572 (derivationStepZipperDown!2672 (ite c!1350115 (regTwo!37869 (h!76939 (exprs!8118 ct1!232))) (ite c!1350113 (regTwo!37868 (h!76939 (exprs!8118 ct1!232))) (ite c!1350116 (regOne!37868 (h!76939 (exprs!8118 ct1!232))) (reg!19007 (h!76939 (exprs!8118 ct1!232)))))) (ite (or c!1350115 c!1350113) lt!2589355 (Context!15237 call!661574)) (h!76938 s1!1971)))))

(declare-fun d!2257762 () Bool)

(declare-fun c!1350114 () Bool)

(assert (=> d!2257762 (= c!1350114 (and (is-ElementMatch!18678 (h!76939 (exprs!8118 ct1!232))) (= (c!1350066 (h!76939 (exprs!8118 ct1!232))) (h!76938 s1!1971))))))

(assert (=> d!2257762 (= (derivationStepZipperDown!2672 (h!76939 (exprs!8118 ct1!232)) lt!2589355 (h!76938 s1!1971)) e!4352621)))

(declare-fun b!7258767 () Bool)

(assert (=> b!7258767 (= e!4352625 e!4352623)))

(assert (=> b!7258767 (= c!1350116 (is-Concat!27523 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun bm!661571 () Bool)

(assert (=> bm!661571 (= call!661573 call!661572)))

(declare-fun b!7258768 () Bool)

(declare-fun e!4352622 () (Set Context!15236))

(assert (=> b!7258768 (= e!4352622 (as set.empty (Set Context!15236)))))

(declare-fun b!7258769 () Bool)

(assert (=> b!7258769 (= e!4352622 call!661576)))

(declare-fun bm!661572 () Bool)

(assert (=> bm!661572 (= call!661576 call!661573)))

(declare-fun b!7258770 () Bool)

(assert (=> b!7258770 (= e!4352626 (set.union call!661577 call!661572))))

(declare-fun b!7258771 () Bool)

(declare-fun c!1350117 () Bool)

(assert (=> b!7258771 (= c!1350117 (is-Star!18678 (h!76939 (exprs!8118 ct1!232))))))

(assert (=> b!7258771 (= e!4352623 e!4352622)))

(assert (= (and d!2257762 c!1350114) b!7258766))

(assert (= (and d!2257762 (not c!1350114)) b!7258764))

(assert (= (and b!7258764 c!1350115) b!7258770))

(assert (= (and b!7258764 (not c!1350115)) b!7258762))

(assert (= (and b!7258762 res!2943381) b!7258761))

(assert (= (and b!7258762 c!1350113) b!7258765))

(assert (= (and b!7258762 (not c!1350113)) b!7258767))

(assert (= (and b!7258767 c!1350116) b!7258763))

(assert (= (and b!7258767 (not c!1350116)) b!7258771))

(assert (= (and b!7258771 c!1350117) b!7258769))

(assert (= (and b!7258771 (not c!1350117)) b!7258768))

(assert (= (or b!7258763 b!7258769) bm!661567))

(assert (= (or b!7258763 b!7258769) bm!661572))

(assert (= (or b!7258765 bm!661567) bm!661568))

(assert (= (or b!7258765 bm!661572) bm!661571))

(assert (= (or b!7258770 bm!661571) bm!661570))

(assert (= (or b!7258770 b!7258765) bm!661569))

(declare-fun m!7942086 () Bool)

(assert (=> bm!661570 m!7942086))

(declare-fun m!7942088 () Bool)

(assert (=> b!7258761 m!7942088))

(declare-fun m!7942090 () Bool)

(assert (=> b!7258766 m!7942090))

(declare-fun m!7942092 () Bool)

(assert (=> bm!661569 m!7942092))

(declare-fun m!7942094 () Bool)

(assert (=> bm!661568 m!7942094))

(assert (=> b!7258616 d!2257762))

(declare-fun d!2257764 () Bool)

(assert (=> d!2257764 (forall!17533 (++!16618 (exprs!8118 ct1!232) (exprs!8118 ct2!328)) lambda!445934)))

(declare-fun lt!2589500 () Unit!163980)

(assert (=> d!2257764 (= lt!2589500 (choose!56180 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934))))

(assert (=> d!2257764 (forall!17533 (exprs!8118 ct1!232) lambda!445934)))

(assert (=> d!2257764 (= (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445934) lt!2589500)))

(declare-fun bs!1908199 () Bool)

(assert (= bs!1908199 d!2257764))

(assert (=> bs!1908199 m!7941774))

(assert (=> bs!1908199 m!7941774))

(declare-fun m!7942096 () Bool)

(assert (=> bs!1908199 m!7942096))

(declare-fun m!7942098 () Bool)

(assert (=> bs!1908199 m!7942098))

(declare-fun m!7942100 () Bool)

(assert (=> bs!1908199 m!7942100))

(assert (=> b!7258616 d!2257764))

(declare-fun d!2257766 () Bool)

(assert (=> d!2257766 (= (isEmpty!40592 lt!2589343) (is-Nil!70491 lt!2589343))))

(assert (=> b!7258616 d!2257766))

(declare-fun b!7258772 () Bool)

(declare-fun e!4352629 () (Set Context!15236))

(declare-fun call!661578 () (Set Context!15236))

(assert (=> b!7258772 (= e!4352629 call!661578)))

(declare-fun bm!661573 () Bool)

(assert (=> bm!661573 (= call!661578 (derivationStepZipperDown!2672 (h!76939 (exprs!8118 lt!2589319)) (Context!15237 (t!384679 (exprs!8118 lt!2589319))) (h!76938 s1!1971)))))

(declare-fun b!7258773 () Bool)

(declare-fun e!4352628 () Bool)

(assert (=> b!7258773 (= e!4352628 (nullable!7938 (h!76939 (exprs!8118 lt!2589319))))))

(declare-fun b!7258774 () Bool)

(assert (=> b!7258774 (= e!4352629 (as set.empty (Set Context!15236)))))

(declare-fun b!7258775 () Bool)

(declare-fun e!4352627 () (Set Context!15236))

(assert (=> b!7258775 (= e!4352627 e!4352629)))

(declare-fun c!1350119 () Bool)

(assert (=> b!7258775 (= c!1350119 (is-Cons!70491 (exprs!8118 lt!2589319)))))

(declare-fun d!2257768 () Bool)

(declare-fun c!1350118 () Bool)

(assert (=> d!2257768 (= c!1350118 e!4352628)))

(declare-fun res!2943382 () Bool)

(assert (=> d!2257768 (=> (not res!2943382) (not e!4352628))))

(assert (=> d!2257768 (= res!2943382 (is-Cons!70491 (exprs!8118 lt!2589319)))))

(assert (=> d!2257768 (= (derivationStepZipperUp!2502 lt!2589319 (h!76938 s1!1971)) e!4352627)))

(declare-fun b!7258776 () Bool)

(assert (=> b!7258776 (= e!4352627 (set.union call!661578 (derivationStepZipperUp!2502 (Context!15237 (t!384679 (exprs!8118 lt!2589319))) (h!76938 s1!1971))))))

(assert (= (and d!2257768 res!2943382) b!7258773))

(assert (= (and d!2257768 c!1350118) b!7258776))

(assert (= (and d!2257768 (not c!1350118)) b!7258775))

(assert (= (and b!7258775 c!1350119) b!7258772))

(assert (= (and b!7258775 (not c!1350119)) b!7258774))

(assert (= (or b!7258776 b!7258772) bm!661573))

(declare-fun m!7942102 () Bool)

(assert (=> bm!661573 m!7942102))

(declare-fun m!7942104 () Bool)

(assert (=> b!7258773 m!7942104))

(declare-fun m!7942106 () Bool)

(assert (=> b!7258776 m!7942106))

(assert (=> b!7258616 d!2257768))

(declare-fun b!7258777 () Bool)

(declare-fun e!4352631 () List!70615)

(assert (=> b!7258777 (= e!4352631 (exprs!8118 ct2!328))))

(declare-fun lt!2589501 () List!70615)

(declare-fun e!4352630 () Bool)

(declare-fun b!7258780 () Bool)

(assert (=> b!7258780 (= e!4352630 (or (not (= (exprs!8118 ct2!328) Nil!70491)) (= lt!2589501 (exprs!8118 ct1!232))))))

(declare-fun b!7258779 () Bool)

(declare-fun res!2943384 () Bool)

(assert (=> b!7258779 (=> (not res!2943384) (not e!4352630))))

(assert (=> b!7258779 (= res!2943384 (= (size!41757 lt!2589501) (+ (size!41757 (exprs!8118 ct1!232)) (size!41757 (exprs!8118 ct2!328)))))))

(declare-fun b!7258778 () Bool)

(assert (=> b!7258778 (= e!4352631 (Cons!70491 (h!76939 (exprs!8118 ct1!232)) (++!16618 (t!384679 (exprs!8118 ct1!232)) (exprs!8118 ct2!328))))))

(declare-fun d!2257770 () Bool)

(assert (=> d!2257770 e!4352630))

(declare-fun res!2943383 () Bool)

(assert (=> d!2257770 (=> (not res!2943383) (not e!4352630))))

(assert (=> d!2257770 (= res!2943383 (= (content!14672 lt!2589501) (set.union (content!14672 (exprs!8118 ct1!232)) (content!14672 (exprs!8118 ct2!328)))))))

(assert (=> d!2257770 (= lt!2589501 e!4352631)))

(declare-fun c!1350120 () Bool)

(assert (=> d!2257770 (= c!1350120 (is-Nil!70491 (exprs!8118 ct1!232)))))

(assert (=> d!2257770 (= (++!16618 (exprs!8118 ct1!232) (exprs!8118 ct2!328)) lt!2589501)))

(assert (= (and d!2257770 c!1350120) b!7258777))

(assert (= (and d!2257770 (not c!1350120)) b!7258778))

(assert (= (and d!2257770 res!2943383) b!7258779))

(assert (= (and b!7258779 res!2943384) b!7258780))

(declare-fun m!7942108 () Bool)

(assert (=> b!7258779 m!7942108))

(declare-fun m!7942110 () Bool)

(assert (=> b!7258779 m!7942110))

(assert (=> b!7258779 m!7942070))

(declare-fun m!7942112 () Bool)

(assert (=> b!7258778 m!7942112))

(declare-fun m!7942114 () Bool)

(assert (=> d!2257770 m!7942114))

(declare-fun m!7942116 () Bool)

(assert (=> d!2257770 m!7942116))

(assert (=> d!2257770 m!7942078))

(assert (=> b!7258614 d!2257770))

(assert (=> b!7258614 d!2257764))

(declare-fun b!7258781 () Bool)

(declare-fun e!4352634 () (Set Context!15236))

(declare-fun call!661579 () (Set Context!15236))

(assert (=> b!7258781 (= e!4352634 call!661579)))

(declare-fun bm!661574 () Bool)

(assert (=> bm!661574 (= call!661579 (derivationStepZipperDown!2672 (h!76939 (exprs!8118 lt!2589337)) (Context!15237 (t!384679 (exprs!8118 lt!2589337))) (h!76938 s1!1971)))))

(declare-fun b!7258782 () Bool)

(declare-fun e!4352633 () Bool)

(assert (=> b!7258782 (= e!4352633 (nullable!7938 (h!76939 (exprs!8118 lt!2589337))))))

(declare-fun b!7258783 () Bool)

(assert (=> b!7258783 (= e!4352634 (as set.empty (Set Context!15236)))))

(declare-fun b!7258784 () Bool)

(declare-fun e!4352632 () (Set Context!15236))

(assert (=> b!7258784 (= e!4352632 e!4352634)))

(declare-fun c!1350122 () Bool)

(assert (=> b!7258784 (= c!1350122 (is-Cons!70491 (exprs!8118 lt!2589337)))))

(declare-fun d!2257772 () Bool)

(declare-fun c!1350121 () Bool)

(assert (=> d!2257772 (= c!1350121 e!4352633)))

(declare-fun res!2943385 () Bool)

(assert (=> d!2257772 (=> (not res!2943385) (not e!4352633))))

(assert (=> d!2257772 (= res!2943385 (is-Cons!70491 (exprs!8118 lt!2589337)))))

(assert (=> d!2257772 (= (derivationStepZipperUp!2502 lt!2589337 (h!76938 s1!1971)) e!4352632)))

(declare-fun b!7258785 () Bool)

(assert (=> b!7258785 (= e!4352632 (set.union call!661579 (derivationStepZipperUp!2502 (Context!15237 (t!384679 (exprs!8118 lt!2589337))) (h!76938 s1!1971))))))

(assert (= (and d!2257772 res!2943385) b!7258782))

(assert (= (and d!2257772 c!1350121) b!7258785))

(assert (= (and d!2257772 (not c!1350121)) b!7258784))

(assert (= (and b!7258784 c!1350122) b!7258781))

(assert (= (and b!7258784 (not c!1350122)) b!7258783))

(assert (= (or b!7258785 b!7258781) bm!661574))

(declare-fun m!7942118 () Bool)

(assert (=> bm!661574 m!7942118))

(declare-fun m!7942120 () Bool)

(assert (=> b!7258782 m!7942120))

(declare-fun m!7942122 () Bool)

(assert (=> b!7258785 m!7942122))

(assert (=> b!7258624 d!2257772))

(declare-fun d!2257774 () Bool)

(declare-fun c!1350123 () Bool)

(assert (=> d!2257774 (= c!1350123 (isEmpty!40594 lt!2589344))))

(declare-fun e!4352635 () Bool)

(assert (=> d!2257774 (= (matchZipper!3588 (set.union lt!2589323 lt!2589351) lt!2589344) e!4352635)))

(declare-fun b!7258786 () Bool)

(assert (=> b!7258786 (= e!4352635 (nullableZipper!2934 (set.union lt!2589323 lt!2589351)))))

(declare-fun b!7258787 () Bool)

(assert (=> b!7258787 (= e!4352635 (matchZipper!3588 (derivationStepZipper!3456 (set.union lt!2589323 lt!2589351) (head!14931 lt!2589344)) (tail!14381 lt!2589344)))))

(assert (= (and d!2257774 c!1350123) b!7258786))

(assert (= (and d!2257774 (not c!1350123)) b!7258787))

(assert (=> d!2257774 m!7942000))

(declare-fun m!7942124 () Bool)

(assert (=> b!7258786 m!7942124))

(assert (=> b!7258787 m!7942004))

(assert (=> b!7258787 m!7942004))

(declare-fun m!7942126 () Bool)

(assert (=> b!7258787 m!7942126))

(assert (=> b!7258787 m!7942008))

(assert (=> b!7258787 m!7942126))

(assert (=> b!7258787 m!7942008))

(declare-fun m!7942128 () Bool)

(assert (=> b!7258787 m!7942128))

(assert (=> b!7258624 d!2257774))

(assert (=> b!7258624 d!2257764))

(declare-fun d!2257776 () Bool)

(declare-fun c!1350124 () Bool)

(assert (=> d!2257776 (= c!1350124 (isEmpty!40594 (t!384678 s1!1971)))))

(declare-fun e!4352636 () Bool)

(assert (=> d!2257776 (= (matchZipper!3588 (set.union lt!2589327 lt!2589321) (t!384678 s1!1971)) e!4352636)))

(declare-fun b!7258788 () Bool)

(assert (=> b!7258788 (= e!4352636 (nullableZipper!2934 (set.union lt!2589327 lt!2589321)))))

(declare-fun b!7258789 () Bool)

(assert (=> b!7258789 (= e!4352636 (matchZipper!3588 (derivationStepZipper!3456 (set.union lt!2589327 lt!2589321) (head!14931 (t!384678 s1!1971))) (tail!14381 (t!384678 s1!1971))))))

(assert (= (and d!2257776 c!1350124) b!7258788))

(assert (= (and d!2257776 (not c!1350124)) b!7258789))

(declare-fun m!7942130 () Bool)

(assert (=> d!2257776 m!7942130))

(declare-fun m!7942132 () Bool)

(assert (=> b!7258788 m!7942132))

(declare-fun m!7942134 () Bool)

(assert (=> b!7258789 m!7942134))

(assert (=> b!7258789 m!7942134))

(declare-fun m!7942136 () Bool)

(assert (=> b!7258789 m!7942136))

(declare-fun m!7942138 () Bool)

(assert (=> b!7258789 m!7942138))

(assert (=> b!7258789 m!7942136))

(assert (=> b!7258789 m!7942138))

(declare-fun m!7942140 () Bool)

(assert (=> b!7258789 m!7942140))

(assert (=> b!7258624 d!2257776))

(declare-fun b!7258790 () Bool)

(declare-fun e!4352639 () (Set Context!15236))

(declare-fun call!661580 () (Set Context!15236))

(assert (=> b!7258790 (= e!4352639 call!661580)))

(declare-fun bm!661575 () Bool)

(assert (=> bm!661575 (= call!661580 (derivationStepZipperDown!2672 (h!76939 (exprs!8118 lt!2589355)) (Context!15237 (t!384679 (exprs!8118 lt!2589355))) (h!76938 s1!1971)))))

(declare-fun b!7258791 () Bool)

(declare-fun e!4352638 () Bool)

(assert (=> b!7258791 (= e!4352638 (nullable!7938 (h!76939 (exprs!8118 lt!2589355))))))

(declare-fun b!7258792 () Bool)

(assert (=> b!7258792 (= e!4352639 (as set.empty (Set Context!15236)))))

(declare-fun b!7258793 () Bool)

(declare-fun e!4352637 () (Set Context!15236))

(assert (=> b!7258793 (= e!4352637 e!4352639)))

(declare-fun c!1350126 () Bool)

(assert (=> b!7258793 (= c!1350126 (is-Cons!70491 (exprs!8118 lt!2589355)))))

(declare-fun d!2257778 () Bool)

(declare-fun c!1350125 () Bool)

(assert (=> d!2257778 (= c!1350125 e!4352638)))

(declare-fun res!2943386 () Bool)

(assert (=> d!2257778 (=> (not res!2943386) (not e!4352638))))

(assert (=> d!2257778 (= res!2943386 (is-Cons!70491 (exprs!8118 lt!2589355)))))

(assert (=> d!2257778 (= (derivationStepZipperUp!2502 lt!2589355 (h!76938 s1!1971)) e!4352637)))

(declare-fun b!7258794 () Bool)

(assert (=> b!7258794 (= e!4352637 (set.union call!661580 (derivationStepZipperUp!2502 (Context!15237 (t!384679 (exprs!8118 lt!2589355))) (h!76938 s1!1971))))))

(assert (= (and d!2257778 res!2943386) b!7258791))

(assert (= (and d!2257778 c!1350125) b!7258794))

(assert (= (and d!2257778 (not c!1350125)) b!7258793))

(assert (= (and b!7258793 c!1350126) b!7258790))

(assert (= (and b!7258793 (not c!1350126)) b!7258792))

(assert (= (or b!7258794 b!7258790) bm!661575))

(declare-fun m!7942142 () Bool)

(assert (=> bm!661575 m!7942142))

(declare-fun m!7942144 () Bool)

(assert (=> b!7258791 m!7942144))

(declare-fun m!7942146 () Bool)

(assert (=> b!7258794 m!7942146))

(assert (=> b!7258624 d!2257778))

(declare-fun d!2257780 () Bool)

(declare-fun c!1350127 () Bool)

(assert (=> d!2257780 (= c!1350127 (isEmpty!40594 lt!2589344))))

(declare-fun e!4352640 () Bool)

(assert (=> d!2257780 (= (matchZipper!3588 lt!2589323 lt!2589344) e!4352640)))

(declare-fun b!7258795 () Bool)

(assert (=> b!7258795 (= e!4352640 (nullableZipper!2934 lt!2589323))))

(declare-fun b!7258796 () Bool)

(assert (=> b!7258796 (= e!4352640 (matchZipper!3588 (derivationStepZipper!3456 lt!2589323 (head!14931 lt!2589344)) (tail!14381 lt!2589344)))))

(assert (= (and d!2257780 c!1350127) b!7258795))

(assert (= (and d!2257780 (not c!1350127)) b!7258796))

(assert (=> d!2257780 m!7942000))

(declare-fun m!7942148 () Bool)

(assert (=> b!7258795 m!7942148))

(assert (=> b!7258796 m!7942004))

(assert (=> b!7258796 m!7942004))

(declare-fun m!7942150 () Bool)

(assert (=> b!7258796 m!7942150))

(assert (=> b!7258796 m!7942008))

(assert (=> b!7258796 m!7942150))

(assert (=> b!7258796 m!7942008))

(declare-fun m!7942152 () Bool)

(assert (=> b!7258796 m!7942152))

(assert (=> b!7258624 d!2257780))

(declare-fun d!2257782 () Bool)

(declare-fun c!1350128 () Bool)

(assert (=> d!2257782 (= c!1350128 (isEmpty!40594 (t!384678 s1!1971)))))

(declare-fun e!4352641 () Bool)

(assert (=> d!2257782 (= (matchZipper!3588 lt!2589327 (t!384678 s1!1971)) e!4352641)))

(declare-fun b!7258797 () Bool)

(assert (=> b!7258797 (= e!4352641 (nullableZipper!2934 lt!2589327))))

(declare-fun b!7258798 () Bool)

(assert (=> b!7258798 (= e!4352641 (matchZipper!3588 (derivationStepZipper!3456 lt!2589327 (head!14931 (t!384678 s1!1971))) (tail!14381 (t!384678 s1!1971))))))

(assert (= (and d!2257782 c!1350128) b!7258797))

(assert (= (and d!2257782 (not c!1350128)) b!7258798))

(assert (=> d!2257782 m!7942130))

(declare-fun m!7942154 () Bool)

(assert (=> b!7258797 m!7942154))

(assert (=> b!7258798 m!7942134))

(assert (=> b!7258798 m!7942134))

(declare-fun m!7942156 () Bool)

(assert (=> b!7258798 m!7942156))

(assert (=> b!7258798 m!7942138))

(assert (=> b!7258798 m!7942156))

(assert (=> b!7258798 m!7942138))

(declare-fun m!7942158 () Bool)

(assert (=> b!7258798 m!7942158))

(assert (=> b!7258624 d!2257782))

(declare-fun d!2257784 () Bool)

(declare-fun e!4352644 () Bool)

(assert (=> d!2257784 (= (matchZipper!3588 (set.union lt!2589323 lt!2589351) lt!2589344) e!4352644)))

(declare-fun res!2943389 () Bool)

(assert (=> d!2257784 (=> res!2943389 e!4352644)))

(assert (=> d!2257784 (= res!2943389 (matchZipper!3588 lt!2589323 lt!2589344))))

(declare-fun lt!2589504 () Unit!163980)

(declare-fun choose!56181 ((Set Context!15236) (Set Context!15236) List!70614) Unit!163980)

(assert (=> d!2257784 (= lt!2589504 (choose!56181 lt!2589323 lt!2589351 lt!2589344))))

(assert (=> d!2257784 (= (lemmaZipperConcatMatchesSameAsBothZippers!1733 lt!2589323 lt!2589351 lt!2589344) lt!2589504)))

(declare-fun b!7258801 () Bool)

(assert (=> b!7258801 (= e!4352644 (matchZipper!3588 lt!2589351 lt!2589344))))

(assert (= (and d!2257784 (not res!2943389)) b!7258801))

(assert (=> d!2257784 m!7941822))

(assert (=> d!2257784 m!7941816))

(declare-fun m!7942160 () Bool)

(assert (=> d!2257784 m!7942160))

(assert (=> b!7258801 m!7941878))

(assert (=> b!7258624 d!2257784))

(declare-fun e!4352645 () Bool)

(declare-fun d!2257786 () Bool)

(assert (=> d!2257786 (= (matchZipper!3588 (set.union lt!2589327 lt!2589321) (t!384678 s1!1971)) e!4352645)))

(declare-fun res!2943390 () Bool)

(assert (=> d!2257786 (=> res!2943390 e!4352645)))

(assert (=> d!2257786 (= res!2943390 (matchZipper!3588 lt!2589327 (t!384678 s1!1971)))))

(declare-fun lt!2589505 () Unit!163980)

(assert (=> d!2257786 (= lt!2589505 (choose!56181 lt!2589327 lt!2589321 (t!384678 s1!1971)))))

(assert (=> d!2257786 (= (lemmaZipperConcatMatchesSameAsBothZippers!1733 lt!2589327 lt!2589321 (t!384678 s1!1971)) lt!2589505)))

(declare-fun b!7258802 () Bool)

(assert (=> b!7258802 (= e!4352645 (matchZipper!3588 lt!2589321 (t!384678 s1!1971)))))

(assert (= (and d!2257786 (not res!2943390)) b!7258802))

(assert (=> d!2257786 m!7941830))

(assert (=> d!2257786 m!7941828))

(declare-fun m!7942162 () Bool)

(assert (=> d!2257786 m!7942162))

(assert (=> b!7258802 m!7941796))

(assert (=> b!7258624 d!2257786))

(declare-fun d!2257788 () Bool)

(declare-fun c!1350129 () Bool)

(assert (=> d!2257788 (= c!1350129 (isEmpty!40594 s1!1971))))

(declare-fun e!4352646 () Bool)

(assert (=> d!2257788 (= (matchZipper!3588 lt!2589332 s1!1971) e!4352646)))

(declare-fun b!7258803 () Bool)

(assert (=> b!7258803 (= e!4352646 (nullableZipper!2934 lt!2589332))))

(declare-fun b!7258804 () Bool)

(assert (=> b!7258804 (= e!4352646 (matchZipper!3588 (derivationStepZipper!3456 lt!2589332 (head!14931 s1!1971)) (tail!14381 s1!1971)))))

(assert (= (and d!2257788 c!1350129) b!7258803))

(assert (= (and d!2257788 (not c!1350129)) b!7258804))

(declare-fun m!7942164 () Bool)

(assert (=> d!2257788 m!7942164))

(declare-fun m!7942166 () Bool)

(assert (=> b!7258803 m!7942166))

(declare-fun m!7942168 () Bool)

(assert (=> b!7258804 m!7942168))

(assert (=> b!7258804 m!7942168))

(declare-fun m!7942170 () Bool)

(assert (=> b!7258804 m!7942170))

(declare-fun m!7942172 () Bool)

(assert (=> b!7258804 m!7942172))

(assert (=> b!7258804 m!7942170))

(assert (=> b!7258804 m!7942172))

(declare-fun m!7942174 () Bool)

(assert (=> b!7258804 m!7942174))

(assert (=> start!707170 d!2257788))

(declare-fun bs!1908200 () Bool)

(declare-fun d!2257790 () Bool)

(assert (= bs!1908200 (and d!2257790 b!7258614)))

(declare-fun lambda!445987 () Int)

(assert (=> bs!1908200 (= lambda!445987 lambda!445934)))

(declare-fun bs!1908201 () Bool)

(assert (= bs!1908201 (and d!2257790 d!2257746)))

(assert (=> bs!1908201 (= lambda!445987 lambda!445984)))

(assert (=> d!2257790 (= (inv!89706 ct1!232) (forall!17533 (exprs!8118 ct1!232) lambda!445987))))

(declare-fun bs!1908202 () Bool)

(assert (= bs!1908202 d!2257790))

(declare-fun m!7942176 () Bool)

(assert (=> bs!1908202 m!7942176))

(assert (=> start!707170 d!2257790))

(declare-fun bs!1908203 () Bool)

(declare-fun d!2257792 () Bool)

(assert (= bs!1908203 (and d!2257792 b!7258614)))

(declare-fun lambda!445988 () Int)

(assert (=> bs!1908203 (= lambda!445988 lambda!445934)))

(declare-fun bs!1908204 () Bool)

(assert (= bs!1908204 (and d!2257792 d!2257746)))

(assert (=> bs!1908204 (= lambda!445988 lambda!445984)))

(declare-fun bs!1908205 () Bool)

(assert (= bs!1908205 (and d!2257792 d!2257790)))

(assert (=> bs!1908205 (= lambda!445988 lambda!445987)))

(assert (=> d!2257792 (= (inv!89706 ct2!328) (forall!17533 (exprs!8118 ct2!328) lambda!445988))))

(declare-fun bs!1908206 () Bool)

(assert (= bs!1908206 d!2257792))

(declare-fun m!7942178 () Bool)

(assert (=> bs!1908206 m!7942178))

(assert (=> start!707170 d!2257792))

(declare-fun d!2257794 () Bool)

(declare-fun c!1350130 () Bool)

(assert (=> d!2257794 (= c!1350130 (isEmpty!40594 lt!2589344))))

(declare-fun e!4352647 () Bool)

(assert (=> d!2257794 (= (matchZipper!3588 lt!2589351 lt!2589344) e!4352647)))

(declare-fun b!7258805 () Bool)

(assert (=> b!7258805 (= e!4352647 (nullableZipper!2934 lt!2589351))))

(declare-fun b!7258806 () Bool)

(assert (=> b!7258806 (= e!4352647 (matchZipper!3588 (derivationStepZipper!3456 lt!2589351 (head!14931 lt!2589344)) (tail!14381 lt!2589344)))))

(assert (= (and d!2257794 c!1350130) b!7258805))

(assert (= (and d!2257794 (not c!1350130)) b!7258806))

(assert (=> d!2257794 m!7942000))

(declare-fun m!7942180 () Bool)

(assert (=> b!7258805 m!7942180))

(assert (=> b!7258806 m!7942004))

(assert (=> b!7258806 m!7942004))

(declare-fun m!7942182 () Bool)

(assert (=> b!7258806 m!7942182))

(assert (=> b!7258806 m!7942008))

(assert (=> b!7258806 m!7942182))

(assert (=> b!7258806 m!7942008))

(declare-fun m!7942184 () Bool)

(assert (=> b!7258806 m!7942184))

(assert (=> b!7258622 d!2257794))

(declare-fun d!2257796 () Bool)

(declare-fun c!1350131 () Bool)

(assert (=> d!2257796 (= c!1350131 (isEmpty!40594 (t!384678 s1!1971)))))

(declare-fun e!4352648 () Bool)

(assert (=> d!2257796 (= (matchZipper!3588 lt!2589335 (t!384678 s1!1971)) e!4352648)))

(declare-fun b!7258807 () Bool)

(assert (=> b!7258807 (= e!4352648 (nullableZipper!2934 lt!2589335))))

(declare-fun b!7258808 () Bool)

(assert (=> b!7258808 (= e!4352648 (matchZipper!3588 (derivationStepZipper!3456 lt!2589335 (head!14931 (t!384678 s1!1971))) (tail!14381 (t!384678 s1!1971))))))

(assert (= (and d!2257796 c!1350131) b!7258807))

(assert (= (and d!2257796 (not c!1350131)) b!7258808))

(assert (=> d!2257796 m!7942130))

(declare-fun m!7942186 () Bool)

(assert (=> b!7258807 m!7942186))

(assert (=> b!7258808 m!7942134))

(assert (=> b!7258808 m!7942134))

(declare-fun m!7942188 () Bool)

(assert (=> b!7258808 m!7942188))

(assert (=> b!7258808 m!7942138))

(assert (=> b!7258808 m!7942188))

(assert (=> b!7258808 m!7942138))

(declare-fun m!7942190 () Bool)

(assert (=> b!7258808 m!7942190))

(assert (=> b!7258611 d!2257796))

(declare-fun bs!1908207 () Bool)

(declare-fun d!2257798 () Bool)

(assert (= bs!1908207 (and d!2257798 b!7258621)))

(declare-fun lambda!445991 () Int)

(assert (=> bs!1908207 (= lambda!445991 lambda!445936)))

(assert (=> d!2257798 true))

(assert (=> d!2257798 (= (derivationStepZipper!3456 lt!2589332 (h!76938 s1!1971)) (flatMap!2843 lt!2589332 lambda!445991))))

(declare-fun bs!1908208 () Bool)

(assert (= bs!1908208 d!2257798))

(declare-fun m!7942192 () Bool)

(assert (=> bs!1908208 m!7942192))

(assert (=> b!7258611 d!2257798))

(declare-fun d!2257800 () Bool)

(declare-fun lt!2589508 () Bool)

(assert (=> d!2257800 (= lt!2589508 (exists!4435 (toList!11507 lt!2589338) lambda!445937))))

(declare-fun choose!56182 ((Set Context!15236) Int) Bool)

(assert (=> d!2257800 (= lt!2589508 (choose!56182 lt!2589338 lambda!445937))))

(assert (=> d!2257800 (= (exists!4434 lt!2589338 lambda!445937) lt!2589508)))

(declare-fun bs!1908209 () Bool)

(assert (= bs!1908209 d!2257800))

(assert (=> bs!1908209 m!7941858))

(assert (=> bs!1908209 m!7941858))

(declare-fun m!7942194 () Bool)

(assert (=> bs!1908209 m!7942194))

(declare-fun m!7942196 () Bool)

(assert (=> bs!1908209 m!7942196))

(assert (=> b!7258612 d!2257800))

(declare-fun bs!1908210 () Bool)

(declare-fun d!2257802 () Bool)

(assert (= bs!1908210 (and d!2257802 b!7258620)))

(declare-fun lambda!445994 () Int)

(assert (=> bs!1908210 (= (= lt!2589344 (t!384678 s1!1971)) (= lambda!445994 lambda!445935))))

(declare-fun bs!1908211 () Bool)

(assert (= bs!1908211 (and d!2257802 b!7258621)))

(assert (=> bs!1908211 (= lambda!445994 lambda!445937)))

(assert (=> d!2257802 true))

(assert (=> d!2257802 (matchZipper!3588 (content!14669 lt!2589354) lt!2589344)))

(declare-fun lt!2589511 () Unit!163980)

(declare-fun choose!56183 (List!70616 List!70614) Unit!163980)

(assert (=> d!2257802 (= lt!2589511 (choose!56183 lt!2589354 lt!2589344))))

(assert (=> d!2257802 (exists!4435 lt!2589354 lambda!445994)))

(assert (=> d!2257802 (= (lemmaExistsMatchingContextThenMatchingString!87 lt!2589354 lt!2589344) lt!2589511)))

(declare-fun bs!1908212 () Bool)

(assert (= bs!1908212 d!2257802))

(assert (=> bs!1908212 m!7941842))

(assert (=> bs!1908212 m!7941842))

(assert (=> bs!1908212 m!7941856))

(declare-fun m!7942198 () Bool)

(assert (=> bs!1908212 m!7942198))

(declare-fun m!7942200 () Bool)

(assert (=> bs!1908212 m!7942200))

(assert (=> b!7258621 d!2257802))

(declare-fun d!2257804 () Bool)

(declare-fun choose!56184 ((Set Context!15236) Int) (Set Context!15236))

(assert (=> d!2257804 (= (flatMap!2843 lt!2589339 lambda!445936) (choose!56184 lt!2589339 lambda!445936))))

(declare-fun bs!1908213 () Bool)

(assert (= bs!1908213 d!2257804))

(declare-fun m!7942202 () Bool)

(assert (=> bs!1908213 m!7942202))

(assert (=> b!7258621 d!2257804))

(assert (=> b!7258621 d!2257800))

(declare-fun b!7258811 () Bool)

(declare-fun e!4352652 () Bool)

(assert (=> b!7258811 (= e!4352652 (nullable!7938 (regOne!37868 (h!76939 (exprs!8118 ct1!232)))))))

(declare-fun b!7258812 () Bool)

(declare-fun c!1350136 () Bool)

(assert (=> b!7258812 (= c!1350136 e!4352652)))

(declare-fun res!2943391 () Bool)

(assert (=> b!7258812 (=> (not res!2943391) (not e!4352652))))

(assert (=> b!7258812 (= res!2943391 (is-Concat!27523 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun e!4352654 () (Set Context!15236))

(declare-fun e!4352653 () (Set Context!15236))

(assert (=> b!7258812 (= e!4352654 e!4352653)))

(declare-fun b!7258813 () Bool)

(declare-fun e!4352651 () (Set Context!15236))

(declare-fun call!661585 () (Set Context!15236))

(assert (=> b!7258813 (= e!4352651 call!661585)))

(declare-fun bm!661576 () Bool)

(declare-fun call!661583 () List!70615)

(declare-fun call!661584 () List!70615)

(assert (=> bm!661576 (= call!661583 call!661584)))

(declare-fun b!7258814 () Bool)

(declare-fun e!4352649 () (Set Context!15236))

(assert (=> b!7258814 (= e!4352649 e!4352654)))

(declare-fun c!1350138 () Bool)

(assert (=> b!7258814 (= c!1350138 (is-Union!18678 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun bm!661577 () Bool)

(declare-fun c!1350139 () Bool)

(assert (=> bm!661577 (= call!661584 ($colon$colon!2936 (exprs!8118 lt!2589337) (ite (or c!1350136 c!1350139) (regTwo!37868 (h!76939 (exprs!8118 ct1!232))) (h!76939 (exprs!8118 ct1!232)))))))

(declare-fun call!661586 () (Set Context!15236))

(declare-fun bm!661578 () Bool)

(assert (=> bm!661578 (= call!661586 (derivationStepZipperDown!2672 (ite c!1350138 (regOne!37869 (h!76939 (exprs!8118 ct1!232))) (regOne!37868 (h!76939 (exprs!8118 ct1!232)))) (ite c!1350138 lt!2589337 (Context!15237 call!661584)) (h!76938 s1!1971)))))

(declare-fun b!7258815 () Bool)

(declare-fun call!661582 () (Set Context!15236))

(assert (=> b!7258815 (= e!4352653 (set.union call!661586 call!661582))))

(declare-fun b!7258816 () Bool)

(assert (=> b!7258816 (= e!4352649 (set.insert lt!2589337 (as set.empty (Set Context!15236))))))

(declare-fun call!661581 () (Set Context!15236))

(declare-fun bm!661579 () Bool)

(assert (=> bm!661579 (= call!661581 (derivationStepZipperDown!2672 (ite c!1350138 (regTwo!37869 (h!76939 (exprs!8118 ct1!232))) (ite c!1350136 (regTwo!37868 (h!76939 (exprs!8118 ct1!232))) (ite c!1350139 (regOne!37868 (h!76939 (exprs!8118 ct1!232))) (reg!19007 (h!76939 (exprs!8118 ct1!232)))))) (ite (or c!1350138 c!1350136) lt!2589337 (Context!15237 call!661583)) (h!76938 s1!1971)))))

(declare-fun d!2257806 () Bool)

(declare-fun c!1350137 () Bool)

(assert (=> d!2257806 (= c!1350137 (and (is-ElementMatch!18678 (h!76939 (exprs!8118 ct1!232))) (= (c!1350066 (h!76939 (exprs!8118 ct1!232))) (h!76938 s1!1971))))))

(assert (=> d!2257806 (= (derivationStepZipperDown!2672 (h!76939 (exprs!8118 ct1!232)) lt!2589337 (h!76938 s1!1971)) e!4352649)))

(declare-fun b!7258817 () Bool)

(assert (=> b!7258817 (= e!4352653 e!4352651)))

(assert (=> b!7258817 (= c!1350139 (is-Concat!27523 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun bm!661580 () Bool)

(assert (=> bm!661580 (= call!661582 call!661581)))

(declare-fun b!7258818 () Bool)

(declare-fun e!4352650 () (Set Context!15236))

(assert (=> b!7258818 (= e!4352650 (as set.empty (Set Context!15236)))))

(declare-fun b!7258819 () Bool)

(assert (=> b!7258819 (= e!4352650 call!661585)))

(declare-fun bm!661581 () Bool)

(assert (=> bm!661581 (= call!661585 call!661582)))

(declare-fun b!7258820 () Bool)

(assert (=> b!7258820 (= e!4352654 (set.union call!661586 call!661581))))

(declare-fun b!7258821 () Bool)

(declare-fun c!1350140 () Bool)

(assert (=> b!7258821 (= c!1350140 (is-Star!18678 (h!76939 (exprs!8118 ct1!232))))))

(assert (=> b!7258821 (= e!4352651 e!4352650)))

(assert (= (and d!2257806 c!1350137) b!7258816))

(assert (= (and d!2257806 (not c!1350137)) b!7258814))

(assert (= (and b!7258814 c!1350138) b!7258820))

(assert (= (and b!7258814 (not c!1350138)) b!7258812))

(assert (= (and b!7258812 res!2943391) b!7258811))

(assert (= (and b!7258812 c!1350136) b!7258815))

(assert (= (and b!7258812 (not c!1350136)) b!7258817))

(assert (= (and b!7258817 c!1350139) b!7258813))

(assert (= (and b!7258817 (not c!1350139)) b!7258821))

(assert (= (and b!7258821 c!1350140) b!7258819))

(assert (= (and b!7258821 (not c!1350140)) b!7258818))

(assert (= (or b!7258813 b!7258819) bm!661576))

(assert (= (or b!7258813 b!7258819) bm!661581))

(assert (= (or b!7258815 bm!661576) bm!661577))

(assert (= (or b!7258815 bm!661581) bm!661580))

(assert (= (or b!7258820 bm!661580) bm!661579))

(assert (= (or b!7258820 b!7258815) bm!661578))

(declare-fun m!7942204 () Bool)

(assert (=> bm!661579 m!7942204))

(assert (=> b!7258811 m!7942088))

(declare-fun m!7942206 () Bool)

(assert (=> b!7258816 m!7942206))

(declare-fun m!7942208 () Bool)

(assert (=> bm!661578 m!7942208))

(declare-fun m!7942210 () Bool)

(assert (=> bm!661577 m!7942210))

(assert (=> b!7258621 d!2257806))

(assert (=> b!7258621 d!2257764))

(declare-fun d!2257808 () Bool)

(declare-fun e!4352657 () Bool)

(assert (=> d!2257808 e!4352657))

(declare-fun res!2943394 () Bool)

(assert (=> d!2257808 (=> (not res!2943394) (not e!4352657))))

(declare-fun lt!2589514 () List!70616)

(declare-fun noDuplicate!3009 (List!70616) Bool)

(assert (=> d!2257808 (= res!2943394 (noDuplicate!3009 lt!2589514))))

(declare-fun choose!56185 ((Set Context!15236)) List!70616)

(assert (=> d!2257808 (= lt!2589514 (choose!56185 lt!2589338))))

(assert (=> d!2257808 (= (toList!11507 lt!2589338) lt!2589514)))

(declare-fun b!7258824 () Bool)

(assert (=> b!7258824 (= e!4352657 (= (content!14669 lt!2589514) lt!2589338))))

(assert (= (and d!2257808 res!2943394) b!7258824))

(declare-fun m!7942212 () Bool)

(assert (=> d!2257808 m!7942212))

(declare-fun m!7942214 () Bool)

(assert (=> d!2257808 m!7942214))

(declare-fun m!7942216 () Bool)

(assert (=> b!7258824 m!7942216))

(assert (=> b!7258621 d!2257808))

(assert (=> b!7258621 d!2257768))

(declare-fun d!2257810 () Bool)

(assert (=> d!2257810 (= (flatMap!2843 lt!2589332 lambda!445936) (choose!56184 lt!2589332 lambda!445936))))

(declare-fun bs!1908214 () Bool)

(assert (= bs!1908214 d!2257810))

(declare-fun m!7942218 () Bool)

(assert (=> bs!1908214 m!7942218))

(assert (=> b!7258621 d!2257810))

(declare-fun d!2257812 () Bool)

(assert (=> d!2257812 (exists!4434 lt!2589338 lambda!445937)))

(declare-fun lt!2589517 () Unit!163980)

(declare-fun choose!56186 ((Set Context!15236) Context!15236 Int) Unit!163980)

(assert (=> d!2257812 (= lt!2589517 (choose!56186 lt!2589338 lt!2589326 lambda!445937))))

(assert (=> d!2257812 (set.member lt!2589326 lt!2589338)))

(assert (=> d!2257812 (= (lemmaContainsThenExists!226 lt!2589338 lt!2589326 lambda!445937) lt!2589517)))

(declare-fun bs!1908215 () Bool)

(assert (= bs!1908215 d!2257812))

(assert (=> bs!1908215 m!7941782))

(declare-fun m!7942220 () Bool)

(assert (=> bs!1908215 m!7942220))

(assert (=> bs!1908215 m!7941834))

(assert (=> b!7258621 d!2257812))

(declare-fun d!2257814 () Bool)

(declare-fun dynLambda!28807 (Int Context!15236) (Set Context!15236))

(assert (=> d!2257814 (= (flatMap!2843 lt!2589332 lambda!445936) (dynLambda!28807 lambda!445936 ct1!232))))

(declare-fun lt!2589520 () Unit!163980)

(declare-fun choose!56187 ((Set Context!15236) Context!15236 Int) Unit!163980)

(assert (=> d!2257814 (= lt!2589520 (choose!56187 lt!2589332 ct1!232 lambda!445936))))

(assert (=> d!2257814 (= lt!2589332 (set.insert ct1!232 (as set.empty (Set Context!15236))))))

(assert (=> d!2257814 (= (lemmaFlatMapOnSingletonSet!2247 lt!2589332 ct1!232 lambda!445936) lt!2589520)))

(declare-fun b_lambda!279131 () Bool)

(assert (=> (not b_lambda!279131) (not d!2257814)))

(declare-fun bs!1908216 () Bool)

(assert (= bs!1908216 d!2257814))

(assert (=> bs!1908216 m!7941864))

(declare-fun m!7942222 () Bool)

(assert (=> bs!1908216 m!7942222))

(declare-fun m!7942224 () Bool)

(assert (=> bs!1908216 m!7942224))

(assert (=> bs!1908216 m!7941766))

(assert (=> b!7258621 d!2257814))

(declare-fun d!2257816 () Bool)

(declare-fun nullableFct!3121 (Regex!18678) Bool)

(assert (=> d!2257816 (= (nullable!7938 (h!76939 (exprs!8118 ct1!232))) (nullableFct!3121 (h!76939 (exprs!8118 ct1!232))))))

(declare-fun bs!1908217 () Bool)

(assert (= bs!1908217 d!2257816))

(declare-fun m!7942226 () Bool)

(assert (=> bs!1908217 m!7942226))

(assert (=> b!7258621 d!2257816))

(declare-fun bs!1908218 () Bool)

(declare-fun d!2257818 () Bool)

(assert (= bs!1908218 (and d!2257818 b!7258614)))

(declare-fun lambda!445999 () Int)

(assert (=> bs!1908218 (= lambda!445999 lambda!445934)))

(declare-fun bs!1908219 () Bool)

(assert (= bs!1908219 (and d!2257818 d!2257746)))

(assert (=> bs!1908219 (= lambda!445999 lambda!445984)))

(declare-fun bs!1908220 () Bool)

(assert (= bs!1908220 (and d!2257818 d!2257790)))

(assert (=> bs!1908220 (= lambda!445999 lambda!445987)))

(declare-fun bs!1908221 () Bool)

(assert (= bs!1908221 (and d!2257818 d!2257792)))

(assert (=> bs!1908221 (= lambda!445999 lambda!445988)))

(assert (=> d!2257818 (set.member (Context!15237 (++!16618 (exprs!8118 lt!2589333) (exprs!8118 ct2!328))) (derivationStepZipperUp!2502 (Context!15237 (++!16618 (exprs!8118 ct1!232) (exprs!8118 ct2!328))) (h!76938 s1!1971)))))

(declare-fun lt!2589529 () Unit!163980)

(assert (=> d!2257818 (= lt!2589529 (lemmaConcatPreservesForall!1485 (exprs!8118 ct1!232) (exprs!8118 ct2!328) lambda!445999))))

(declare-fun lt!2589528 () Unit!163980)

(assert (=> d!2257818 (= lt!2589528 (lemmaConcatPreservesForall!1485 (exprs!8118 lt!2589333) (exprs!8118 ct2!328) lambda!445999))))

(declare-fun lt!2589527 () Unit!163980)

(declare-fun choose!56188 (Context!15236 Context!15236 Context!15236 C!37630) Unit!163980)

(assert (=> d!2257818 (= lt!2589527 (choose!56188 ct1!232 ct2!328 lt!2589333 (h!76938 s1!1971)))))

(assert (=> d!2257818 (set.member lt!2589333 (derivationStepZipperUp!2502 ct1!232 (h!76938 s1!1971)))))

(assert (=> d!2257818 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!33 ct1!232 ct2!328 lt!2589333 (h!76938 s1!1971)) lt!2589527)))

(declare-fun bs!1908222 () Bool)

(assert (= bs!1908222 d!2257818))

(declare-fun m!7942228 () Bool)

(assert (=> bs!1908222 m!7942228))

(assert (=> bs!1908222 m!7941774))

(declare-fun m!7942230 () Bool)

(assert (=> bs!1908222 m!7942230))

(declare-fun m!7942232 () Bool)

(assert (=> bs!1908222 m!7942232))

(assert (=> bs!1908222 m!7941810))

(declare-fun m!7942234 () Bool)

(assert (=> bs!1908222 m!7942234))

(declare-fun m!7942236 () Bool)

(assert (=> bs!1908222 m!7942236))

(assert (=> bs!1908222 m!7941802))

(declare-fun m!7942238 () Bool)

(assert (=> bs!1908222 m!7942238))

(assert (=> b!7258621 d!2257818))

(declare-fun bs!1908223 () Bool)

(declare-fun d!2257820 () Bool)

(assert (= bs!1908223 (and d!2257820 d!2257818)))

(declare-fun lambda!446000 () Int)

(assert (=> bs!1908223 (= lambda!446000 lambda!445999)))

(declare-fun bs!1908224 () Bool)

(assert (= bs!1908224 (and d!2257820 d!2257746)))

(assert (=> bs!1908224 (= lambda!446000 lambda!445984)))

(declare-fun bs!1908225 () Bool)

(assert (= bs!1908225 (and d!2257820 d!2257790)))

(assert (=> bs!1908225 (= lambda!446000 lambda!445987)))

(declare-fun bs!1908226 () Bool)

(assert (= bs!1908226 (and d!2257820 d!2257792)))

(assert (=> bs!1908226 (= lambda!446000 lambda!445988)))

(declare-fun bs!1908227 () Bool)

(assert (= bs!1908227 (and d!2257820 b!7258614)))

(assert (=> bs!1908227 (= lambda!446000 lambda!445934)))

(assert (=> d!2257820 (= (inv!89706 lt!2589319) (forall!17533 (exprs!8118 lt!2589319) lambda!446000))))

(declare-fun bs!1908228 () Bool)

(assert (= bs!1908228 d!2257820))

(declare-fun m!7942240 () Bool)

(assert (=> bs!1908228 m!7942240))

(assert (=> b!7258621 d!2257820))

(declare-fun d!2257822 () Bool)

(declare-fun e!4352660 () Bool)

(assert (=> d!2257822 e!4352660))

(declare-fun res!2943396 () Bool)

(assert (=> d!2257822 (=> (not res!2943396) (not e!4352660))))

(declare-fun lt!2589530 () List!70614)

(assert (=> d!2257822 (= res!2943396 (= (content!14671 lt!2589530) (set.union (content!14671 s1!1971) (content!14671 s2!1849))))))

(declare-fun e!4352659 () List!70614)

(assert (=> d!2257822 (= lt!2589530 e!4352659)))

(declare-fun c!1350142 () Bool)

(assert (=> d!2257822 (= c!1350142 (is-Nil!70490 s1!1971))))

(assert (=> d!2257822 (= (++!16619 s1!1971 s2!1849) lt!2589530)))

(declare-fun b!7258827 () Bool)

(declare-fun res!2943395 () Bool)

(assert (=> b!7258827 (=> (not res!2943395) (not e!4352660))))

(assert (=> b!7258827 (= res!2943395 (= (size!41756 lt!2589530) (+ (size!41756 s1!1971) (size!41756 s2!1849))))))

(declare-fun b!7258826 () Bool)

(assert (=> b!7258826 (= e!4352659 (Cons!70490 (h!76938 s1!1971) (++!16619 (t!384678 s1!1971) s2!1849)))))

(declare-fun b!7258825 () Bool)

(assert (=> b!7258825 (= e!4352659 s2!1849)))

(declare-fun b!7258828 () Bool)

(assert (=> b!7258828 (= e!4352660 (or (not (= s2!1849 Nil!70490)) (= lt!2589530 s1!1971)))))

(assert (= (and d!2257822 c!1350142) b!7258825))

(assert (= (and d!2257822 (not c!1350142)) b!7258826))

(assert (= (and d!2257822 res!2943396) b!7258827))

(assert (= (and b!7258827 res!2943395) b!7258828))

(declare-fun m!7942242 () Bool)

(assert (=> d!2257822 m!7942242))

(declare-fun m!7942244 () Bool)

(assert (=> d!2257822 m!7942244))

(assert (=> d!2257822 m!7942052))

(declare-fun m!7942246 () Bool)

(assert (=> b!7258827 m!7942246))

(declare-fun m!7942248 () Bool)

(assert (=> b!7258827 m!7942248))

(assert (=> b!7258827 m!7942058))

(assert (=> b!7258826 m!7941804))

(assert (=> b!7258621 d!2257822))

(declare-fun d!2257824 () Bool)

(declare-fun c!1350145 () Bool)

(assert (=> d!2257824 (= c!1350145 (is-Nil!70492 lt!2589354))))

(declare-fun e!4352663 () (Set Context!15236))

(assert (=> d!2257824 (= (content!14669 lt!2589354) e!4352663)))

(declare-fun b!7258833 () Bool)

(assert (=> b!7258833 (= e!4352663 (as set.empty (Set Context!15236)))))

(declare-fun b!7258834 () Bool)

(assert (=> b!7258834 (= e!4352663 (set.union (set.insert (h!76940 lt!2589354) (as set.empty (Set Context!15236))) (content!14669 (t!384680 lt!2589354))))))

(assert (= (and d!2257824 c!1350145) b!7258833))

(assert (= (and d!2257824 (not c!1350145)) b!7258834))

(declare-fun m!7942250 () Bool)

(assert (=> b!7258834 m!7942250))

(declare-fun m!7942252 () Bool)

(assert (=> b!7258834 m!7942252))

(assert (=> b!7258621 d!2257824))

(assert (=> b!7258621 d!2257754))

(declare-fun d!2257826 () Bool)

(assert (=> d!2257826 (= (tail!14380 lt!2589343) (t!384679 lt!2589343))))

(assert (=> b!7258621 d!2257826))

(assert (=> b!7258621 d!2257758))

(declare-fun d!2257828 () Bool)

(assert (=> d!2257828 (= (tail!14381 (++!16619 s1!1971 s2!1849)) (t!384678 (++!16619 s1!1971 s2!1849)))))

(assert (=> b!7258621 d!2257828))

(declare-fun d!2257830 () Bool)

(assert (=> d!2257830 (= (flatMap!2843 lt!2589339 lambda!445936) (dynLambda!28807 lambda!445936 lt!2589319))))

(declare-fun lt!2589531 () Unit!163980)

(assert (=> d!2257830 (= lt!2589531 (choose!56187 lt!2589339 lt!2589319 lambda!445936))))

(assert (=> d!2257830 (= lt!2589339 (set.insert lt!2589319 (as set.empty (Set Context!15236))))))

(assert (=> d!2257830 (= (lemmaFlatMapOnSingletonSet!2247 lt!2589339 lt!2589319 lambda!445936) lt!2589531)))

(declare-fun b_lambda!279133 () Bool)

(assert (=> (not b_lambda!279133) (not d!2257830)))

(declare-fun bs!1908229 () Bool)

(assert (= bs!1908229 d!2257830))

(assert (=> bs!1908229 m!7941844))

(declare-fun m!7942254 () Bool)

(assert (=> bs!1908229 m!7942254))

(declare-fun m!7942256 () Bool)

(assert (=> bs!1908229 m!7942256))

(assert (=> bs!1908229 m!7941772))

(assert (=> b!7258621 d!2257830))

(declare-fun d!2257832 () Bool)

(declare-fun c!1350146 () Bool)

(assert (=> d!2257832 (= c!1350146 (isEmpty!40594 lt!2589344))))

(declare-fun e!4352664 () Bool)

(assert (=> d!2257832 (= (matchZipper!3588 (content!14669 lt!2589354) lt!2589344) e!4352664)))

(declare-fun b!7258835 () Bool)

(assert (=> b!7258835 (= e!4352664 (nullableZipper!2934 (content!14669 lt!2589354)))))

(declare-fun b!7258836 () Bool)

(assert (=> b!7258836 (= e!4352664 (matchZipper!3588 (derivationStepZipper!3456 (content!14669 lt!2589354) (head!14931 lt!2589344)) (tail!14381 lt!2589344)))))

(assert (= (and d!2257832 c!1350146) b!7258835))

(assert (= (and d!2257832 (not c!1350146)) b!7258836))

(assert (=> d!2257832 m!7942000))

(assert (=> b!7258835 m!7941842))

(declare-fun m!7942258 () Bool)

(assert (=> b!7258835 m!7942258))

(assert (=> b!7258836 m!7942004))

(assert (=> b!7258836 m!7941842))

(assert (=> b!7258836 m!7942004))

(declare-fun m!7942260 () Bool)

(assert (=> b!7258836 m!7942260))

(assert (=> b!7258836 m!7942008))

(assert (=> b!7258836 m!7942260))

(assert (=> b!7258836 m!7942008))

(declare-fun m!7942262 () Bool)

(assert (=> b!7258836 m!7942262))

(assert (=> b!7258621 d!2257832))

(declare-fun d!2257834 () Bool)

(declare-fun c!1350147 () Bool)

(assert (=> d!2257834 (= c!1350147 (isEmpty!40594 (t!384678 s1!1971)))))

(declare-fun e!4352665 () Bool)

(assert (=> d!2257834 (= (matchZipper!3588 lt!2589321 (t!384678 s1!1971)) e!4352665)))

(declare-fun b!7258837 () Bool)

(assert (=> b!7258837 (= e!4352665 (nullableZipper!2934 lt!2589321))))

(declare-fun b!7258838 () Bool)

(assert (=> b!7258838 (= e!4352665 (matchZipper!3588 (derivationStepZipper!3456 lt!2589321 (head!14931 (t!384678 s1!1971))) (tail!14381 (t!384678 s1!1971))))))

(assert (= (and d!2257834 c!1350147) b!7258837))

(assert (= (and d!2257834 (not c!1350147)) b!7258838))

(assert (=> d!2257834 m!7942130))

(declare-fun m!7942264 () Bool)

(assert (=> b!7258837 m!7942264))

(assert (=> b!7258838 m!7942134))

(assert (=> b!7258838 m!7942134))

(declare-fun m!7942266 () Bool)

(assert (=> b!7258838 m!7942266))

(assert (=> b!7258838 m!7942138))

(assert (=> b!7258838 m!7942266))

(assert (=> b!7258838 m!7942138))

(declare-fun m!7942268 () Bool)

(assert (=> b!7258838 m!7942268))

(assert (=> b!7258619 d!2257834))

(declare-fun bs!1908230 () Bool)

(declare-fun d!2257836 () Bool)

(assert (= bs!1908230 (and d!2257836 b!7258620)))

(declare-fun lambda!446003 () Int)

(assert (=> bs!1908230 (= lambda!446003 lambda!445935)))

(declare-fun bs!1908231 () Bool)

(assert (= bs!1908231 (and d!2257836 b!7258621)))

(assert (=> bs!1908231 (= (= (t!384678 s1!1971) lt!2589344) (= lambda!446003 lambda!445937))))

(declare-fun bs!1908232 () Bool)

(assert (= bs!1908232 (and d!2257836 d!2257802)))

(assert (=> bs!1908232 (= (= (t!384678 s1!1971) lt!2589344) (= lambda!446003 lambda!445994))))

(assert (=> d!2257836 true))

(assert (=> d!2257836 (exists!4435 lt!2589352 lambda!446003)))

(declare-fun lt!2589534 () Unit!163980)

(declare-fun choose!56189 (List!70616 List!70614) Unit!163980)

(assert (=> d!2257836 (= lt!2589534 (choose!56189 lt!2589352 (t!384678 s1!1971)))))

(assert (=> d!2257836 (matchZipper!3588 (content!14669 lt!2589352) (t!384678 s1!1971))))

(assert (=> d!2257836 (= (lemmaZipperMatchesExistsMatchingContext!781 lt!2589352 (t!384678 s1!1971)) lt!2589534)))

(declare-fun bs!1908233 () Bool)

(assert (= bs!1908233 d!2257836))

(declare-fun m!7942270 () Bool)

(assert (=> bs!1908233 m!7942270))

(declare-fun m!7942272 () Bool)

(assert (=> bs!1908233 m!7942272))

(declare-fun m!7942274 () Bool)

(assert (=> bs!1908233 m!7942274))

(assert (=> bs!1908233 m!7942274))

(declare-fun m!7942276 () Bool)

(assert (=> bs!1908233 m!7942276))

(assert (=> b!7258620 d!2257836))

(declare-fun bs!1908234 () Bool)

(declare-fun d!2257838 () Bool)

(assert (= bs!1908234 (and d!2257838 b!7258621)))

(declare-fun lambda!446004 () Int)

(assert (=> bs!1908234 (= lambda!446004 lambda!445936)))

(declare-fun bs!1908235 () Bool)

(assert (= bs!1908235 (and d!2257838 d!2257798)))

(assert (=> bs!1908235 (= lambda!446004 lambda!445991)))

(assert (=> d!2257838 true))

(assert (=> d!2257838 (= (derivationStepZipper!3456 lt!2589339 (h!76938 s1!1971)) (flatMap!2843 lt!2589339 lambda!446004))))

(declare-fun bs!1908236 () Bool)

(assert (= bs!1908236 d!2257838))

(declare-fun m!7942278 () Bool)

(assert (=> bs!1908236 m!7942278))

(assert (=> b!7258620 d!2257838))

(declare-fun d!2257840 () Bool)

(declare-fun e!4352666 () Bool)

(assert (=> d!2257840 e!4352666))

(declare-fun res!2943397 () Bool)

(assert (=> d!2257840 (=> (not res!2943397) (not e!4352666))))

(declare-fun lt!2589535 () List!70616)

(assert (=> d!2257840 (= res!2943397 (noDuplicate!3009 lt!2589535))))

(assert (=> d!2257840 (= lt!2589535 (choose!56185 lt!2589335))))

(assert (=> d!2257840 (= (toList!11507 lt!2589335) lt!2589535)))

(declare-fun b!7258839 () Bool)

(assert (=> b!7258839 (= e!4352666 (= (content!14669 lt!2589535) lt!2589335))))

(assert (= (and d!2257840 res!2943397) b!7258839))

(declare-fun m!7942280 () Bool)

(assert (=> d!2257840 m!7942280))

(declare-fun m!7942282 () Bool)

(assert (=> d!2257840 m!7942282))

(declare-fun m!7942284 () Bool)

(assert (=> b!7258839 m!7942284))

(assert (=> b!7258620 d!2257840))

(declare-fun d!2257842 () Bool)

(declare-fun lt!2589536 () Bool)

(assert (=> d!2257842 (= lt!2589536 (exists!4435 (toList!11507 lt!2589335) lambda!445935))))

(assert (=> d!2257842 (= lt!2589536 (choose!56182 lt!2589335 lambda!445935))))

(assert (=> d!2257842 (= (exists!4434 lt!2589335 lambda!445935) lt!2589536)))

(declare-fun bs!1908237 () Bool)

(assert (= bs!1908237 d!2257842))

(assert (=> bs!1908237 m!7941872))

(assert (=> bs!1908237 m!7941872))

(declare-fun m!7942286 () Bool)

(assert (=> bs!1908237 m!7942286))

(declare-fun m!7942288 () Bool)

(assert (=> bs!1908237 m!7942288))

(assert (=> b!7258620 d!2257842))

(declare-fun bs!1908238 () Bool)

(declare-fun d!2257844 () Bool)

(assert (= bs!1908238 (and d!2257844 b!7258620)))

(declare-fun lambda!446007 () Int)

(assert (=> bs!1908238 (not (= lambda!446007 lambda!445935))))

(declare-fun bs!1908239 () Bool)

(assert (= bs!1908239 (and d!2257844 b!7258621)))

(assert (=> bs!1908239 (not (= lambda!446007 lambda!445937))))

(declare-fun bs!1908240 () Bool)

(assert (= bs!1908240 (and d!2257844 d!2257802)))

(assert (=> bs!1908240 (not (= lambda!446007 lambda!445994))))

(declare-fun bs!1908241 () Bool)

(assert (= bs!1908241 (and d!2257844 d!2257836)))

(assert (=> bs!1908241 (not (= lambda!446007 lambda!446003))))

(assert (=> d!2257844 true))

(declare-fun order!29029 () Int)

(declare-fun dynLambda!28808 (Int Int) Int)

(assert (=> d!2257844 (< (dynLambda!28808 order!29029 lambda!445935) (dynLambda!28808 order!29029 lambda!446007))))

(declare-fun forall!17534 (List!70616 Int) Bool)

(assert (=> d!2257844 (= (exists!4435 lt!2589352 lambda!445935) (not (forall!17534 lt!2589352 lambda!446007)))))

(declare-fun bs!1908242 () Bool)

(assert (= bs!1908242 d!2257844))

(declare-fun m!7942290 () Bool)

(assert (=> bs!1908242 m!7942290))

(assert (=> b!7258620 d!2257844))

(declare-fun b!7258846 () Bool)

(declare-fun e!4352669 () Bool)

(declare-fun tp!2038535 () Bool)

(declare-fun tp!2038536 () Bool)

(assert (=> b!7258846 (= e!4352669 (and tp!2038535 tp!2038536))))

(assert (=> b!7258625 (= tp!2038516 e!4352669)))

(assert (= (and b!7258625 (is-Cons!70491 (exprs!8118 ct2!328))) b!7258846))

(declare-fun b!7258851 () Bool)

(declare-fun e!4352672 () Bool)

(declare-fun tp!2038539 () Bool)

(assert (=> b!7258851 (= e!4352672 (and tp_is_empty!46821 tp!2038539))))

(assert (=> b!7258618 (= tp!2038517 e!4352672)))

(assert (= (and b!7258618 (is-Cons!70490 (t!384678 s1!1971))) b!7258851))

(declare-fun b!7258852 () Bool)

(declare-fun e!4352673 () Bool)

(declare-fun tp!2038540 () Bool)

(assert (=> b!7258852 (= e!4352673 (and tp_is_empty!46821 tp!2038540))))

(assert (=> b!7258623 (= tp!2038518 e!4352673)))

(assert (= (and b!7258623 (is-Cons!70490 (t!384678 s2!1849))) b!7258852))

(declare-fun b!7258853 () Bool)

(declare-fun e!4352674 () Bool)

(declare-fun tp!2038541 () Bool)

(declare-fun tp!2038542 () Bool)

(assert (=> b!7258853 (= e!4352674 (and tp!2038541 tp!2038542))))

(assert (=> b!7258613 (= tp!2038515 e!4352674)))

(assert (= (and b!7258613 (is-Cons!70491 (exprs!8118 ct1!232))) b!7258853))

(declare-fun b_lambda!279135 () Bool)

(assert (= b_lambda!279129 (or b!7258620 b_lambda!279135)))

(declare-fun bs!1908243 () Bool)

(declare-fun d!2257846 () Bool)

(assert (= bs!1908243 (and d!2257846 b!7258620)))

(assert (=> bs!1908243 (= (dynLambda!28806 lambda!445935 lt!2589484) (matchZipper!3588 (set.insert lt!2589484 (as set.empty (Set Context!15236))) (t!384678 s1!1971)))))

(declare-fun m!7942292 () Bool)

(assert (=> bs!1908243 m!7942292))

(assert (=> bs!1908243 m!7942292))

(declare-fun m!7942294 () Bool)

(assert (=> bs!1908243 m!7942294))

(assert (=> d!2257744 d!2257846))

(declare-fun b_lambda!279137 () Bool)

(assert (= b_lambda!279131 (or b!7258621 b_lambda!279137)))

(declare-fun bs!1908244 () Bool)

(declare-fun d!2257848 () Bool)

(assert (= bs!1908244 (and d!2257848 b!7258621)))

(assert (=> bs!1908244 (= (dynLambda!28807 lambda!445936 ct1!232) (derivationStepZipperUp!2502 ct1!232 (h!76938 s1!1971)))))

(assert (=> bs!1908244 m!7941802))

(assert (=> d!2257814 d!2257848))

(declare-fun b_lambda!279139 () Bool)

(assert (= b_lambda!279133 (or b!7258621 b_lambda!279139)))

(declare-fun bs!1908245 () Bool)

(declare-fun d!2257850 () Bool)

(assert (= bs!1908245 (and d!2257850 b!7258621)))

(assert (=> bs!1908245 (= (dynLambda!28807 lambda!445936 lt!2589319) (derivationStepZipperUp!2502 lt!2589319 (h!76938 s1!1971)))))

(assert (=> bs!1908245 m!7941794))

(assert (=> d!2257830 d!2257850))

(push 1)

(assert (not b!7258795))

(assert (not d!2257834))

(assert (not b!7258836))

(assert (not d!2257764))

(assert (not b!7258723))

(assert (not bm!661577))

(assert (not b!7258710))

(assert (not bm!661573))

(assert (not b!7258791))

(assert (not d!2257820))

(assert (not d!2257840))

(assert (not b!7258788))

(assert (not b!7258776))

(assert (not d!2257816))

(assert (not d!2257832))

(assert (not b!7258838))

(assert (not b!7258736))

(assert (not b!7258796))

(assert (not b!7258698))

(assert (not b_lambda!279139))

(assert (not b!7258778))

(assert (not b!7258699))

(assert (not d!2257822))

(assert (not d!2257842))

(assert (not b!7258794))

(assert (not d!2257798))

(assert (not d!2257744))

(assert (not d!2257790))

(assert (not b!7258827))

(assert (not d!2257782))

(assert (not bm!661568))

(assert (not d!2257742))

(assert (not b!7258737))

(assert (not bm!661578))

(assert (not b!7258801))

(assert (not d!2257776))

(assert (not b!7258851))

(assert (not bs!1908244))

(assert (not d!2257796))

(assert (not d!2257756))

(assert (not b_lambda!279137))

(assert (not d!2257788))

(assert (not b!7258802))

(assert (not d!2257812))

(assert (not b!7258804))

(assert (not b!7258824))

(assert (not d!2257794))

(assert (not d!2257814))

(assert (not bm!661574))

(assert (not b!7258826))

(assert tp_is_empty!46821)

(assert (not b!7258797))

(assert (not b!7258786))

(assert (not b!7258806))

(assert (not b!7258853))

(assert (not b!7258789))

(assert (not b!7258837))

(assert (not d!2257800))

(assert (not b!7258834))

(assert (not d!2257830))

(assert (not d!2257808))

(assert (not b!7258692))

(assert (not b!7258835))

(assert (not b!7258839))

(assert (not b!7258761))

(assert (not b!7258846))

(assert (not d!2257804))

(assert (not d!2257780))

(assert (not b!7258691))

(assert (not d!2257752))

(assert (not bm!661579))

(assert (not b!7258693))

(assert (not d!2257758))

(assert (not d!2257770))

(assert (not d!2257838))

(assert (not bs!1908243))

(assert (not b!7258811))

(assert (not b!7258798))

(assert (not bm!661575))

(assert (not b!7258773))

(assert (not b!7258785))

(assert (not bs!1908245))

(assert (not b!7258726))

(assert (not d!2257818))

(assert (not b!7258709))

(assert (not d!2257786))

(assert (not d!2257750))

(assert (not b!7258803))

(assert (not b!7258808))

(assert (not b!7258779))

(assert (not bm!661570))

(assert (not bm!661554))

(assert (not d!2257784))

(assert (not b_lambda!279135))

(assert (not bm!661569))

(assert (not d!2257844))

(assert (not b!7258694))

(assert (not b!7258807))

(assert (not d!2257836))

(assert (not d!2257810))

(assert (not d!2257802))

(assert (not b!7258852))

(assert (not d!2257792))

(assert (not b!7258805))

(assert (not b!7258787))

(assert (not b!7258782))

(assert (not d!2257746))

(assert (not d!2257740))

(assert (not d!2257774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

