; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517164 () Bool)

(assert start!517164)

(declare-fun setIsEmpty!27536 () Bool)

(declare-fun setRes!27536 () Bool)

(assert (=> setIsEmpty!27536 setRes!27536))

(declare-fun b!4925351 () Bool)

(declare-fun e!3077536 () Bool)

(declare-fun tp!1383472 () Bool)

(assert (=> b!4925351 (= e!3077536 tp!1383472)))

(declare-datatypes ((C!26960 0))(
  ( (C!26961 (val!22814 Int)) )
))
(declare-datatypes ((List!56815 0))(
  ( (Nil!56691) (Cons!56691 (h!63139 C!26960) (t!367269 List!56815)) )
))
(declare-datatypes ((tuple2!61180 0))(
  ( (tuple2!61181 (_1!33893 List!56815) (_2!33893 List!56815)) )
))
(declare-fun lt!2026029 () tuple2!61180)

(declare-fun lt!2026032 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13375 0))(
  ( (ElementMatch!13375 (c!838721 C!26960)) (Concat!21948 (regOne!27262 Regex!13375) (regTwo!27262 Regex!13375)) (EmptyExpr!13375) (Star!13375 (reg!13704 Regex!13375)) (EmptyLang!13375) (Union!13375 (regOne!27263 Regex!13375) (regTwo!27263 Regex!13375)) )
))
(declare-datatypes ((List!56816 0))(
  ( (Nil!56692) (Cons!56692 (h!63140 Regex!13375) (t!367270 List!56816)) )
))
(declare-datatypes ((Context!6034 0))(
  ( (Context!6035 (exprs!3517 List!56816)) )
))
(declare-fun z!3559 () (InoxSet Context!6034))

(declare-fun lt!2026031 () List!56815)

(declare-fun findLongestMatchInnerZipper!60 ((InoxSet Context!6034) List!56815 Int List!56815 List!56815 Int) tuple2!61180)

(assert (=> start!517164 (= lt!2026029 (findLongestMatchInnerZipper!60 z!3559 Nil!56691 0 lt!2026031 lt!2026031 lt!2026032))))

(declare-fun lt!2026028 () List!56815)

(declare-datatypes ((IArray!29809 0))(
  ( (IArray!29810 (innerList!14962 List!56815)) )
))
(declare-datatypes ((Conc!14874 0))(
  ( (Node!14874 (left!41337 Conc!14874) (right!41667 Conc!14874) (csize!29978 Int) (cheight!15085 Int)) (Leaf!24744 (xs!18196 IArray!29809) (csize!29979 Int)) (Empty!14874) )
))
(declare-datatypes ((BalanceConc!29178 0))(
  ( (BalanceConc!29179 (c!838722 Conc!14874)) )
))
(declare-datatypes ((tuple2!61182 0))(
  ( (tuple2!61183 (_1!33894 BalanceConc!29178) (_2!33894 BalanceConc!29178)) )
))
(declare-fun lt!2026033 () tuple2!61182)

(declare-fun list!17953 (BalanceConc!29178) List!56815)

(assert (=> start!517164 (= lt!2026028 (list!17953 (_2!33894 lt!2026033)))))

(declare-fun lt!2026030 () List!56815)

(assert (=> start!517164 (= lt!2026030 (list!17953 (_1!33894 lt!2026033)))))

(declare-fun input!5492 () BalanceConc!29178)

(declare-fun splitAt!273 (BalanceConc!29178 Int) tuple2!61182)

(declare-fun findLongestMatchInnerZipperFast!87 ((InoxSet Context!6034) List!56815 Int List!56815 BalanceConc!29178 Int) Int)

(assert (=> start!517164 (= lt!2026033 (splitAt!273 input!5492 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)))))

(declare-fun size!37482 (BalanceConc!29178) Int)

(assert (=> start!517164 (= lt!2026032 (size!37482 input!5492))))

(assert (=> start!517164 (= lt!2026031 (list!17953 input!5492))))

(declare-fun ++!12326 (List!56815 List!56815) List!56815)

(assert (=> start!517164 (not (= (++!12326 lt!2026030 lt!2026028) (++!12326 (_1!33893 lt!2026029) (_2!33893 lt!2026029))))))

(declare-fun e!3077535 () Bool)

(declare-fun inv!73477 (BalanceConc!29178) Bool)

(assert (=> start!517164 (and (inv!73477 input!5492) e!3077535)))

(declare-fun condSetEmpty!27536 () Bool)

(assert (=> start!517164 (= condSetEmpty!27536 (= z!3559 ((as const (Array Context!6034 Bool)) false)))))

(assert (=> start!517164 setRes!27536))

(declare-fun b!4925350 () Bool)

(declare-fun tp!1383473 () Bool)

(declare-fun inv!73478 (Conc!14874) Bool)

(assert (=> b!4925350 (= e!3077535 (and (inv!73478 (c!838722 input!5492)) tp!1383473))))

(declare-fun tp!1383471 () Bool)

(declare-fun setElem!27536 () Context!6034)

(declare-fun setNonEmpty!27536 () Bool)

(declare-fun inv!73479 (Context!6034) Bool)

(assert (=> setNonEmpty!27536 (= setRes!27536 (and tp!1383471 (inv!73479 setElem!27536) e!3077536))))

(declare-fun setRest!27536 () (InoxSet Context!6034))

(assert (=> setNonEmpty!27536 (= z!3559 ((_ map or) (store ((as const (Array Context!6034 Bool)) false) setElem!27536 true) setRest!27536))))

(assert (= start!517164 b!4925350))

(assert (= (and start!517164 condSetEmpty!27536) setIsEmpty!27536))

(assert (= (and start!517164 (not condSetEmpty!27536)) setNonEmpty!27536))

(assert (= setNonEmpty!27536 b!4925351))

(declare-fun m!5942620 () Bool)

(assert (=> start!517164 m!5942620))

(declare-fun m!5942622 () Bool)

(assert (=> start!517164 m!5942622))

(declare-fun m!5942624 () Bool)

(assert (=> start!517164 m!5942624))

(declare-fun m!5942626 () Bool)

(assert (=> start!517164 m!5942626))

(declare-fun m!5942628 () Bool)

(assert (=> start!517164 m!5942628))

(declare-fun m!5942630 () Bool)

(assert (=> start!517164 m!5942630))

(assert (=> start!517164 m!5942628))

(declare-fun m!5942632 () Bool)

(assert (=> start!517164 m!5942632))

(declare-fun m!5942634 () Bool)

(assert (=> start!517164 m!5942634))

(declare-fun m!5942636 () Bool)

(assert (=> start!517164 m!5942636))

(declare-fun m!5942638 () Bool)

(assert (=> start!517164 m!5942638))

(declare-fun m!5942640 () Bool)

(assert (=> b!4925350 m!5942640))

(declare-fun m!5942642 () Bool)

(assert (=> setNonEmpty!27536 m!5942642))

(check-sat (not setNonEmpty!27536) (not b!4925350) (not start!517164) (not b!4925351))
(check-sat)
(get-model)

(declare-fun d!1585028 () Bool)

(declare-fun lambda!245232 () Int)

(declare-fun forall!13137 (List!56816 Int) Bool)

(assert (=> d!1585028 (= (inv!73479 setElem!27536) (forall!13137 (exprs!3517 setElem!27536) lambda!245232))))

(declare-fun bs!1179682 () Bool)

(assert (= bs!1179682 d!1585028))

(declare-fun m!5942704 () Bool)

(assert (=> bs!1179682 m!5942704))

(assert (=> setNonEmpty!27536 d!1585028))

(declare-fun d!1585034 () Bool)

(declare-fun c!838743 () Bool)

(get-info :version)

(assert (=> d!1585034 (= c!838743 ((_ is Node!14874) (c!838722 input!5492)))))

(declare-fun e!3077565 () Bool)

(assert (=> d!1585034 (= (inv!73478 (c!838722 input!5492)) e!3077565)))

(declare-fun b!4925400 () Bool)

(declare-fun inv!73480 (Conc!14874) Bool)

(assert (=> b!4925400 (= e!3077565 (inv!73480 (c!838722 input!5492)))))

(declare-fun b!4925401 () Bool)

(declare-fun e!3077566 () Bool)

(assert (=> b!4925401 (= e!3077565 e!3077566)))

(declare-fun res!2102387 () Bool)

(assert (=> b!4925401 (= res!2102387 (not ((_ is Leaf!24744) (c!838722 input!5492))))))

(assert (=> b!4925401 (=> res!2102387 e!3077566)))

(declare-fun b!4925402 () Bool)

(declare-fun inv!73481 (Conc!14874) Bool)

(assert (=> b!4925402 (= e!3077566 (inv!73481 (c!838722 input!5492)))))

(assert (= (and d!1585034 c!838743) b!4925400))

(assert (= (and d!1585034 (not c!838743)) b!4925401))

(assert (= (and b!4925401 (not res!2102387)) b!4925402))

(declare-fun m!5942706 () Bool)

(assert (=> b!4925400 m!5942706))

(declare-fun m!5942708 () Bool)

(assert (=> b!4925402 m!5942708))

(assert (=> b!4925350 d!1585034))

(declare-fun d!1585036 () Bool)

(declare-fun list!17955 (Conc!14874) List!56815)

(assert (=> d!1585036 (= (list!17953 (_2!33894 lt!2026033)) (list!17955 (c!838722 (_2!33894 lt!2026033))))))

(declare-fun bs!1179683 () Bool)

(assert (= bs!1179683 d!1585036))

(declare-fun m!5942710 () Bool)

(assert (=> bs!1179683 m!5942710))

(assert (=> start!517164 d!1585036))

(declare-fun b!4925414 () Bool)

(declare-fun e!3077572 () Bool)

(declare-fun lt!2026114 () List!56815)

(assert (=> b!4925414 (= e!3077572 (or (not (= (_2!33893 lt!2026029) Nil!56691)) (= lt!2026114 (_1!33893 lt!2026029))))))

(declare-fun b!4925412 () Bool)

(declare-fun e!3077571 () List!56815)

(assert (=> b!4925412 (= e!3077571 (Cons!56691 (h!63139 (_1!33893 lt!2026029)) (++!12326 (t!367269 (_1!33893 lt!2026029)) (_2!33893 lt!2026029))))))

(declare-fun b!4925411 () Bool)

(assert (=> b!4925411 (= e!3077571 (_2!33893 lt!2026029))))

(declare-fun b!4925413 () Bool)

(declare-fun res!2102393 () Bool)

(assert (=> b!4925413 (=> (not res!2102393) (not e!3077572))))

(declare-fun size!37484 (List!56815) Int)

(assert (=> b!4925413 (= res!2102393 (= (size!37484 lt!2026114) (+ (size!37484 (_1!33893 lt!2026029)) (size!37484 (_2!33893 lt!2026029)))))))

(declare-fun d!1585038 () Bool)

(assert (=> d!1585038 e!3077572))

(declare-fun res!2102392 () Bool)

(assert (=> d!1585038 (=> (not res!2102392) (not e!3077572))))

(declare-fun content!10071 (List!56815) (InoxSet C!26960))

(assert (=> d!1585038 (= res!2102392 (= (content!10071 lt!2026114) ((_ map or) (content!10071 (_1!33893 lt!2026029)) (content!10071 (_2!33893 lt!2026029)))))))

(assert (=> d!1585038 (= lt!2026114 e!3077571)))

(declare-fun c!838746 () Bool)

(assert (=> d!1585038 (= c!838746 ((_ is Nil!56691) (_1!33893 lt!2026029)))))

(assert (=> d!1585038 (= (++!12326 (_1!33893 lt!2026029) (_2!33893 lt!2026029)) lt!2026114)))

(assert (= (and d!1585038 c!838746) b!4925411))

(assert (= (and d!1585038 (not c!838746)) b!4925412))

(assert (= (and d!1585038 res!2102392) b!4925413))

(assert (= (and b!4925413 res!2102393) b!4925414))

(declare-fun m!5942712 () Bool)

(assert (=> b!4925412 m!5942712))

(declare-fun m!5942714 () Bool)

(assert (=> b!4925413 m!5942714))

(declare-fun m!5942716 () Bool)

(assert (=> b!4925413 m!5942716))

(declare-fun m!5942718 () Bool)

(assert (=> b!4925413 m!5942718))

(declare-fun m!5942720 () Bool)

(assert (=> d!1585038 m!5942720))

(declare-fun m!5942722 () Bool)

(assert (=> d!1585038 m!5942722))

(declare-fun m!5942724 () Bool)

(assert (=> d!1585038 m!5942724))

(assert (=> start!517164 d!1585038))

(declare-fun b!4925418 () Bool)

(declare-fun e!3077574 () Bool)

(declare-fun lt!2026115 () List!56815)

(assert (=> b!4925418 (= e!3077574 (or (not (= lt!2026028 Nil!56691)) (= lt!2026115 lt!2026030)))))

(declare-fun b!4925416 () Bool)

(declare-fun e!3077573 () List!56815)

(assert (=> b!4925416 (= e!3077573 (Cons!56691 (h!63139 lt!2026030) (++!12326 (t!367269 lt!2026030) lt!2026028)))))

(declare-fun b!4925415 () Bool)

(assert (=> b!4925415 (= e!3077573 lt!2026028)))

(declare-fun b!4925417 () Bool)

(declare-fun res!2102395 () Bool)

(assert (=> b!4925417 (=> (not res!2102395) (not e!3077574))))

(assert (=> b!4925417 (= res!2102395 (= (size!37484 lt!2026115) (+ (size!37484 lt!2026030) (size!37484 lt!2026028))))))

(declare-fun d!1585040 () Bool)

(assert (=> d!1585040 e!3077574))

(declare-fun res!2102394 () Bool)

(assert (=> d!1585040 (=> (not res!2102394) (not e!3077574))))

(assert (=> d!1585040 (= res!2102394 (= (content!10071 lt!2026115) ((_ map or) (content!10071 lt!2026030) (content!10071 lt!2026028))))))

(assert (=> d!1585040 (= lt!2026115 e!3077573)))

(declare-fun c!838747 () Bool)

(assert (=> d!1585040 (= c!838747 ((_ is Nil!56691) lt!2026030))))

(assert (=> d!1585040 (= (++!12326 lt!2026030 lt!2026028) lt!2026115)))

(assert (= (and d!1585040 c!838747) b!4925415))

(assert (= (and d!1585040 (not c!838747)) b!4925416))

(assert (= (and d!1585040 res!2102394) b!4925417))

(assert (= (and b!4925417 res!2102395) b!4925418))

(declare-fun m!5942726 () Bool)

(assert (=> b!4925416 m!5942726))

(declare-fun m!5942728 () Bool)

(assert (=> b!4925417 m!5942728))

(declare-fun m!5942730 () Bool)

(assert (=> b!4925417 m!5942730))

(declare-fun m!5942732 () Bool)

(assert (=> b!4925417 m!5942732))

(declare-fun m!5942734 () Bool)

(assert (=> d!1585040 m!5942734))

(declare-fun m!5942736 () Bool)

(assert (=> d!1585040 m!5942736))

(declare-fun m!5942738 () Bool)

(assert (=> d!1585040 m!5942738))

(assert (=> start!517164 d!1585040))

(declare-fun d!1585042 () Bool)

(declare-fun lt!2026368 () Int)

(assert (=> d!1585042 (= (size!37484 (_1!33893 (findLongestMatchInnerZipper!60 z!3559 Nil!56691 0 lt!2026031 (list!17953 input!5492) lt!2026032))) lt!2026368)))

(declare-fun e!3077614 () Int)

(assert (=> d!1585042 (= lt!2026368 e!3077614)))

(declare-fun c!838783 () Bool)

(declare-fun lostCauseZipper!693 ((InoxSet Context!6034)) Bool)

(assert (=> d!1585042 (= c!838783 (lostCauseZipper!693 z!3559))))

(declare-datatypes ((Unit!147207 0))(
  ( (Unit!147208) )
))
(declare-fun lt!2026345 () Unit!147207)

(declare-fun Unit!147209 () Unit!147207)

(assert (=> d!1585042 (= lt!2026345 Unit!147209)))

(declare-fun getSuffix!2951 (List!56815 List!56815) List!56815)

(assert (=> d!1585042 (= (getSuffix!2951 (list!17953 input!5492) Nil!56691) lt!2026031)))

(declare-fun lt!2026353 () Unit!147207)

(declare-fun lt!2026344 () Unit!147207)

(assert (=> d!1585042 (= lt!2026353 lt!2026344)))

(declare-fun lt!2026335 () List!56815)

(assert (=> d!1585042 (= lt!2026031 lt!2026335)))

(declare-fun lemmaSamePrefixThenSameSuffix!2367 (List!56815 List!56815 List!56815 List!56815 List!56815) Unit!147207)

(assert (=> d!1585042 (= lt!2026344 (lemmaSamePrefixThenSameSuffix!2367 Nil!56691 lt!2026031 Nil!56691 lt!2026335 (list!17953 input!5492)))))

(assert (=> d!1585042 (= lt!2026335 (getSuffix!2951 (list!17953 input!5492) Nil!56691))))

(declare-fun lt!2026350 () Unit!147207)

(declare-fun lt!2026361 () Unit!147207)

(assert (=> d!1585042 (= lt!2026350 lt!2026361)))

(declare-fun isPrefix!4963 (List!56815 List!56815) Bool)

(assert (=> d!1585042 (isPrefix!4963 Nil!56691 (++!12326 Nil!56691 lt!2026031))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3187 (List!56815 List!56815) Unit!147207)

(assert (=> d!1585042 (= lt!2026361 (lemmaConcatTwoListThenFirstIsPrefix!3187 Nil!56691 lt!2026031))))

(assert (=> d!1585042 (= (++!12326 Nil!56691 lt!2026031) (list!17953 input!5492))))

(assert (=> d!1585042 (= (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) lt!2026368)))

(declare-fun bm!343406 () Bool)

(declare-fun call!343416 () Bool)

(declare-fun nullableZipper!812 ((InoxSet Context!6034)) Bool)

(assert (=> bm!343406 (= call!343416 (nullableZipper!812 z!3559))))

(declare-fun bm!343407 () Bool)

(declare-fun c!838784 () Bool)

(declare-fun c!838787 () Bool)

(assert (=> bm!343407 (= c!838784 c!838787)))

(declare-fun e!3077618 () List!56815)

(declare-fun lt!2026367 () List!56815)

(declare-fun lt!2026356 () List!56815)

(declare-fun call!343415 () Unit!147207)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1121 (List!56815 List!56815 List!56815) Unit!147207)

(assert (=> bm!343407 (= call!343415 (lemmaIsPrefixSameLengthThenSameList!1121 (ite c!838787 lt!2026356 lt!2026367) Nil!56691 e!3077618))))

(declare-fun bm!343408 () Bool)

(declare-fun call!343420 () List!56815)

(declare-fun tail!9669 (List!56815) List!56815)

(assert (=> bm!343408 (= call!343420 (tail!9669 lt!2026031))))

(declare-fun lt!2026360 () List!56815)

(declare-fun call!343412 () Bool)

(declare-fun lt!2026357 () List!56815)

(declare-fun lt!2026355 () List!56815)

(declare-fun bm!343409 () Bool)

(declare-fun lt!2026333 () List!56815)

(assert (=> bm!343409 (= call!343412 (isPrefix!4963 (ite c!838787 lt!2026333 lt!2026355) (ite c!838787 lt!2026360 lt!2026357)))))

(declare-fun b!4925495 () Bool)

(declare-fun e!3077613 () Int)

(assert (=> b!4925495 (= e!3077614 e!3077613)))

(assert (=> b!4925495 (= c!838787 (= 0 lt!2026032))))

(declare-fun b!4925496 () Bool)

(declare-fun c!838782 () Bool)

(assert (=> b!4925496 (= c!838782 call!343416)))

(declare-fun lt!2026352 () Unit!147207)

(declare-fun lt!2026338 () Unit!147207)

(assert (=> b!4925496 (= lt!2026352 lt!2026338)))

(assert (=> b!4925496 (= lt!2026356 Nil!56691)))

(assert (=> b!4925496 (= lt!2026338 call!343415)))

(declare-fun call!343414 () List!56815)

(assert (=> b!4925496 (= lt!2026356 call!343414)))

(declare-fun lt!2026363 () Unit!147207)

(declare-fun lt!2026342 () Unit!147207)

(assert (=> b!4925496 (= lt!2026363 lt!2026342)))

(assert (=> b!4925496 call!343412))

(declare-fun call!343418 () Unit!147207)

(assert (=> b!4925496 (= lt!2026342 call!343418)))

(assert (=> b!4925496 (= lt!2026360 call!343414)))

(assert (=> b!4925496 (= lt!2026333 call!343414)))

(declare-fun e!3077617 () Int)

(assert (=> b!4925496 (= e!3077613 e!3077617)))

(declare-fun bm!343410 () Bool)

(declare-fun call!343417 () (InoxSet Context!6034))

(declare-fun call!343411 () C!26960)

(declare-fun derivationStepZipper!590 ((InoxSet Context!6034) C!26960) (InoxSet Context!6034))

(assert (=> bm!343410 (= call!343417 (derivationStepZipper!590 z!3559 call!343411))))

(declare-fun bm!343411 () Bool)

(declare-fun call!343419 () List!56815)

(assert (=> bm!343411 (= call!343419 (++!12326 Nil!56691 (Cons!56691 call!343411 Nil!56691)))))

(declare-fun b!4925497 () Bool)

(declare-fun e!3077615 () Unit!147207)

(declare-fun Unit!147210 () Unit!147207)

(assert (=> b!4925497 (= e!3077615 Unit!147210)))

(assert (=> b!4925497 (= lt!2026355 (list!17953 input!5492))))

(assert (=> b!4925497 (= lt!2026357 (list!17953 input!5492))))

(declare-fun lt!2026370 () Unit!147207)

(assert (=> b!4925497 (= lt!2026370 call!343418)))

(assert (=> b!4925497 call!343412))

(declare-fun lt!2026343 () Unit!147207)

(assert (=> b!4925497 (= lt!2026343 lt!2026370)))

(assert (=> b!4925497 (= lt!2026367 (list!17953 input!5492))))

(declare-fun lt!2026364 () Unit!147207)

(assert (=> b!4925497 (= lt!2026364 call!343415)))

(assert (=> b!4925497 (= lt!2026367 Nil!56691)))

(declare-fun lt!2026347 () Unit!147207)

(assert (=> b!4925497 (= lt!2026347 lt!2026364)))

(assert (=> b!4925497 false))

(declare-fun b!4925498 () Bool)

(assert (=> b!4925498 (= e!3077618 (list!17953 input!5492))))

(declare-fun b!4925499 () Bool)

(assert (=> b!4925499 (= e!3077617 0)))

(declare-fun b!4925500 () Bool)

(declare-fun e!3077616 () Int)

(declare-fun lt!2026369 () Int)

(assert (=> b!4925500 (= e!3077616 (ite (= lt!2026369 0) 0 lt!2026369))))

(declare-fun call!343413 () Int)

(assert (=> b!4925500 (= lt!2026369 call!343413)))

(declare-fun b!4925501 () Bool)

(assert (=> b!4925501 (= e!3077614 0)))

(declare-fun b!4925502 () Bool)

(declare-fun Unit!147211 () Unit!147207)

(assert (=> b!4925502 (= e!3077615 Unit!147211)))

(declare-fun bm!343412 () Bool)

(declare-fun apply!13663 (BalanceConc!29178 Int) C!26960)

(assert (=> bm!343412 (= call!343411 (apply!13663 input!5492 0))))

(declare-fun b!4925503 () Bool)

(assert (=> b!4925503 (= e!3077617 0)))

(declare-fun bm!343413 () Bool)

(assert (=> bm!343413 (= call!343413 (findLongestMatchInnerZipperFast!87 call!343417 call!343419 (+ 0 1) call!343420 input!5492 lt!2026032))))

(declare-fun bm!343414 () Bool)

(declare-fun lemmaIsPrefixRefl!3359 (List!56815 List!56815) Unit!147207)

(assert (=> bm!343414 (= call!343418 (lemmaIsPrefixRefl!3359 (ite c!838787 lt!2026333 lt!2026355) (ite c!838787 lt!2026360 lt!2026357)))))

(declare-fun b!4925504 () Bool)

(assert (=> b!4925504 (= e!3077616 call!343413)))

(declare-fun lt!2026340 () tuple2!61182)

(declare-fun bm!343415 () Bool)

(assert (=> bm!343415 (= call!343414 (list!17953 (ite c!838787 input!5492 (_1!33894 lt!2026340))))))

(declare-fun b!4925505 () Bool)

(assert (=> b!4925505 (= e!3077618 call!343414)))

(declare-fun b!4925506 () Bool)

(declare-fun c!838786 () Bool)

(assert (=> b!4925506 (= c!838786 call!343416)))

(declare-fun lt!2026339 () Unit!147207)

(declare-fun lt!2026337 () Unit!147207)

(assert (=> b!4925506 (= lt!2026339 lt!2026337)))

(declare-fun lt!2026362 () C!26960)

(declare-fun lt!2026351 () List!56815)

(declare-fun lt!2026349 () List!56815)

(assert (=> b!4925506 (= (++!12326 (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691)) lt!2026351) lt!2026349)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1393 (List!56815 C!26960 List!56815 List!56815) Unit!147207)

(assert (=> b!4925506 (= lt!2026337 (lemmaMoveElementToOtherListKeepsConcatEq!1393 Nil!56691 lt!2026362 lt!2026351 lt!2026349))))

(assert (=> b!4925506 (= lt!2026349 (list!17953 input!5492))))

(assert (=> b!4925506 (= lt!2026351 (tail!9669 lt!2026031))))

(assert (=> b!4925506 (= lt!2026362 (apply!13663 input!5492 0))))

(declare-fun lt!2026366 () Unit!147207)

(declare-fun lt!2026374 () Unit!147207)

(assert (=> b!4925506 (= lt!2026366 lt!2026374)))

(declare-fun lt!2026359 () List!56815)

(declare-fun head!10522 (List!56815) C!26960)

(assert (=> b!4925506 (isPrefix!4963 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691)) lt!2026359)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!775 (List!56815 List!56815) Unit!147207)

(assert (=> b!4925506 (= lt!2026374 (lemmaAddHeadSuffixToPrefixStillPrefix!775 Nil!56691 lt!2026359))))

(assert (=> b!4925506 (= lt!2026359 (list!17953 input!5492))))

(declare-fun lt!2026371 () Unit!147207)

(assert (=> b!4925506 (= lt!2026371 e!3077615)))

(declare-fun c!838785 () Bool)

(assert (=> b!4925506 (= c!838785 (= (size!37484 Nil!56691) (size!37482 input!5492)))))

(declare-fun lt!2026373 () Unit!147207)

(declare-fun lt!2026348 () Unit!147207)

(assert (=> b!4925506 (= lt!2026373 lt!2026348)))

(declare-fun lt!2026341 () List!56815)

(assert (=> b!4925506 (<= (size!37484 Nil!56691) (size!37484 lt!2026341))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!687 (List!56815 List!56815) Unit!147207)

(assert (=> b!4925506 (= lt!2026348 (lemmaIsPrefixThenSmallerEqSize!687 Nil!56691 lt!2026341))))

(assert (=> b!4925506 (= lt!2026341 (list!17953 input!5492))))

(declare-fun lt!2026336 () Unit!147207)

(declare-fun lt!2026346 () Unit!147207)

(assert (=> b!4925506 (= lt!2026336 lt!2026346)))

(declare-fun lt!2026334 () List!56815)

(declare-fun drop!2226 (List!56815 Int) List!56815)

(declare-fun apply!13664 (List!56815 Int) C!26960)

(assert (=> b!4925506 (= (head!10522 (drop!2226 lt!2026334 0)) (apply!13664 lt!2026334 0))))

(declare-fun lemmaDropApply!1284 (List!56815 Int) Unit!147207)

(assert (=> b!4925506 (= lt!2026346 (lemmaDropApply!1284 lt!2026334 0))))

(assert (=> b!4925506 (= lt!2026334 (list!17953 input!5492))))

(declare-fun lt!2026372 () Unit!147207)

(declare-fun lt!2026365 () Unit!147207)

(assert (=> b!4925506 (= lt!2026372 lt!2026365)))

(declare-fun lt!2026354 () List!56815)

(declare-fun lt!2026358 () List!56815)

(assert (=> b!4925506 (and (= lt!2026354 Nil!56691) (= lt!2026358 lt!2026031))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!659 (List!56815 List!56815 List!56815 List!56815) Unit!147207)

(assert (=> b!4925506 (= lt!2026365 (lemmaConcatSameAndSameSizesThenSameLists!659 lt!2026354 lt!2026358 Nil!56691 lt!2026031))))

(assert (=> b!4925506 (= lt!2026358 (list!17953 (_2!33894 lt!2026340)))))

(assert (=> b!4925506 (= lt!2026354 call!343414)))

(assert (=> b!4925506 (= lt!2026340 (splitAt!273 input!5492 0))))

(assert (=> b!4925506 (= e!3077613 e!3077616)))

(assert (= (and d!1585042 c!838783) b!4925501))

(assert (= (and d!1585042 (not c!838783)) b!4925495))

(assert (= (and b!4925495 c!838787) b!4925496))

(assert (= (and b!4925495 (not c!838787)) b!4925506))

(assert (= (and b!4925496 c!838782) b!4925503))

(assert (= (and b!4925496 (not c!838782)) b!4925499))

(assert (= (and b!4925506 c!838785) b!4925497))

(assert (= (and b!4925506 (not c!838785)) b!4925502))

(assert (= (and b!4925506 c!838786) b!4925500))

(assert (= (and b!4925506 (not c!838786)) b!4925504))

(assert (= (or b!4925500 b!4925504) bm!343408))

(assert (= (or b!4925500 b!4925504) bm!343412))

(assert (= (or b!4925500 b!4925504) bm!343411))

(assert (= (or b!4925500 b!4925504) bm!343410))

(assert (= (or b!4925500 b!4925504) bm!343413))

(assert (= (or b!4925496 b!4925506) bm!343415))

(assert (= (or b!4925496 b!4925497) bm!343409))

(assert (= (or b!4925496 b!4925506) bm!343406))

(assert (= (or b!4925496 b!4925497) bm!343414))

(assert (= (or b!4925496 b!4925497) bm!343407))

(assert (= (and bm!343407 c!838784) b!4925505))

(assert (= (and bm!343407 (not c!838784)) b!4925498))

(declare-fun m!5942838 () Bool)

(assert (=> bm!343408 m!5942838))

(declare-fun m!5942840 () Bool)

(assert (=> d!1585042 m!5942840))

(declare-fun m!5942842 () Bool)

(assert (=> d!1585042 m!5942842))

(assert (=> d!1585042 m!5942636))

(assert (=> d!1585042 m!5942842))

(declare-fun m!5942844 () Bool)

(assert (=> d!1585042 m!5942844))

(declare-fun m!5942846 () Bool)

(assert (=> d!1585042 m!5942846))

(assert (=> d!1585042 m!5942636))

(declare-fun m!5942848 () Bool)

(assert (=> d!1585042 m!5942848))

(assert (=> d!1585042 m!5942636))

(declare-fun m!5942850 () Bool)

(assert (=> d!1585042 m!5942850))

(assert (=> d!1585042 m!5942636))

(declare-fun m!5942852 () Bool)

(assert (=> d!1585042 m!5942852))

(declare-fun m!5942854 () Bool)

(assert (=> d!1585042 m!5942854))

(declare-fun m!5942856 () Bool)

(assert (=> bm!343413 m!5942856))

(declare-fun m!5942858 () Bool)

(assert (=> bm!343410 m!5942858))

(declare-fun m!5942860 () Bool)

(assert (=> bm!343414 m!5942860))

(declare-fun m!5942862 () Bool)

(assert (=> bm!343412 m!5942862))

(declare-fun m!5942864 () Bool)

(assert (=> bm!343406 m!5942864))

(assert (=> b!4925497 m!5942636))

(declare-fun m!5942866 () Bool)

(assert (=> b!4925506 m!5942866))

(declare-fun m!5942868 () Bool)

(assert (=> b!4925506 m!5942868))

(declare-fun m!5942870 () Bool)

(assert (=> b!4925506 m!5942870))

(declare-fun m!5942872 () Bool)

(assert (=> b!4925506 m!5942872))

(declare-fun m!5942874 () Bool)

(assert (=> b!4925506 m!5942874))

(declare-fun m!5942876 () Bool)

(assert (=> b!4925506 m!5942876))

(assert (=> b!4925506 m!5942636))

(declare-fun m!5942878 () Bool)

(assert (=> b!4925506 m!5942878))

(declare-fun m!5942880 () Bool)

(assert (=> b!4925506 m!5942880))

(assert (=> b!4925506 m!5942634))

(declare-fun m!5942882 () Bool)

(assert (=> b!4925506 m!5942882))

(declare-fun m!5942884 () Bool)

(assert (=> b!4925506 m!5942884))

(declare-fun m!5942886 () Bool)

(assert (=> b!4925506 m!5942886))

(declare-fun m!5942888 () Bool)

(assert (=> b!4925506 m!5942888))

(assert (=> b!4925506 m!5942838))

(declare-fun m!5942890 () Bool)

(assert (=> b!4925506 m!5942890))

(declare-fun m!5942892 () Bool)

(assert (=> b!4925506 m!5942892))

(declare-fun m!5942894 () Bool)

(assert (=> b!4925506 m!5942894))

(assert (=> b!4925506 m!5942870))

(assert (=> b!4925506 m!5942890))

(declare-fun m!5942896 () Bool)

(assert (=> b!4925506 m!5942896))

(assert (=> b!4925506 m!5942884))

(declare-fun m!5942898 () Bool)

(assert (=> b!4925506 m!5942898))

(assert (=> b!4925506 m!5942862))

(assert (=> b!4925506 m!5942888))

(declare-fun m!5942900 () Bool)

(assert (=> b!4925506 m!5942900))

(declare-fun m!5942902 () Bool)

(assert (=> bm!343411 m!5942902))

(assert (=> b!4925498 m!5942636))

(declare-fun m!5942904 () Bool)

(assert (=> bm!343409 m!5942904))

(declare-fun m!5942906 () Bool)

(assert (=> bm!343415 m!5942906))

(declare-fun m!5942908 () Bool)

(assert (=> bm!343407 m!5942908))

(assert (=> start!517164 d!1585042))

(declare-fun d!1585060 () Bool)

(declare-fun lt!2026377 () Int)

(assert (=> d!1585060 (= lt!2026377 (size!37484 (list!17953 input!5492)))))

(declare-fun size!37486 (Conc!14874) Int)

(assert (=> d!1585060 (= lt!2026377 (size!37486 (c!838722 input!5492)))))

(assert (=> d!1585060 (= (size!37482 input!5492) lt!2026377)))

(declare-fun bs!1179689 () Bool)

(assert (= bs!1179689 d!1585060))

(assert (=> bs!1179689 m!5942636))

(assert (=> bs!1179689 m!5942636))

(declare-fun m!5942910 () Bool)

(assert (=> bs!1179689 m!5942910))

(declare-fun m!5942912 () Bool)

(assert (=> bs!1179689 m!5942912))

(assert (=> start!517164 d!1585060))

(declare-fun b!4925571 () Bool)

(declare-fun e!3077658 () Bool)

(declare-fun e!3077660 () Bool)

(assert (=> b!4925571 (= e!3077658 e!3077660)))

(declare-fun res!2102418 () Bool)

(assert (=> b!4925571 (=> res!2102418 e!3077660)))

(declare-fun lt!2026439 () tuple2!61180)

(declare-fun isEmpty!30573 (List!56815) Bool)

(assert (=> b!4925571 (= res!2102418 (isEmpty!30573 (_1!33893 lt!2026439)))))

(declare-fun b!4925572 () Bool)

(declare-fun e!3077663 () tuple2!61180)

(assert (=> b!4925572 (= e!3077663 (tuple2!61181 Nil!56691 Nil!56691))))

(declare-fun b!4925573 () Bool)

(declare-fun e!3077656 () Unit!147207)

(declare-fun Unit!147212 () Unit!147207)

(assert (=> b!4925573 (= e!3077656 Unit!147212)))

(declare-fun b!4925574 () Bool)

(declare-fun Unit!147213 () Unit!147207)

(assert (=> b!4925574 (= e!3077656 Unit!147213)))

(declare-fun lt!2026461 () Unit!147207)

(declare-fun call!343439 () Unit!147207)

(assert (=> b!4925574 (= lt!2026461 call!343439)))

(declare-fun call!343443 () Bool)

(assert (=> b!4925574 call!343443))

(declare-fun lt!2026440 () Unit!147207)

(assert (=> b!4925574 (= lt!2026440 lt!2026461)))

(declare-fun lt!2026456 () Unit!147207)

(declare-fun call!343438 () Unit!147207)

(assert (=> b!4925574 (= lt!2026456 call!343438)))

(assert (=> b!4925574 (= lt!2026031 Nil!56691)))

(declare-fun lt!2026454 () Unit!147207)

(assert (=> b!4925574 (= lt!2026454 lt!2026456)))

(assert (=> b!4925574 false))

(declare-fun bm!343432 () Bool)

(assert (=> bm!343432 (= call!343443 (isPrefix!4963 lt!2026031 lt!2026031))))

(declare-fun bm!343433 () Bool)

(declare-fun call!343440 () (InoxSet Context!6034))

(declare-fun call!343441 () C!26960)

(assert (=> bm!343433 (= call!343440 (derivationStepZipper!590 z!3559 call!343441))))

(declare-fun bm!343434 () Bool)

(assert (=> bm!343434 (= call!343441 (head!10522 lt!2026031))))

(declare-fun bm!343435 () Bool)

(assert (=> bm!343435 (= call!343439 (lemmaIsPrefixRefl!3359 lt!2026031 lt!2026031))))

(declare-fun b!4925576 () Bool)

(declare-fun e!3077659 () tuple2!61180)

(assert (=> b!4925576 (= e!3077659 (tuple2!61181 Nil!56691 lt!2026031))))

(declare-fun b!4925577 () Bool)

(declare-fun e!3077662 () tuple2!61180)

(declare-fun e!3077657 () tuple2!61180)

(assert (=> b!4925577 (= e!3077662 e!3077657)))

(declare-fun lt!2026449 () tuple2!61180)

(declare-fun call!343444 () tuple2!61180)

(assert (=> b!4925577 (= lt!2026449 call!343444)))

(declare-fun c!838807 () Bool)

(assert (=> b!4925577 (= c!838807 (isEmpty!30573 (_1!33893 lt!2026449)))))

(declare-fun bm!343436 () Bool)

(declare-fun call!343437 () Bool)

(assert (=> bm!343436 (= call!343437 (nullableZipper!812 z!3559))))

(declare-fun b!4925578 () Bool)

(assert (=> b!4925578 (= e!3077660 (>= (size!37484 (_1!33893 lt!2026439)) (size!37484 Nil!56691)))))

(declare-fun b!4925579 () Bool)

(assert (=> b!4925579 (= e!3077662 call!343444)))

(declare-fun bm!343437 () Bool)

(declare-fun call!343442 () List!56815)

(assert (=> bm!343437 (= call!343442 (tail!9669 lt!2026031))))

(declare-fun b!4925580 () Bool)

(assert (=> b!4925580 (= e!3077663 (tuple2!61181 Nil!56691 lt!2026031))))

(declare-fun bm!343438 () Bool)

(declare-fun lt!2026442 () List!56815)

(assert (=> bm!343438 (= call!343444 (findLongestMatchInnerZipper!60 call!343440 lt!2026442 (+ 0 1) call!343442 lt!2026031 lt!2026032))))

(declare-fun b!4925581 () Bool)

(declare-fun e!3077661 () tuple2!61180)

(assert (=> b!4925581 (= e!3077659 e!3077661)))

(declare-fun c!838804 () Bool)

(assert (=> b!4925581 (= c!838804 (= 0 lt!2026032))))

(declare-fun b!4925582 () Bool)

(assert (=> b!4925582 (= e!3077657 lt!2026449)))

(declare-fun d!1585062 () Bool)

(assert (=> d!1585062 e!3077658))

(declare-fun res!2102417 () Bool)

(assert (=> d!1585062 (=> (not res!2102417) (not e!3077658))))

(assert (=> d!1585062 (= res!2102417 (= (++!12326 (_1!33893 lt!2026439) (_2!33893 lt!2026439)) lt!2026031))))

(assert (=> d!1585062 (= lt!2026439 e!3077659)))

(declare-fun c!838808 () Bool)

(assert (=> d!1585062 (= c!838808 (lostCauseZipper!693 z!3559))))

(declare-fun lt!2026451 () Unit!147207)

(declare-fun Unit!147214 () Unit!147207)

(assert (=> d!1585062 (= lt!2026451 Unit!147214)))

(assert (=> d!1585062 (= (getSuffix!2951 lt!2026031 Nil!56691) lt!2026031)))

(declare-fun lt!2026445 () Unit!147207)

(declare-fun lt!2026436 () Unit!147207)

(assert (=> d!1585062 (= lt!2026445 lt!2026436)))

(declare-fun lt!2026457 () List!56815)

(assert (=> d!1585062 (= lt!2026031 lt!2026457)))

(assert (=> d!1585062 (= lt!2026436 (lemmaSamePrefixThenSameSuffix!2367 Nil!56691 lt!2026031 Nil!56691 lt!2026457 lt!2026031))))

(assert (=> d!1585062 (= lt!2026457 (getSuffix!2951 lt!2026031 Nil!56691))))

(declare-fun lt!2026455 () Unit!147207)

(declare-fun lt!2026448 () Unit!147207)

(assert (=> d!1585062 (= lt!2026455 lt!2026448)))

(assert (=> d!1585062 (isPrefix!4963 Nil!56691 (++!12326 Nil!56691 lt!2026031))))

(assert (=> d!1585062 (= lt!2026448 (lemmaConcatTwoListThenFirstIsPrefix!3187 Nil!56691 lt!2026031))))

(assert (=> d!1585062 (= (++!12326 Nil!56691 lt!2026031) lt!2026031)))

(assert (=> d!1585062 (= (findLongestMatchInnerZipper!60 z!3559 Nil!56691 0 lt!2026031 lt!2026031 lt!2026032) lt!2026439)))

(declare-fun b!4925575 () Bool)

(declare-fun c!838805 () Bool)

(assert (=> b!4925575 (= c!838805 call!343437)))

(declare-fun lt!2026458 () Unit!147207)

(declare-fun lt!2026460 () Unit!147207)

(assert (=> b!4925575 (= lt!2026458 lt!2026460)))

(assert (=> b!4925575 (= lt!2026031 Nil!56691)))

(assert (=> b!4925575 (= lt!2026460 call!343438)))

(declare-fun lt!2026453 () Unit!147207)

(declare-fun lt!2026446 () Unit!147207)

(assert (=> b!4925575 (= lt!2026453 lt!2026446)))

(assert (=> b!4925575 call!343443))

(assert (=> b!4925575 (= lt!2026446 call!343439)))

(assert (=> b!4925575 (= e!3077661 e!3077663)))

(declare-fun b!4925583 () Bool)

(declare-fun c!838803 () Bool)

(assert (=> b!4925583 (= c!838803 call!343437)))

(declare-fun lt!2026450 () Unit!147207)

(declare-fun lt!2026437 () Unit!147207)

(assert (=> b!4925583 (= lt!2026450 lt!2026437)))

(declare-fun lt!2026444 () C!26960)

(declare-fun lt!2026447 () List!56815)

(assert (=> b!4925583 (= (++!12326 (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691)) lt!2026447) lt!2026031)))

(assert (=> b!4925583 (= lt!2026437 (lemmaMoveElementToOtherListKeepsConcatEq!1393 Nil!56691 lt!2026444 lt!2026447 lt!2026031))))

(assert (=> b!4925583 (= lt!2026447 (tail!9669 lt!2026031))))

(assert (=> b!4925583 (= lt!2026444 (head!10522 lt!2026031))))

(declare-fun lt!2026452 () Unit!147207)

(declare-fun lt!2026441 () Unit!147207)

(assert (=> b!4925583 (= lt!2026452 lt!2026441)))

(assert (=> b!4925583 (isPrefix!4963 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691)) lt!2026031)))

(assert (=> b!4925583 (= lt!2026441 (lemmaAddHeadSuffixToPrefixStillPrefix!775 Nil!56691 lt!2026031))))

(assert (=> b!4925583 (= lt!2026442 (++!12326 Nil!56691 (Cons!56691 (head!10522 lt!2026031) Nil!56691)))))

(declare-fun lt!2026443 () Unit!147207)

(assert (=> b!4925583 (= lt!2026443 e!3077656)))

(declare-fun c!838806 () Bool)

(assert (=> b!4925583 (= c!838806 (= (size!37484 Nil!56691) (size!37484 lt!2026031)))))

(declare-fun lt!2026438 () Unit!147207)

(declare-fun lt!2026459 () Unit!147207)

(assert (=> b!4925583 (= lt!2026438 lt!2026459)))

(assert (=> b!4925583 (<= (size!37484 Nil!56691) (size!37484 lt!2026031))))

(assert (=> b!4925583 (= lt!2026459 (lemmaIsPrefixThenSmallerEqSize!687 Nil!56691 lt!2026031))))

(assert (=> b!4925583 (= e!3077661 e!3077662)))

(declare-fun b!4925584 () Bool)

(assert (=> b!4925584 (= e!3077657 (tuple2!61181 Nil!56691 lt!2026031))))

(declare-fun bm!343439 () Bool)

(assert (=> bm!343439 (= call!343438 (lemmaIsPrefixSameLengthThenSameList!1121 lt!2026031 Nil!56691 lt!2026031))))

(assert (= (and d!1585062 c!838808) b!4925576))

(assert (= (and d!1585062 (not c!838808)) b!4925581))

(assert (= (and b!4925581 c!838804) b!4925575))

(assert (= (and b!4925581 (not c!838804)) b!4925583))

(assert (= (and b!4925575 c!838805) b!4925572))

(assert (= (and b!4925575 (not c!838805)) b!4925580))

(assert (= (and b!4925583 c!838806) b!4925574))

(assert (= (and b!4925583 (not c!838806)) b!4925573))

(assert (= (and b!4925583 c!838803) b!4925577))

(assert (= (and b!4925583 (not c!838803)) b!4925579))

(assert (= (and b!4925577 c!838807) b!4925584))

(assert (= (and b!4925577 (not c!838807)) b!4925582))

(assert (= (or b!4925577 b!4925579) bm!343437))

(assert (= (or b!4925577 b!4925579) bm!343434))

(assert (= (or b!4925577 b!4925579) bm!343433))

(assert (= (or b!4925577 b!4925579) bm!343438))

(assert (= (or b!4925575 b!4925574) bm!343432))

(assert (= (or b!4925575 b!4925574) bm!343435))

(assert (= (or b!4925575 b!4925574) bm!343439))

(assert (= (or b!4925575 b!4925583) bm!343436))

(assert (= (and d!1585062 res!2102417) b!4925571))

(assert (= (and b!4925571 (not res!2102418)) b!4925578))

(declare-fun m!5942938 () Bool)

(assert (=> bm!343439 m!5942938))

(assert (=> bm!343436 m!5942864))

(declare-fun m!5942940 () Bool)

(assert (=> bm!343435 m!5942940))

(declare-fun m!5942942 () Bool)

(assert (=> bm!343432 m!5942942))

(declare-fun m!5942944 () Bool)

(assert (=> b!4925571 m!5942944))

(declare-fun m!5942946 () Bool)

(assert (=> bm!343438 m!5942946))

(declare-fun m!5942948 () Bool)

(assert (=> bm!343433 m!5942948))

(assert (=> d!1585062 m!5942842))

(assert (=> d!1585062 m!5942844))

(assert (=> d!1585062 m!5942840))

(assert (=> d!1585062 m!5942842))

(declare-fun m!5942950 () Bool)

(assert (=> d!1585062 m!5942950))

(declare-fun m!5942952 () Bool)

(assert (=> d!1585062 m!5942952))

(declare-fun m!5942954 () Bool)

(assert (=> d!1585062 m!5942954))

(assert (=> d!1585062 m!5942846))

(declare-fun m!5942956 () Bool)

(assert (=> b!4925577 m!5942956))

(declare-fun m!5942958 () Bool)

(assert (=> b!4925583 m!5942958))

(assert (=> b!4925583 m!5942952))

(declare-fun m!5942960 () Bool)

(assert (=> b!4925583 m!5942960))

(declare-fun m!5942962 () Bool)

(assert (=> b!4925583 m!5942962))

(declare-fun m!5942964 () Bool)

(assert (=> b!4925583 m!5942964))

(declare-fun m!5942966 () Bool)

(assert (=> b!4925583 m!5942966))

(declare-fun m!5942968 () Bool)

(assert (=> b!4925583 m!5942968))

(declare-fun m!5942970 () Bool)

(assert (=> b!4925583 m!5942970))

(declare-fun m!5942972 () Bool)

(assert (=> b!4925583 m!5942972))

(declare-fun m!5942974 () Bool)

(assert (=> b!4925583 m!5942974))

(declare-fun m!5942976 () Bool)

(assert (=> b!4925583 m!5942976))

(assert (=> b!4925583 m!5942952))

(assert (=> b!4925583 m!5942838))

(assert (=> b!4925583 m!5942958))

(declare-fun m!5942978 () Bool)

(assert (=> b!4925583 m!5942978))

(assert (=> b!4925583 m!5942882))

(assert (=> b!4925583 m!5942962))

(assert (=> bm!343437 m!5942838))

(assert (=> bm!343434 m!5942970))

(declare-fun m!5942980 () Bool)

(assert (=> b!4925578 m!5942980))

(assert (=> b!4925578 m!5942882))

(assert (=> start!517164 d!1585062))

(declare-fun d!1585066 () Bool)

(declare-fun e!3077666 () Bool)

(assert (=> d!1585066 e!3077666))

(declare-fun res!2102424 () Bool)

(assert (=> d!1585066 (=> (not res!2102424) (not e!3077666))))

(declare-fun lt!2026467 () tuple2!61182)

(declare-fun isBalanced!4087 (Conc!14874) Bool)

(assert (=> d!1585066 (= res!2102424 (isBalanced!4087 (c!838722 (_1!33894 lt!2026467))))))

(declare-datatypes ((tuple2!61186 0))(
  ( (tuple2!61187 (_1!33896 Conc!14874) (_2!33896 Conc!14874)) )
))
(declare-fun lt!2026466 () tuple2!61186)

(assert (=> d!1585066 (= lt!2026467 (tuple2!61183 (BalanceConc!29179 (_1!33896 lt!2026466)) (BalanceConc!29179 (_2!33896 lt!2026466))))))

(declare-fun splitAt!275 (Conc!14874 Int) tuple2!61186)

(assert (=> d!1585066 (= lt!2026466 (splitAt!275 (c!838722 input!5492) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)))))

(assert (=> d!1585066 (isBalanced!4087 (c!838722 input!5492))))

(assert (=> d!1585066 (= (splitAt!273 input!5492 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)) lt!2026467)))

(declare-fun b!4925589 () Bool)

(declare-fun res!2102423 () Bool)

(assert (=> b!4925589 (=> (not res!2102423) (not e!3077666))))

(assert (=> b!4925589 (= res!2102423 (isBalanced!4087 (c!838722 (_2!33894 lt!2026467))))))

(declare-fun b!4925590 () Bool)

(declare-fun splitAtIndex!103 (List!56815 Int) tuple2!61180)

(assert (=> b!4925590 (= e!3077666 (= (tuple2!61181 (list!17953 (_1!33894 lt!2026467)) (list!17953 (_2!33894 lt!2026467))) (splitAtIndex!103 (list!17953 input!5492) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032))))))

(assert (= (and d!1585066 res!2102424) b!4925589))

(assert (= (and b!4925589 res!2102423) b!4925590))

(declare-fun m!5942982 () Bool)

(assert (=> d!1585066 m!5942982))

(assert (=> d!1585066 m!5942628))

(declare-fun m!5942984 () Bool)

(assert (=> d!1585066 m!5942984))

(declare-fun m!5942986 () Bool)

(assert (=> d!1585066 m!5942986))

(declare-fun m!5942988 () Bool)

(assert (=> b!4925589 m!5942988))

(declare-fun m!5942990 () Bool)

(assert (=> b!4925590 m!5942990))

(declare-fun m!5942992 () Bool)

(assert (=> b!4925590 m!5942992))

(assert (=> b!4925590 m!5942636))

(assert (=> b!4925590 m!5942636))

(assert (=> b!4925590 m!5942628))

(declare-fun m!5942994 () Bool)

(assert (=> b!4925590 m!5942994))

(assert (=> start!517164 d!1585066))

(declare-fun d!1585068 () Bool)

(assert (=> d!1585068 (= (list!17953 (_1!33894 lt!2026033)) (list!17955 (c!838722 (_1!33894 lt!2026033))))))

(declare-fun bs!1179690 () Bool)

(assert (= bs!1179690 d!1585068))

(declare-fun m!5942996 () Bool)

(assert (=> bs!1179690 m!5942996))

(assert (=> start!517164 d!1585068))

(declare-fun d!1585070 () Bool)

(assert (=> d!1585070 (= (list!17953 input!5492) (list!17955 (c!838722 input!5492)))))

(declare-fun bs!1179691 () Bool)

(assert (= bs!1179691 d!1585070))

(declare-fun m!5942998 () Bool)

(assert (=> bs!1179691 m!5942998))

(assert (=> start!517164 d!1585070))

(declare-fun d!1585072 () Bool)

(assert (=> d!1585072 (= (inv!73477 input!5492) (isBalanced!4087 (c!838722 input!5492)))))

(declare-fun bs!1179692 () Bool)

(assert (= bs!1179692 d!1585072))

(assert (=> bs!1179692 m!5942986))

(assert (=> start!517164 d!1585072))

(declare-fun condSetEmpty!27542 () Bool)

(assert (=> setNonEmpty!27536 (= condSetEmpty!27542 (= setRest!27536 ((as const (Array Context!6034 Bool)) false)))))

(declare-fun setRes!27542 () Bool)

(assert (=> setNonEmpty!27536 (= tp!1383471 setRes!27542)))

(declare-fun setIsEmpty!27542 () Bool)

(assert (=> setIsEmpty!27542 setRes!27542))

(declare-fun setElem!27542 () Context!6034)

(declare-fun setNonEmpty!27542 () Bool)

(declare-fun tp!1383499 () Bool)

(declare-fun e!3077669 () Bool)

(assert (=> setNonEmpty!27542 (= setRes!27542 (and tp!1383499 (inv!73479 setElem!27542) e!3077669))))

(declare-fun setRest!27542 () (InoxSet Context!6034))

(assert (=> setNonEmpty!27542 (= setRest!27536 ((_ map or) (store ((as const (Array Context!6034 Bool)) false) setElem!27542 true) setRest!27542))))

(declare-fun b!4925595 () Bool)

(declare-fun tp!1383500 () Bool)

(assert (=> b!4925595 (= e!3077669 tp!1383500)))

(assert (= (and setNonEmpty!27536 condSetEmpty!27542) setIsEmpty!27542))

(assert (= (and setNonEmpty!27536 (not condSetEmpty!27542)) setNonEmpty!27542))

(assert (= setNonEmpty!27542 b!4925595))

(declare-fun m!5943000 () Bool)

(assert (=> setNonEmpty!27542 m!5943000))

(declare-fun b!4925604 () Bool)

(declare-fun e!3077675 () Bool)

(declare-fun tp!1383509 () Bool)

(declare-fun tp!1383508 () Bool)

(assert (=> b!4925604 (= e!3077675 (and (inv!73478 (left!41337 (c!838722 input!5492))) tp!1383509 (inv!73478 (right!41667 (c!838722 input!5492))) tp!1383508))))

(declare-fun b!4925606 () Bool)

(declare-fun e!3077674 () Bool)

(declare-fun tp!1383507 () Bool)

(assert (=> b!4925606 (= e!3077674 tp!1383507)))

(declare-fun b!4925605 () Bool)

(declare-fun inv!73485 (IArray!29809) Bool)

(assert (=> b!4925605 (= e!3077675 (and (inv!73485 (xs!18196 (c!838722 input!5492))) e!3077674))))

(assert (=> b!4925350 (= tp!1383473 (and (inv!73478 (c!838722 input!5492)) e!3077675))))

(assert (= (and b!4925350 ((_ is Node!14874) (c!838722 input!5492))) b!4925604))

(assert (= b!4925605 b!4925606))

(assert (= (and b!4925350 ((_ is Leaf!24744) (c!838722 input!5492))) b!4925605))

(declare-fun m!5943002 () Bool)

(assert (=> b!4925604 m!5943002))

(declare-fun m!5943004 () Bool)

(assert (=> b!4925604 m!5943004))

(declare-fun m!5943006 () Bool)

(assert (=> b!4925605 m!5943006))

(assert (=> b!4925350 m!5942640))

(declare-fun b!4925611 () Bool)

(declare-fun e!3077678 () Bool)

(declare-fun tp!1383514 () Bool)

(declare-fun tp!1383515 () Bool)

(assert (=> b!4925611 (= e!3077678 (and tp!1383514 tp!1383515))))

(assert (=> b!4925351 (= tp!1383472 e!3077678)))

(assert (= (and b!4925351 ((_ is Cons!56692) (exprs!3517 setElem!27536))) b!4925611))

(check-sat (not b!4925350) (not b!4925578) (not b!4925416) (not b!4925604) (not bm!343412) (not d!1585060) (not b!4925595) (not b!4925583) (not b!4925412) (not b!4925571) (not b!4925605) (not d!1585068) (not d!1585040) (not b!4925590) (not bm!343414) (not bm!343436) (not b!4925417) (not d!1585038) (not bm!343406) (not b!4925497) (not bm!343413) (not bm!343415) (not d!1585062) (not b!4925589) (not bm!343410) (not bm!343435) (not bm!343407) (not d!1585042) (not b!4925506) (not bm!343439) (not setNonEmpty!27542) (not bm!343411) (not bm!343438) (not bm!343433) (not d!1585066) (not b!4925611) (not b!4925413) (not bm!343409) (not b!4925577) (not d!1585072) (not bm!343408) (not bm!343434) (not b!4925498) (not b!4925606) (not b!4925402) (not d!1585028) (not bm!343432) (not d!1585070) (not b!4925400) (not d!1585036) (not bm!343437))
(check-sat)
(get-model)

(declare-fun b!4925615 () Bool)

(declare-fun e!3077680 () Bool)

(declare-fun lt!2026468 () List!56815)

(assert (=> b!4925615 (= e!3077680 (or (not (= (_2!33893 lt!2026029) Nil!56691)) (= lt!2026468 (t!367269 (_1!33893 lt!2026029)))))))

(declare-fun b!4925613 () Bool)

(declare-fun e!3077679 () List!56815)

(assert (=> b!4925613 (= e!3077679 (Cons!56691 (h!63139 (t!367269 (_1!33893 lt!2026029))) (++!12326 (t!367269 (t!367269 (_1!33893 lt!2026029))) (_2!33893 lt!2026029))))))

(declare-fun b!4925612 () Bool)

(assert (=> b!4925612 (= e!3077679 (_2!33893 lt!2026029))))

(declare-fun b!4925614 () Bool)

(declare-fun res!2102426 () Bool)

(assert (=> b!4925614 (=> (not res!2102426) (not e!3077680))))

(assert (=> b!4925614 (= res!2102426 (= (size!37484 lt!2026468) (+ (size!37484 (t!367269 (_1!33893 lt!2026029))) (size!37484 (_2!33893 lt!2026029)))))))

(declare-fun d!1585074 () Bool)

(assert (=> d!1585074 e!3077680))

(declare-fun res!2102425 () Bool)

(assert (=> d!1585074 (=> (not res!2102425) (not e!3077680))))

(assert (=> d!1585074 (= res!2102425 (= (content!10071 lt!2026468) ((_ map or) (content!10071 (t!367269 (_1!33893 lt!2026029))) (content!10071 (_2!33893 lt!2026029)))))))

(assert (=> d!1585074 (= lt!2026468 e!3077679)))

(declare-fun c!838809 () Bool)

(assert (=> d!1585074 (= c!838809 ((_ is Nil!56691) (t!367269 (_1!33893 lt!2026029))))))

(assert (=> d!1585074 (= (++!12326 (t!367269 (_1!33893 lt!2026029)) (_2!33893 lt!2026029)) lt!2026468)))

(assert (= (and d!1585074 c!838809) b!4925612))

(assert (= (and d!1585074 (not c!838809)) b!4925613))

(assert (= (and d!1585074 res!2102425) b!4925614))

(assert (= (and b!4925614 res!2102426) b!4925615))

(declare-fun m!5943008 () Bool)

(assert (=> b!4925613 m!5943008))

(declare-fun m!5943010 () Bool)

(assert (=> b!4925614 m!5943010))

(declare-fun m!5943012 () Bool)

(assert (=> b!4925614 m!5943012))

(assert (=> b!4925614 m!5942718))

(declare-fun m!5943014 () Bool)

(assert (=> d!1585074 m!5943014))

(declare-fun m!5943016 () Bool)

(assert (=> d!1585074 m!5943016))

(assert (=> d!1585074 m!5942724))

(assert (=> b!4925412 d!1585074))

(declare-fun d!1585076 () Bool)

(assert (=> d!1585076 (isPrefix!4963 (ite c!838787 lt!2026333 lt!2026355) (ite c!838787 lt!2026360 lt!2026357))))

(declare-fun lt!2026471 () Unit!147207)

(declare-fun choose!36066 (List!56815 List!56815) Unit!147207)

(assert (=> d!1585076 (= lt!2026471 (choose!36066 (ite c!838787 lt!2026333 lt!2026355) (ite c!838787 lt!2026360 lt!2026357)))))

(assert (=> d!1585076 (= (lemmaIsPrefixRefl!3359 (ite c!838787 lt!2026333 lt!2026355) (ite c!838787 lt!2026360 lt!2026357)) lt!2026471)))

(declare-fun bs!1179693 () Bool)

(assert (= bs!1179693 d!1585076))

(assert (=> bs!1179693 m!5942904))

(declare-fun m!5943018 () Bool)

(assert (=> bs!1179693 m!5943018))

(assert (=> bm!343414 d!1585076))

(declare-fun d!1585078 () Bool)

(assert (=> d!1585078 (= (list!17953 (_1!33894 lt!2026467)) (list!17955 (c!838722 (_1!33894 lt!2026467))))))

(declare-fun bs!1179694 () Bool)

(assert (= bs!1179694 d!1585078))

(declare-fun m!5943020 () Bool)

(assert (=> bs!1179694 m!5943020))

(assert (=> b!4925590 d!1585078))

(declare-fun d!1585080 () Bool)

(assert (=> d!1585080 (= (list!17953 (_2!33894 lt!2026467)) (list!17955 (c!838722 (_2!33894 lt!2026467))))))

(declare-fun bs!1179695 () Bool)

(assert (= bs!1179695 d!1585080))

(declare-fun m!5943022 () Bool)

(assert (=> bs!1179695 m!5943022))

(assert (=> b!4925590 d!1585080))

(declare-fun b!4925628 () Bool)

(declare-fun e!3077689 () tuple2!61180)

(declare-fun e!3077688 () tuple2!61180)

(assert (=> b!4925628 (= e!3077689 e!3077688)))

(declare-fun c!838814 () Bool)

(assert (=> b!4925628 (= c!838814 (<= (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) 0))))

(declare-fun d!1585082 () Bool)

(declare-fun e!3077687 () Bool)

(assert (=> d!1585082 e!3077687))

(declare-fun res!2102432 () Bool)

(assert (=> d!1585082 (=> (not res!2102432) (not e!3077687))))

(declare-fun lt!2026477 () tuple2!61180)

(assert (=> d!1585082 (= res!2102432 (= (++!12326 (_1!33893 lt!2026477) (_2!33893 lt!2026477)) (list!17953 input!5492)))))

(assert (=> d!1585082 (= lt!2026477 e!3077689)))

(declare-fun c!838815 () Bool)

(assert (=> d!1585082 (= c!838815 ((_ is Nil!56691) (list!17953 input!5492)))))

(assert (=> d!1585082 (= (splitAtIndex!103 (list!17953 input!5492) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)) lt!2026477)))

(declare-fun lt!2026476 () tuple2!61180)

(declare-fun b!4925629 () Bool)

(assert (=> b!4925629 (= lt!2026476 (splitAtIndex!103 (t!367269 (list!17953 input!5492)) (- (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) 1)))))

(assert (=> b!4925629 (= e!3077688 (tuple2!61181 (Cons!56691 (h!63139 (list!17953 input!5492)) (_1!33893 lt!2026476)) (_2!33893 lt!2026476)))))

(declare-fun b!4925630 () Bool)

(assert (=> b!4925630 (= e!3077689 (tuple2!61181 Nil!56691 Nil!56691))))

(declare-fun b!4925631 () Bool)

(assert (=> b!4925631 (= e!3077687 (= (_2!33893 lt!2026477) (drop!2226 (list!17953 input!5492) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032))))))

(declare-fun b!4925632 () Bool)

(assert (=> b!4925632 (= e!3077688 (tuple2!61181 Nil!56691 (list!17953 input!5492)))))

(declare-fun b!4925633 () Bool)

(declare-fun res!2102431 () Bool)

(assert (=> b!4925633 (=> (not res!2102431) (not e!3077687))))

(declare-fun take!578 (List!56815 Int) List!56815)

(assert (=> b!4925633 (= res!2102431 (= (_1!33893 lt!2026477) (take!578 (list!17953 input!5492) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032))))))

(assert (= (and d!1585082 c!838815) b!4925630))

(assert (= (and d!1585082 (not c!838815)) b!4925628))

(assert (= (and b!4925628 c!838814) b!4925632))

(assert (= (and b!4925628 (not c!838814)) b!4925629))

(assert (= (and d!1585082 res!2102432) b!4925633))

(assert (= (and b!4925633 res!2102431) b!4925631))

(declare-fun m!5943024 () Bool)

(assert (=> d!1585082 m!5943024))

(declare-fun m!5943026 () Bool)

(assert (=> b!4925629 m!5943026))

(assert (=> b!4925631 m!5942636))

(assert (=> b!4925631 m!5942628))

(declare-fun m!5943028 () Bool)

(assert (=> b!4925631 m!5943028))

(assert (=> b!4925633 m!5942636))

(assert (=> b!4925633 m!5942628))

(declare-fun m!5943030 () Bool)

(assert (=> b!4925633 m!5943030))

(assert (=> b!4925590 d!1585082))

(assert (=> b!4925590 d!1585070))

(declare-fun b!4925645 () Bool)

(declare-fun e!3077695 () List!56815)

(assert (=> b!4925645 (= e!3077695 (++!12326 (list!17955 (left!41337 (c!838722 input!5492))) (list!17955 (right!41667 (c!838722 input!5492)))))))

(declare-fun b!4925643 () Bool)

(declare-fun e!3077694 () List!56815)

(assert (=> b!4925643 (= e!3077694 e!3077695)))

(declare-fun c!838821 () Bool)

(assert (=> b!4925643 (= c!838821 ((_ is Leaf!24744) (c!838722 input!5492)))))

(declare-fun b!4925644 () Bool)

(declare-fun list!17956 (IArray!29809) List!56815)

(assert (=> b!4925644 (= e!3077695 (list!17956 (xs!18196 (c!838722 input!5492))))))

(declare-fun d!1585084 () Bool)

(declare-fun c!838820 () Bool)

(assert (=> d!1585084 (= c!838820 ((_ is Empty!14874) (c!838722 input!5492)))))

(assert (=> d!1585084 (= (list!17955 (c!838722 input!5492)) e!3077694)))

(declare-fun b!4925642 () Bool)

(assert (=> b!4925642 (= e!3077694 Nil!56691)))

(assert (= (and d!1585084 c!838820) b!4925642))

(assert (= (and d!1585084 (not c!838820)) b!4925643))

(assert (= (and b!4925643 c!838821) b!4925644))

(assert (= (and b!4925643 (not c!838821)) b!4925645))

(declare-fun m!5943032 () Bool)

(assert (=> b!4925645 m!5943032))

(declare-fun m!5943034 () Bool)

(assert (=> b!4925645 m!5943034))

(assert (=> b!4925645 m!5943032))

(assert (=> b!4925645 m!5943034))

(declare-fun m!5943036 () Bool)

(assert (=> b!4925645 m!5943036))

(declare-fun m!5943038 () Bool)

(assert (=> b!4925644 m!5943038))

(assert (=> d!1585070 d!1585084))

(declare-fun d!1585086 () Bool)

(declare-fun lambda!245235 () Int)

(declare-fun exists!1246 ((InoxSet Context!6034) Int) Bool)

(assert (=> d!1585086 (= (nullableZipper!812 z!3559) (exists!1246 z!3559 lambda!245235))))

(declare-fun bs!1179696 () Bool)

(assert (= bs!1179696 d!1585086))

(declare-fun m!5943040 () Bool)

(assert (=> bs!1179696 m!5943040))

(assert (=> bm!343436 d!1585086))

(declare-fun bs!1179697 () Bool)

(declare-fun d!1585094 () Bool)

(assert (= bs!1179697 (and d!1585094 d!1585028)))

(declare-fun lambda!245236 () Int)

(assert (=> bs!1179697 (= lambda!245236 lambda!245232)))

(assert (=> d!1585094 (= (inv!73479 setElem!27542) (forall!13137 (exprs!3517 setElem!27542) lambda!245236))))

(declare-fun bs!1179698 () Bool)

(assert (= bs!1179698 d!1585094))

(declare-fun m!5943042 () Bool)

(assert (=> bs!1179698 m!5943042))

(assert (=> setNonEmpty!27542 d!1585094))

(declare-fun d!1585096 () Bool)

(assert (=> d!1585096 (isPrefix!4963 lt!2026031 lt!2026031)))

(declare-fun lt!2026478 () Unit!147207)

(assert (=> d!1585096 (= lt!2026478 (choose!36066 lt!2026031 lt!2026031))))

(assert (=> d!1585096 (= (lemmaIsPrefixRefl!3359 lt!2026031 lt!2026031) lt!2026478)))

(declare-fun bs!1179699 () Bool)

(assert (= bs!1179699 d!1585096))

(assert (=> bs!1179699 m!5942942))

(declare-fun m!5943044 () Bool)

(assert (=> bs!1179699 m!5943044))

(assert (=> bm!343435 d!1585096))

(declare-fun d!1585098 () Bool)

(declare-fun res!2102437 () Bool)

(declare-fun e!3077698 () Bool)

(assert (=> d!1585098 (=> (not res!2102437) (not e!3077698))))

(assert (=> d!1585098 (= res!2102437 (<= (size!37484 (list!17956 (xs!18196 (c!838722 input!5492)))) 512))))

(assert (=> d!1585098 (= (inv!73481 (c!838722 input!5492)) e!3077698)))

(declare-fun b!4925650 () Bool)

(declare-fun res!2102438 () Bool)

(assert (=> b!4925650 (=> (not res!2102438) (not e!3077698))))

(assert (=> b!4925650 (= res!2102438 (= (csize!29979 (c!838722 input!5492)) (size!37484 (list!17956 (xs!18196 (c!838722 input!5492))))))))

(declare-fun b!4925651 () Bool)

(assert (=> b!4925651 (= e!3077698 (and (> (csize!29979 (c!838722 input!5492)) 0) (<= (csize!29979 (c!838722 input!5492)) 512)))))

(assert (= (and d!1585098 res!2102437) b!4925650))

(assert (= (and b!4925650 res!2102438) b!4925651))

(assert (=> d!1585098 m!5943038))

(assert (=> d!1585098 m!5943038))

(declare-fun m!5943046 () Bool)

(assert (=> d!1585098 m!5943046))

(assert (=> b!4925650 m!5943038))

(assert (=> b!4925650 m!5943038))

(assert (=> b!4925650 m!5943046))

(assert (=> b!4925402 d!1585098))

(declare-fun d!1585100 () Bool)

(declare-fun res!2102448 () Bool)

(declare-fun e!3077704 () Bool)

(assert (=> d!1585100 (=> (not res!2102448) (not e!3077704))))

(assert (=> d!1585100 (= res!2102448 (= (csize!29978 (c!838722 input!5492)) (+ (size!37486 (left!41337 (c!838722 input!5492))) (size!37486 (right!41667 (c!838722 input!5492))))))))

(assert (=> d!1585100 (= (inv!73480 (c!838722 input!5492)) e!3077704)))

(declare-fun b!4925661 () Bool)

(declare-fun res!2102449 () Bool)

(assert (=> b!4925661 (=> (not res!2102449) (not e!3077704))))

(assert (=> b!4925661 (= res!2102449 (and (not (= (left!41337 (c!838722 input!5492)) Empty!14874)) (not (= (right!41667 (c!838722 input!5492)) Empty!14874))))))

(declare-fun b!4925662 () Bool)

(declare-fun res!2102450 () Bool)

(assert (=> b!4925662 (=> (not res!2102450) (not e!3077704))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1984 (Conc!14874) Int)

(assert (=> b!4925662 (= res!2102450 (= (cheight!15085 (c!838722 input!5492)) (+ (max!0 (height!1984 (left!41337 (c!838722 input!5492))) (height!1984 (right!41667 (c!838722 input!5492)))) 1)))))

(declare-fun b!4925663 () Bool)

(assert (=> b!4925663 (= e!3077704 (<= 0 (cheight!15085 (c!838722 input!5492))))))

(assert (= (and d!1585100 res!2102448) b!4925661))

(assert (= (and b!4925661 res!2102449) b!4925662))

(assert (= (and b!4925662 res!2102450) b!4925663))

(declare-fun m!5943052 () Bool)

(assert (=> d!1585100 m!5943052))

(declare-fun m!5943054 () Bool)

(assert (=> d!1585100 m!5943054))

(declare-fun m!5943058 () Bool)

(assert (=> b!4925662 m!5943058))

(declare-fun m!5943060 () Bool)

(assert (=> b!4925662 m!5943060))

(assert (=> b!4925662 m!5943058))

(assert (=> b!4925662 m!5943060))

(declare-fun m!5943062 () Bool)

(assert (=> b!4925662 m!5943062))

(assert (=> b!4925400 d!1585100))

(declare-fun b!4925684 () Bool)

(declare-fun res!2102472 () Bool)

(declare-fun e!3077716 () Bool)

(assert (=> b!4925684 (=> (not res!2102472) (not e!3077716))))

(declare-fun isEmpty!30575 (Conc!14874) Bool)

(assert (=> b!4925684 (= res!2102472 (not (isEmpty!30575 (left!41337 (c!838722 (_1!33894 lt!2026467))))))))

(declare-fun b!4925685 () Bool)

(assert (=> b!4925685 (= e!3077716 (not (isEmpty!30575 (right!41667 (c!838722 (_1!33894 lt!2026467))))))))

(declare-fun d!1585106 () Bool)

(declare-fun res!2102473 () Bool)

(declare-fun e!3077715 () Bool)

(assert (=> d!1585106 (=> res!2102473 e!3077715)))

(assert (=> d!1585106 (= res!2102473 (not ((_ is Node!14874) (c!838722 (_1!33894 lt!2026467)))))))

(assert (=> d!1585106 (= (isBalanced!4087 (c!838722 (_1!33894 lt!2026467))) e!3077715)))

(declare-fun b!4925686 () Bool)

(assert (=> b!4925686 (= e!3077715 e!3077716)))

(declare-fun res!2102474 () Bool)

(assert (=> b!4925686 (=> (not res!2102474) (not e!3077716))))

(assert (=> b!4925686 (= res!2102474 (<= (- 1) (- (height!1984 (left!41337 (c!838722 (_1!33894 lt!2026467)))) (height!1984 (right!41667 (c!838722 (_1!33894 lt!2026467)))))))))

(declare-fun b!4925687 () Bool)

(declare-fun res!2102471 () Bool)

(assert (=> b!4925687 (=> (not res!2102471) (not e!3077716))))

(assert (=> b!4925687 (= res!2102471 (<= (- (height!1984 (left!41337 (c!838722 (_1!33894 lt!2026467)))) (height!1984 (right!41667 (c!838722 (_1!33894 lt!2026467))))) 1))))

(declare-fun b!4925688 () Bool)

(declare-fun res!2102470 () Bool)

(assert (=> b!4925688 (=> (not res!2102470) (not e!3077716))))

(assert (=> b!4925688 (= res!2102470 (isBalanced!4087 (right!41667 (c!838722 (_1!33894 lt!2026467)))))))

(declare-fun b!4925689 () Bool)

(declare-fun res!2102469 () Bool)

(assert (=> b!4925689 (=> (not res!2102469) (not e!3077716))))

(assert (=> b!4925689 (= res!2102469 (isBalanced!4087 (left!41337 (c!838722 (_1!33894 lt!2026467)))))))

(assert (= (and d!1585106 (not res!2102473)) b!4925686))

(assert (= (and b!4925686 res!2102474) b!4925687))

(assert (= (and b!4925687 res!2102471) b!4925689))

(assert (= (and b!4925689 res!2102469) b!4925688))

(assert (= (and b!4925688 res!2102470) b!4925684))

(assert (= (and b!4925684 res!2102472) b!4925685))

(declare-fun m!5943068 () Bool)

(assert (=> b!4925686 m!5943068))

(declare-fun m!5943070 () Bool)

(assert (=> b!4925686 m!5943070))

(assert (=> b!4925687 m!5943068))

(assert (=> b!4925687 m!5943070))

(declare-fun m!5943072 () Bool)

(assert (=> b!4925685 m!5943072))

(declare-fun m!5943074 () Bool)

(assert (=> b!4925689 m!5943074))

(declare-fun m!5943076 () Bool)

(assert (=> b!4925688 m!5943076))

(declare-fun m!5943078 () Bool)

(assert (=> b!4925684 m!5943078))

(assert (=> d!1585066 d!1585106))

(declare-fun e!3077816 () Int)

(declare-fun b!4925870 () Bool)

(declare-fun call!343491 () Int)

(assert (=> b!4925870 (= e!3077816 (- (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) call!343491))))

(declare-fun bm!343484 () Bool)

(declare-fun c!838907 () Bool)

(declare-fun c!838905 () Bool)

(assert (=> bm!343484 (= c!838907 c!838905)))

(declare-fun e!3077821 () Int)

(declare-fun call!343494 () tuple2!61186)

(assert (=> bm!343484 (= call!343494 (splitAt!275 (ite c!838905 (left!41337 (c!838722 input!5492)) (right!41667 (c!838722 input!5492))) e!3077821))))

(declare-fun bm!343485 () Bool)

(declare-fun c!838908 () Bool)

(declare-fun c!838902 () Bool)

(assert (=> bm!343485 (= c!838908 c!838902)))

(declare-fun call!343493 () tuple2!61180)

(declare-fun e!3077819 () List!56815)

(assert (=> bm!343485 (= call!343493 (splitAtIndex!103 e!3077819 (ite c!838902 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) e!3077816)))))

(declare-fun b!4925871 () Bool)

(declare-fun e!3077820 () tuple2!61186)

(assert (=> b!4925871 (= e!3077820 (tuple2!61187 (c!838722 input!5492) Empty!14874))))

(declare-fun call!343492 () Conc!14874)

(declare-fun lt!2026661 () tuple2!61186)

(declare-fun lt!2026656 () tuple2!61186)

(declare-fun bm!343486 () Bool)

(declare-fun ++!12327 (Conc!14874 Conc!14874) Conc!14874)

(assert (=> bm!343486 (= call!343492 (++!12327 (ite c!838905 (_2!33896 lt!2026656) (left!41337 (c!838722 input!5492))) (ite c!838905 (right!41667 (c!838722 input!5492)) (_1!33896 lt!2026661))))))

(declare-fun b!4925872 () Bool)

(declare-fun e!3077818 () tuple2!61186)

(assert (=> b!4925872 (= e!3077818 (tuple2!61187 (left!41337 (c!838722 input!5492)) (right!41667 (c!838722 input!5492))))))

(declare-fun e!3077814 () Bool)

(declare-fun lt!2026653 () tuple2!61186)

(declare-fun b!4925873 () Bool)

(assert (=> b!4925873 (= e!3077814 (= (tuple2!61181 (list!17955 (_1!33896 lt!2026653)) (list!17955 (_2!33896 lt!2026653))) (splitAtIndex!103 (list!17955 (c!838722 input!5492)) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032))))))

(declare-fun b!4925874 () Bool)

(declare-fun e!3077813 () tuple2!61186)

(assert (=> b!4925874 (= e!3077813 (tuple2!61187 (c!838722 input!5492) (c!838722 input!5492)))))

(declare-fun b!4925876 () Bool)

(declare-fun e!3077812 () tuple2!61186)

(assert (=> b!4925876 (= e!3077818 e!3077812)))

(assert (=> b!4925876 (= c!838905 (< (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) (size!37486 (left!41337 (c!838722 input!5492)))))))

(declare-fun b!4925877 () Bool)

(declare-fun c!838904 () Bool)

(declare-fun lt!2026655 () List!56815)

(declare-fun lt!2026649 () List!56815)

(assert (=> b!4925877 (= e!3077819 (ite c!838904 lt!2026649 lt!2026655))))

(declare-fun bm!343487 () Bool)

(declare-fun call!343490 () List!56815)

(declare-fun lt!2026657 () tuple2!61180)

(declare-fun lt!2026650 () tuple2!61180)

(assert (=> bm!343487 (= call!343490 (++!12326 (ite c!838904 (_2!33893 lt!2026657) lt!2026649) (ite c!838904 lt!2026655 (_1!33893 lt!2026650))))))

(declare-fun b!4925878 () Bool)

(declare-fun e!3077817 () tuple2!61180)

(assert (=> b!4925878 (= e!3077817 (tuple2!61181 lt!2026649 lt!2026655))))

(declare-fun b!4925879 () Bool)

(declare-fun e!3077815 () tuple2!61186)

(assert (=> b!4925879 (= e!3077815 (tuple2!61187 Empty!14874 (c!838722 input!5492)))))

(declare-fun b!4925880 () Bool)

(declare-fun lt!2026659 () Unit!147207)

(declare-fun lt!2026651 () Unit!147207)

(assert (=> b!4925880 (= lt!2026659 lt!2026651)))

(declare-fun lt!2026654 () List!56815)

(declare-fun slice!770 (List!56815 Int Int) List!56815)

(assert (=> b!4925880 (= (drop!2226 lt!2026654 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)) (slice!770 lt!2026654 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) call!343491))))

(declare-fun dropLemma!27 (List!56815 Int) Unit!147207)

(assert (=> b!4925880 (= lt!2026651 (dropLemma!27 lt!2026654 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)))))

(assert (=> b!4925880 (= lt!2026654 (list!17956 (xs!18196 (c!838722 input!5492))))))

(declare-fun lt!2026660 () tuple2!61180)

(assert (=> b!4925880 (= lt!2026660 call!343493)))

(declare-fun slice!771 (IArray!29809 Int Int) IArray!29809)

(assert (=> b!4925880 (= e!3077820 (tuple2!61187 (Leaf!24744 (slice!771 (xs!18196 (c!838722 input!5492)) 0 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)) (Leaf!24744 (slice!771 (xs!18196 (c!838722 input!5492)) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) (csize!29979 (c!838722 input!5492))) (- (csize!29979 (c!838722 input!5492)) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)))))))

(declare-fun b!4925881 () Bool)

(declare-fun res!2102527 () Bool)

(assert (=> b!4925881 (=> (not res!2102527) (not e!3077814))))

(assert (=> b!4925881 (= res!2102527 (isBalanced!4087 (_2!33896 lt!2026653)))))

(declare-fun b!4925882 () Bool)

(declare-fun e!3077823 () tuple2!61180)

(assert (=> b!4925882 (= e!3077817 e!3077823)))

(assert (=> b!4925882 (= c!838904 (< (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) call!343491))))

(declare-fun bm!343488 () Bool)

(assert (=> bm!343488 (= call!343491 (size!37484 (ite c!838902 lt!2026654 lt!2026649)))))

(declare-fun b!4925883 () Bool)

(assert (=> b!4925883 (= lt!2026661 call!343494)))

(assert (=> b!4925883 (= e!3077812 (tuple2!61187 call!343492 (_2!33896 lt!2026661)))))

(declare-fun b!4925884 () Bool)

(assert (=> b!4925884 (= e!3077821 (- (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) (size!37486 (left!41337 (c!838722 input!5492)))))))

(declare-fun b!4925885 () Bool)

(assert (=> b!4925885 (= lt!2026656 call!343494)))

(assert (=> b!4925885 (= e!3077812 (tuple2!61187 (_1!33896 lt!2026656) call!343492))))

(declare-fun b!4925886 () Bool)

(declare-fun call!343489 () tuple2!61180)

(assert (=> b!4925886 (= lt!2026650 call!343489)))

(assert (=> b!4925886 (= e!3077823 (tuple2!61181 call!343490 (_2!33893 lt!2026650)))))

(declare-fun bm!343489 () Bool)

(declare-fun c!838901 () Bool)

(assert (=> bm!343489 (= c!838901 c!838904)))

(assert (=> bm!343489 (= call!343489 call!343493)))

(declare-fun c!838906 () Bool)

(declare-fun b!4925887 () Bool)

(assert (=> b!4925887 (= c!838906 (<= (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) 0))))

(declare-fun e!3077822 () tuple2!61186)

(assert (=> b!4925887 (= e!3077822 e!3077815)))

(declare-fun b!4925888 () Bool)

(declare-fun c!838898 () Bool)

(assert (=> b!4925888 (= c!838898 (= (size!37486 (left!41337 (c!838722 input!5492))) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)))))

(declare-fun lt!2026652 () Unit!147207)

(declare-fun lt!2026658 () Unit!147207)

(assert (=> b!4925888 (= lt!2026652 lt!2026658)))

(assert (=> b!4925888 (= (splitAtIndex!103 (++!12326 lt!2026649 lt!2026655) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)) e!3077817)))

(declare-fun c!838899 () Bool)

(assert (=> b!4925888 (= c!838899 (= call!343491 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)))))

(declare-fun splitAtLemma!27 (List!56815 List!56815 Int) Unit!147207)

(assert (=> b!4925888 (= lt!2026658 (splitAtLemma!27 lt!2026649 lt!2026655 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)))))

(assert (=> b!4925888 (= lt!2026655 (list!17955 (right!41667 (c!838722 input!5492))))))

(assert (=> b!4925888 (= lt!2026649 (list!17955 (left!41337 (c!838722 input!5492))))))

(assert (=> b!4925888 (= e!3077822 e!3077818)))

(declare-fun d!1585112 () Bool)

(assert (=> d!1585112 e!3077814))

(declare-fun res!2102528 () Bool)

(assert (=> d!1585112 (=> (not res!2102528) (not e!3077814))))

(assert (=> d!1585112 (= res!2102528 (isBalanced!4087 (_1!33896 lt!2026653)))))

(assert (=> d!1585112 (= lt!2026653 e!3077813)))

(declare-fun c!838903 () Bool)

(assert (=> d!1585112 (= c!838903 ((_ is Empty!14874) (c!838722 input!5492)))))

(assert (=> d!1585112 (isBalanced!4087 (c!838722 input!5492))))

(assert (=> d!1585112 (= (splitAt!275 (c!838722 input!5492) (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032)) lt!2026653)))

(declare-fun b!4925875 () Bool)

(assert (=> b!4925875 (= e!3077819 (list!17956 (xs!18196 (c!838722 input!5492))))))

(declare-fun b!4925889 () Bool)

(assert (=> b!4925889 (= e!3077816 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032))))

(declare-fun b!4925890 () Bool)

(assert (=> b!4925890 (= e!3077821 (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032))))

(declare-fun b!4925891 () Bool)

(assert (=> b!4925891 (= e!3077815 e!3077820)))

(declare-fun c!838900 () Bool)

(assert (=> b!4925891 (= c!838900 (= (findLongestMatchInnerZipperFast!87 z!3559 Nil!56691 0 lt!2026031 input!5492 lt!2026032) (csize!29979 (c!838722 input!5492))))))

(declare-fun b!4925892 () Bool)

(assert (=> b!4925892 (= e!3077813 e!3077822)))

(assert (=> b!4925892 (= c!838902 ((_ is Leaf!24744) (c!838722 input!5492)))))

(declare-fun b!4925893 () Bool)

(assert (=> b!4925893 (= lt!2026657 call!343489)))

(assert (=> b!4925893 (= e!3077823 (tuple2!61181 (_1!33893 lt!2026657) call!343490))))

(assert (= (and d!1585112 c!838903) b!4925874))

(assert (= (and d!1585112 (not c!838903)) b!4925892))

(assert (= (and b!4925892 c!838902) b!4925887))

(assert (= (and b!4925892 (not c!838902)) b!4925888))

(assert (= (and b!4925887 c!838906) b!4925879))

(assert (= (and b!4925887 (not c!838906)) b!4925891))

(assert (= (and b!4925891 c!838900) b!4925871))

(assert (= (and b!4925891 (not c!838900)) b!4925880))

(assert (= (and b!4925888 c!838899) b!4925878))

(assert (= (and b!4925888 (not c!838899)) b!4925882))

(assert (= (and b!4925882 c!838904) b!4925893))

(assert (= (and b!4925882 (not c!838904)) b!4925886))

(assert (= (or b!4925893 b!4925886) bm!343487))

(assert (= (or b!4925893 b!4925886) bm!343489))

(assert (= (and bm!343489 c!838901) b!4925889))

(assert (= (and bm!343489 (not c!838901)) b!4925870))

(assert (= (and b!4925888 c!838898) b!4925872))

(assert (= (and b!4925888 (not c!838898)) b!4925876))

(assert (= (and b!4925876 c!838905) b!4925885))

(assert (= (and b!4925876 (not c!838905)) b!4925883))

(assert (= (or b!4925885 b!4925883) bm!343486))

(assert (= (or b!4925885 b!4925883) bm!343484))

(assert (= (and bm!343484 c!838907) b!4925890))

(assert (= (and bm!343484 (not c!838907)) b!4925884))

(assert (= (or b!4925880 b!4925870 b!4925888 b!4925882) bm!343488))

(assert (= (or b!4925880 bm!343489) bm!343485))

(assert (= (and bm!343485 c!838908) b!4925875))

(assert (= (and bm!343485 (not c!838908)) b!4925877))

(assert (= (and d!1585112 res!2102528) b!4925881))

(assert (= (and b!4925881 res!2102527) b!4925873))

(declare-fun m!5943382 () Bool)

(assert (=> bm!343487 m!5943382))

(declare-fun m!5943384 () Bool)

(assert (=> b!4925881 m!5943384))

(assert (=> b!4925880 m!5942628))

(declare-fun m!5943386 () Bool)

(assert (=> b!4925880 m!5943386))

(assert (=> b!4925880 m!5943038))

(assert (=> b!4925880 m!5942628))

(declare-fun m!5943388 () Bool)

(assert (=> b!4925880 m!5943388))

(assert (=> b!4925880 m!5942628))

(declare-fun m!5943390 () Bool)

(assert (=> b!4925880 m!5943390))

(assert (=> b!4925880 m!5942628))

(declare-fun m!5943392 () Bool)

(assert (=> b!4925880 m!5943392))

(assert (=> b!4925880 m!5942628))

(declare-fun m!5943394 () Bool)

(assert (=> b!4925880 m!5943394))

(declare-fun m!5943396 () Bool)

(assert (=> bm!343488 m!5943396))

(declare-fun m!5943398 () Bool)

(assert (=> bm!343484 m!5943398))

(declare-fun m!5943400 () Bool)

(assert (=> bm!343485 m!5943400))

(assert (=> b!4925876 m!5943052))

(assert (=> b!4925875 m!5943038))

(assert (=> b!4925884 m!5943052))

(declare-fun m!5943402 () Bool)

(assert (=> d!1585112 m!5943402))

(assert (=> d!1585112 m!5942986))

(assert (=> b!4925888 m!5943052))

(assert (=> b!4925888 m!5943032))

(assert (=> b!4925888 m!5943034))

(assert (=> b!4925888 m!5942628))

(declare-fun m!5943404 () Bool)

(assert (=> b!4925888 m!5943404))

(declare-fun m!5943406 () Bool)

(assert (=> b!4925888 m!5943406))

(assert (=> b!4925888 m!5943406))

(assert (=> b!4925888 m!5942628))

(declare-fun m!5943408 () Bool)

(assert (=> b!4925888 m!5943408))

(declare-fun m!5943410 () Bool)

(assert (=> bm!343486 m!5943410))

(declare-fun m!5943412 () Bool)

(assert (=> b!4925873 m!5943412))

(declare-fun m!5943414 () Bool)

(assert (=> b!4925873 m!5943414))

(assert (=> b!4925873 m!5942998))

(assert (=> b!4925873 m!5942998))

(assert (=> b!4925873 m!5942628))

(declare-fun m!5943416 () Bool)

(assert (=> b!4925873 m!5943416))

(assert (=> d!1585066 d!1585112))

(declare-fun b!4925900 () Bool)

(declare-fun res!2102538 () Bool)

(declare-fun e!3077827 () Bool)

(assert (=> b!4925900 (=> (not res!2102538) (not e!3077827))))

(assert (=> b!4925900 (= res!2102538 (not (isEmpty!30575 (left!41337 (c!838722 input!5492)))))))

(declare-fun b!4925901 () Bool)

(assert (=> b!4925901 (= e!3077827 (not (isEmpty!30575 (right!41667 (c!838722 input!5492)))))))

(declare-fun d!1585162 () Bool)

(declare-fun res!2102539 () Bool)

(declare-fun e!3077826 () Bool)

(assert (=> d!1585162 (=> res!2102539 e!3077826)))

(assert (=> d!1585162 (= res!2102539 (not ((_ is Node!14874) (c!838722 input!5492))))))

(assert (=> d!1585162 (= (isBalanced!4087 (c!838722 input!5492)) e!3077826)))

(declare-fun b!4925902 () Bool)

(assert (=> b!4925902 (= e!3077826 e!3077827)))

(declare-fun res!2102540 () Bool)

(assert (=> b!4925902 (=> (not res!2102540) (not e!3077827))))

(assert (=> b!4925902 (= res!2102540 (<= (- 1) (- (height!1984 (left!41337 (c!838722 input!5492))) (height!1984 (right!41667 (c!838722 input!5492))))))))

(declare-fun b!4925903 () Bool)

(declare-fun res!2102537 () Bool)

(assert (=> b!4925903 (=> (not res!2102537) (not e!3077827))))

(assert (=> b!4925903 (= res!2102537 (<= (- (height!1984 (left!41337 (c!838722 input!5492))) (height!1984 (right!41667 (c!838722 input!5492)))) 1))))

(declare-fun b!4925904 () Bool)

(declare-fun res!2102536 () Bool)

(assert (=> b!4925904 (=> (not res!2102536) (not e!3077827))))

(assert (=> b!4925904 (= res!2102536 (isBalanced!4087 (right!41667 (c!838722 input!5492))))))

(declare-fun b!4925905 () Bool)

(declare-fun res!2102535 () Bool)

(assert (=> b!4925905 (=> (not res!2102535) (not e!3077827))))

(assert (=> b!4925905 (= res!2102535 (isBalanced!4087 (left!41337 (c!838722 input!5492))))))

(assert (= (and d!1585162 (not res!2102539)) b!4925902))

(assert (= (and b!4925902 res!2102540) b!4925903))

(assert (= (and b!4925903 res!2102537) b!4925905))

(assert (= (and b!4925905 res!2102535) b!4925904))

(assert (= (and b!4925904 res!2102536) b!4925900))

(assert (= (and b!4925900 res!2102538) b!4925901))

(assert (=> b!4925902 m!5943058))

(assert (=> b!4925902 m!5943060))

(assert (=> b!4925903 m!5943058))

(assert (=> b!4925903 m!5943060))

(declare-fun m!5943418 () Bool)

(assert (=> b!4925901 m!5943418))

(declare-fun m!5943420 () Bool)

(assert (=> b!4925905 m!5943420))

(declare-fun m!5943422 () Bool)

(assert (=> b!4925904 m!5943422))

(declare-fun m!5943424 () Bool)

(assert (=> b!4925900 m!5943424))

(assert (=> d!1585066 d!1585162))

(declare-fun d!1585164 () Bool)

(assert (=> d!1585164 true))

(declare-fun lambda!245257 () Int)

(declare-fun flatMap!265 ((InoxSet Context!6034) Int) (InoxSet Context!6034))

(assert (=> d!1585164 (= (derivationStepZipper!590 z!3559 call!343441) (flatMap!265 z!3559 lambda!245257))))

(declare-fun bs!1179709 () Bool)

(assert (= bs!1179709 d!1585164))

(declare-fun m!5943426 () Bool)

(assert (=> bs!1179709 m!5943426))

(assert (=> bm!343433 d!1585164))

(assert (=> b!4925498 d!1585070))

(declare-fun d!1585166 () Bool)

(declare-fun lt!2026664 () Int)

(assert (=> d!1585166 (>= lt!2026664 0)))

(declare-fun e!3077830 () Int)

(assert (=> d!1585166 (= lt!2026664 e!3077830)))

(declare-fun c!838913 () Bool)

(assert (=> d!1585166 (= c!838913 ((_ is Nil!56691) (list!17953 input!5492)))))

(assert (=> d!1585166 (= (size!37484 (list!17953 input!5492)) lt!2026664)))

(declare-fun b!4925912 () Bool)

(assert (=> b!4925912 (= e!3077830 0)))

(declare-fun b!4925913 () Bool)

(assert (=> b!4925913 (= e!3077830 (+ 1 (size!37484 (t!367269 (list!17953 input!5492)))))))

(assert (= (and d!1585166 c!838913) b!4925912))

(assert (= (and d!1585166 (not c!838913)) b!4925913))

(declare-fun m!5943428 () Bool)

(assert (=> b!4925913 m!5943428))

(assert (=> d!1585060 d!1585166))

(assert (=> d!1585060 d!1585070))

(declare-fun d!1585168 () Bool)

(declare-fun lt!2026667 () Int)

(assert (=> d!1585168 (= lt!2026667 (size!37484 (list!17955 (c!838722 input!5492))))))

(assert (=> d!1585168 (= lt!2026667 (ite ((_ is Empty!14874) (c!838722 input!5492)) 0 (ite ((_ is Leaf!24744) (c!838722 input!5492)) (csize!29979 (c!838722 input!5492)) (csize!29978 (c!838722 input!5492)))))))

(assert (=> d!1585168 (= (size!37486 (c!838722 input!5492)) lt!2026667)))

(declare-fun bs!1179710 () Bool)

(assert (= bs!1179710 d!1585168))

(assert (=> bs!1179710 m!5942998))

(assert (=> bs!1179710 m!5942998))

(declare-fun m!5943430 () Bool)

(assert (=> bs!1179710 m!5943430))

(assert (=> d!1585060 d!1585168))

(declare-fun d!1585170 () Bool)

(declare-fun c!838916 () Bool)

(assert (=> d!1585170 (= c!838916 ((_ is Nil!56691) lt!2026114))))

(declare-fun e!3077833 () (InoxSet C!26960))

(assert (=> d!1585170 (= (content!10071 lt!2026114) e!3077833)))

(declare-fun b!4925918 () Bool)

(assert (=> b!4925918 (= e!3077833 ((as const (Array C!26960 Bool)) false))))

(declare-fun b!4925919 () Bool)

(assert (=> b!4925919 (= e!3077833 ((_ map or) (store ((as const (Array C!26960 Bool)) false) (h!63139 lt!2026114) true) (content!10071 (t!367269 lt!2026114))))))

(assert (= (and d!1585170 c!838916) b!4925918))

(assert (= (and d!1585170 (not c!838916)) b!4925919))

(declare-fun m!5943432 () Bool)

(assert (=> b!4925919 m!5943432))

(declare-fun m!5943434 () Bool)

(assert (=> b!4925919 m!5943434))

(assert (=> d!1585038 d!1585170))

(declare-fun d!1585172 () Bool)

(declare-fun c!838917 () Bool)

(assert (=> d!1585172 (= c!838917 ((_ is Nil!56691) (_1!33893 lt!2026029)))))

(declare-fun e!3077834 () (InoxSet C!26960))

(assert (=> d!1585172 (= (content!10071 (_1!33893 lt!2026029)) e!3077834)))

(declare-fun b!4925920 () Bool)

(assert (=> b!4925920 (= e!3077834 ((as const (Array C!26960 Bool)) false))))

(declare-fun b!4925921 () Bool)

(assert (=> b!4925921 (= e!3077834 ((_ map or) (store ((as const (Array C!26960 Bool)) false) (h!63139 (_1!33893 lt!2026029)) true) (content!10071 (t!367269 (_1!33893 lt!2026029)))))))

(assert (= (and d!1585172 c!838917) b!4925920))

(assert (= (and d!1585172 (not c!838917)) b!4925921))

(declare-fun m!5943436 () Bool)

(assert (=> b!4925921 m!5943436))

(assert (=> b!4925921 m!5943016))

(assert (=> d!1585038 d!1585172))

(declare-fun d!1585174 () Bool)

(declare-fun c!838918 () Bool)

(assert (=> d!1585174 (= c!838918 ((_ is Nil!56691) (_2!33893 lt!2026029)))))

(declare-fun e!3077835 () (InoxSet C!26960))

(assert (=> d!1585174 (= (content!10071 (_2!33893 lt!2026029)) e!3077835)))

(declare-fun b!4925922 () Bool)

(assert (=> b!4925922 (= e!3077835 ((as const (Array C!26960 Bool)) false))))

(declare-fun b!4925923 () Bool)

(assert (=> b!4925923 (= e!3077835 ((_ map or) (store ((as const (Array C!26960 Bool)) false) (h!63139 (_2!33893 lt!2026029)) true) (content!10071 (t!367269 (_2!33893 lt!2026029)))))))

(assert (= (and d!1585174 c!838918) b!4925922))

(assert (= (and d!1585174 (not c!838918)) b!4925923))

(declare-fun m!5943438 () Bool)

(assert (=> b!4925923 m!5943438))

(declare-fun m!5943440 () Bool)

(assert (=> b!4925923 m!5943440))

(assert (=> d!1585038 d!1585174))

(declare-fun bs!1179711 () Bool)

(declare-fun d!1585176 () Bool)

(assert (= bs!1179711 (and d!1585176 d!1585164)))

(declare-fun lambda!245258 () Int)

(assert (=> bs!1179711 (= (= call!343411 call!343441) (= lambda!245258 lambda!245257))))

(assert (=> d!1585176 true))

(assert (=> d!1585176 (= (derivationStepZipper!590 z!3559 call!343411) (flatMap!265 z!3559 lambda!245258))))

(declare-fun bs!1179712 () Bool)

(assert (= bs!1179712 d!1585176))

(declare-fun m!5943442 () Bool)

(assert (=> bs!1179712 m!5943442))

(assert (=> bm!343410 d!1585176))

(declare-fun d!1585178 () Bool)

(declare-fun c!838919 () Bool)

(assert (=> d!1585178 (= c!838919 ((_ is Node!14874) (left!41337 (c!838722 input!5492))))))

(declare-fun e!3077836 () Bool)

(assert (=> d!1585178 (= (inv!73478 (left!41337 (c!838722 input!5492))) e!3077836)))

(declare-fun b!4925924 () Bool)

(assert (=> b!4925924 (= e!3077836 (inv!73480 (left!41337 (c!838722 input!5492))))))

(declare-fun b!4925925 () Bool)

(declare-fun e!3077837 () Bool)

(assert (=> b!4925925 (= e!3077836 e!3077837)))

(declare-fun res!2102541 () Bool)

(assert (=> b!4925925 (= res!2102541 (not ((_ is Leaf!24744) (left!41337 (c!838722 input!5492)))))))

(assert (=> b!4925925 (=> res!2102541 e!3077837)))

(declare-fun b!4925926 () Bool)

(assert (=> b!4925926 (= e!3077837 (inv!73481 (left!41337 (c!838722 input!5492))))))

(assert (= (and d!1585178 c!838919) b!4925924))

(assert (= (and d!1585178 (not c!838919)) b!4925925))

(assert (= (and b!4925925 (not res!2102541)) b!4925926))

(declare-fun m!5943444 () Bool)

(assert (=> b!4925924 m!5943444))

(declare-fun m!5943446 () Bool)

(assert (=> b!4925926 m!5943446))

(assert (=> b!4925604 d!1585178))

(declare-fun d!1585180 () Bool)

(declare-fun c!838920 () Bool)

(assert (=> d!1585180 (= c!838920 ((_ is Node!14874) (right!41667 (c!838722 input!5492))))))

(declare-fun e!3077838 () Bool)

(assert (=> d!1585180 (= (inv!73478 (right!41667 (c!838722 input!5492))) e!3077838)))

(declare-fun b!4925927 () Bool)

(assert (=> b!4925927 (= e!3077838 (inv!73480 (right!41667 (c!838722 input!5492))))))

(declare-fun b!4925928 () Bool)

(declare-fun e!3077839 () Bool)

(assert (=> b!4925928 (= e!3077838 e!3077839)))

(declare-fun res!2102542 () Bool)

(assert (=> b!4925928 (= res!2102542 (not ((_ is Leaf!24744) (right!41667 (c!838722 input!5492)))))))

(assert (=> b!4925928 (=> res!2102542 e!3077839)))

(declare-fun b!4925929 () Bool)

(assert (=> b!4925929 (= e!3077839 (inv!73481 (right!41667 (c!838722 input!5492))))))

(assert (= (and d!1585180 c!838920) b!4925927))

(assert (= (and d!1585180 (not c!838920)) b!4925928))

(assert (= (and b!4925928 (not res!2102542)) b!4925929))

(declare-fun m!5943448 () Bool)

(assert (=> b!4925927 m!5943448))

(declare-fun m!5943450 () Bool)

(assert (=> b!4925929 m!5943450))

(assert (=> b!4925604 d!1585180))

(assert (=> b!4925350 d!1585034))

(declare-fun d!1585182 () Bool)

(assert (=> d!1585182 (= (isEmpty!30573 (_1!33893 lt!2026439)) ((_ is Nil!56691) (_1!33893 lt!2026439)))))

(assert (=> b!4925571 d!1585182))

(declare-fun d!1585184 () Bool)

(assert (=> d!1585184 (= lt!2026031 Nil!56691)))

(declare-fun lt!2026670 () Unit!147207)

(declare-fun choose!36069 (List!56815 List!56815 List!56815) Unit!147207)

(assert (=> d!1585184 (= lt!2026670 (choose!36069 lt!2026031 Nil!56691 lt!2026031))))

(assert (=> d!1585184 (isPrefix!4963 lt!2026031 lt!2026031)))

(assert (=> d!1585184 (= (lemmaIsPrefixSameLengthThenSameList!1121 lt!2026031 Nil!56691 lt!2026031) lt!2026670)))

(declare-fun bs!1179713 () Bool)

(assert (= bs!1179713 d!1585184))

(declare-fun m!5943452 () Bool)

(assert (=> bs!1179713 m!5943452))

(assert (=> bs!1179713 m!5942942))

(assert (=> bm!343439 d!1585184))

(declare-fun d!1585186 () Bool)

(assert (=> d!1585186 (= (tail!9669 lt!2026031) (t!367269 lt!2026031))))

(assert (=> bm!343408 d!1585186))

(assert (=> b!4925583 d!1585186))

(declare-fun d!1585188 () Bool)

(assert (=> d!1585188 (<= (size!37484 Nil!56691) (size!37484 lt!2026031))))

(declare-fun lt!2026673 () Unit!147207)

(declare-fun choose!36070 (List!56815 List!56815) Unit!147207)

(assert (=> d!1585188 (= lt!2026673 (choose!36070 Nil!56691 lt!2026031))))

(assert (=> d!1585188 (isPrefix!4963 Nil!56691 lt!2026031)))

(assert (=> d!1585188 (= (lemmaIsPrefixThenSmallerEqSize!687 Nil!56691 lt!2026031) lt!2026673)))

(declare-fun bs!1179714 () Bool)

(assert (= bs!1179714 d!1585188))

(assert (=> bs!1179714 m!5942882))

(assert (=> bs!1179714 m!5942968))

(declare-fun m!5943454 () Bool)

(assert (=> bs!1179714 m!5943454))

(declare-fun m!5943456 () Bool)

(assert (=> bs!1179714 m!5943456))

(assert (=> b!4925583 d!1585188))

(declare-fun b!4925933 () Bool)

(declare-fun e!3077841 () Bool)

(declare-fun lt!2026674 () List!56815)

(assert (=> b!4925933 (= e!3077841 (or (not (= (Cons!56691 lt!2026444 Nil!56691) Nil!56691)) (= lt!2026674 Nil!56691)))))

(declare-fun b!4925931 () Bool)

(declare-fun e!3077840 () List!56815)

(assert (=> b!4925931 (= e!3077840 (Cons!56691 (h!63139 Nil!56691) (++!12326 (t!367269 Nil!56691) (Cons!56691 lt!2026444 Nil!56691))))))

(declare-fun b!4925930 () Bool)

(assert (=> b!4925930 (= e!3077840 (Cons!56691 lt!2026444 Nil!56691))))

(declare-fun b!4925932 () Bool)

(declare-fun res!2102544 () Bool)

(assert (=> b!4925932 (=> (not res!2102544) (not e!3077841))))

(assert (=> b!4925932 (= res!2102544 (= (size!37484 lt!2026674) (+ (size!37484 Nil!56691) (size!37484 (Cons!56691 lt!2026444 Nil!56691)))))))

(declare-fun d!1585190 () Bool)

(assert (=> d!1585190 e!3077841))

(declare-fun res!2102543 () Bool)

(assert (=> d!1585190 (=> (not res!2102543) (not e!3077841))))

(assert (=> d!1585190 (= res!2102543 (= (content!10071 lt!2026674) ((_ map or) (content!10071 Nil!56691) (content!10071 (Cons!56691 lt!2026444 Nil!56691)))))))

(assert (=> d!1585190 (= lt!2026674 e!3077840)))

(declare-fun c!838921 () Bool)

(assert (=> d!1585190 (= c!838921 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585190 (= (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691)) lt!2026674)))

(assert (= (and d!1585190 c!838921) b!4925930))

(assert (= (and d!1585190 (not c!838921)) b!4925931))

(assert (= (and d!1585190 res!2102543) b!4925932))

(assert (= (and b!4925932 res!2102544) b!4925933))

(declare-fun m!5943458 () Bool)

(assert (=> b!4925931 m!5943458))

(declare-fun m!5943460 () Bool)

(assert (=> b!4925932 m!5943460))

(assert (=> b!4925932 m!5942882))

(declare-fun m!5943462 () Bool)

(assert (=> b!4925932 m!5943462))

(declare-fun m!5943464 () Bool)

(assert (=> d!1585190 m!5943464))

(declare-fun m!5943466 () Bool)

(assert (=> d!1585190 m!5943466))

(declare-fun m!5943468 () Bool)

(assert (=> d!1585190 m!5943468))

(assert (=> b!4925583 d!1585190))

(declare-fun b!4925937 () Bool)

(declare-fun e!3077843 () Bool)

(declare-fun lt!2026675 () List!56815)

(assert (=> b!4925937 (= e!3077843 (or (not (= (Cons!56691 (head!10522 lt!2026031) Nil!56691) Nil!56691)) (= lt!2026675 Nil!56691)))))

(declare-fun b!4925935 () Bool)

(declare-fun e!3077842 () List!56815)

(assert (=> b!4925935 (= e!3077842 (Cons!56691 (h!63139 Nil!56691) (++!12326 (t!367269 Nil!56691) (Cons!56691 (head!10522 lt!2026031) Nil!56691))))))

(declare-fun b!4925934 () Bool)

(assert (=> b!4925934 (= e!3077842 (Cons!56691 (head!10522 lt!2026031) Nil!56691))))

(declare-fun b!4925936 () Bool)

(declare-fun res!2102546 () Bool)

(assert (=> b!4925936 (=> (not res!2102546) (not e!3077843))))

(assert (=> b!4925936 (= res!2102546 (= (size!37484 lt!2026675) (+ (size!37484 Nil!56691) (size!37484 (Cons!56691 (head!10522 lt!2026031) Nil!56691)))))))

(declare-fun d!1585192 () Bool)

(assert (=> d!1585192 e!3077843))

(declare-fun res!2102545 () Bool)

(assert (=> d!1585192 (=> (not res!2102545) (not e!3077843))))

(assert (=> d!1585192 (= res!2102545 (= (content!10071 lt!2026675) ((_ map or) (content!10071 Nil!56691) (content!10071 (Cons!56691 (head!10522 lt!2026031) Nil!56691)))))))

(assert (=> d!1585192 (= lt!2026675 e!3077842)))

(declare-fun c!838922 () Bool)

(assert (=> d!1585192 (= c!838922 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585192 (= (++!12326 Nil!56691 (Cons!56691 (head!10522 lt!2026031) Nil!56691)) lt!2026675)))

(assert (= (and d!1585192 c!838922) b!4925934))

(assert (= (and d!1585192 (not c!838922)) b!4925935))

(assert (= (and d!1585192 res!2102545) b!4925936))

(assert (= (and b!4925936 res!2102546) b!4925937))

(declare-fun m!5943470 () Bool)

(assert (=> b!4925935 m!5943470))

(declare-fun m!5943472 () Bool)

(assert (=> b!4925936 m!5943472))

(assert (=> b!4925936 m!5942882))

(declare-fun m!5943474 () Bool)

(assert (=> b!4925936 m!5943474))

(declare-fun m!5943476 () Bool)

(assert (=> d!1585192 m!5943476))

(assert (=> d!1585192 m!5943466))

(declare-fun m!5943478 () Bool)

(assert (=> d!1585192 m!5943478))

(assert (=> b!4925583 d!1585192))

(declare-fun b!4925948 () Bool)

(declare-fun e!3077851 () Bool)

(assert (=> b!4925948 (= e!3077851 (isPrefix!4963 (tail!9669 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691))) (tail!9669 lt!2026031)))))

(declare-fun b!4925949 () Bool)

(declare-fun e!3077850 () Bool)

(assert (=> b!4925949 (= e!3077850 (>= (size!37484 lt!2026031) (size!37484 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691)))))))

(declare-fun d!1585194 () Bool)

(assert (=> d!1585194 e!3077850))

(declare-fun res!2102557 () Bool)

(assert (=> d!1585194 (=> res!2102557 e!3077850)))

(declare-fun lt!2026678 () Bool)

(assert (=> d!1585194 (= res!2102557 (not lt!2026678))))

(declare-fun e!3077852 () Bool)

(assert (=> d!1585194 (= lt!2026678 e!3077852)))

(declare-fun res!2102558 () Bool)

(assert (=> d!1585194 (=> res!2102558 e!3077852)))

(assert (=> d!1585194 (= res!2102558 ((_ is Nil!56691) (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691))))))

(assert (=> d!1585194 (= (isPrefix!4963 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691)) lt!2026031) lt!2026678)))

(declare-fun b!4925947 () Bool)

(declare-fun res!2102555 () Bool)

(assert (=> b!4925947 (=> (not res!2102555) (not e!3077851))))

(assert (=> b!4925947 (= res!2102555 (= (head!10522 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691))) (head!10522 lt!2026031)))))

(declare-fun b!4925946 () Bool)

(assert (=> b!4925946 (= e!3077852 e!3077851)))

(declare-fun res!2102556 () Bool)

(assert (=> b!4925946 (=> (not res!2102556) (not e!3077851))))

(assert (=> b!4925946 (= res!2102556 (not ((_ is Nil!56691) lt!2026031)))))

(assert (= (and d!1585194 (not res!2102558)) b!4925946))

(assert (= (and b!4925946 res!2102556) b!4925947))

(assert (= (and b!4925947 res!2102555) b!4925948))

(assert (= (and d!1585194 (not res!2102557)) b!4925949))

(assert (=> b!4925948 m!5942958))

(declare-fun m!5943480 () Bool)

(assert (=> b!4925948 m!5943480))

(assert (=> b!4925948 m!5942838))

(assert (=> b!4925948 m!5943480))

(assert (=> b!4925948 m!5942838))

(declare-fun m!5943482 () Bool)

(assert (=> b!4925948 m!5943482))

(assert (=> b!4925949 m!5942968))

(assert (=> b!4925949 m!5942958))

(declare-fun m!5943484 () Bool)

(assert (=> b!4925949 m!5943484))

(assert (=> b!4925947 m!5942958))

(declare-fun m!5943486 () Bool)

(assert (=> b!4925947 m!5943486))

(assert (=> b!4925947 m!5942970))

(assert (=> b!4925583 d!1585194))

(declare-fun d!1585196 () Bool)

(declare-fun lt!2026679 () Int)

(assert (=> d!1585196 (>= lt!2026679 0)))

(declare-fun e!3077853 () Int)

(assert (=> d!1585196 (= lt!2026679 e!3077853)))

(declare-fun c!838923 () Bool)

(assert (=> d!1585196 (= c!838923 ((_ is Nil!56691) lt!2026031))))

(assert (=> d!1585196 (= (size!37484 lt!2026031) lt!2026679)))

(declare-fun b!4925950 () Bool)

(assert (=> b!4925950 (= e!3077853 0)))

(declare-fun b!4925951 () Bool)

(assert (=> b!4925951 (= e!3077853 (+ 1 (size!37484 (t!367269 lt!2026031))))))

(assert (= (and d!1585196 c!838923) b!4925950))

(assert (= (and d!1585196 (not c!838923)) b!4925951))

(declare-fun m!5943488 () Bool)

(assert (=> b!4925951 m!5943488))

(assert (=> b!4925583 d!1585196))

(declare-fun d!1585198 () Bool)

(declare-fun lt!2026680 () Int)

(assert (=> d!1585198 (>= lt!2026680 0)))

(declare-fun e!3077854 () Int)

(assert (=> d!1585198 (= lt!2026680 e!3077854)))

(declare-fun c!838924 () Bool)

(assert (=> d!1585198 (= c!838924 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585198 (= (size!37484 Nil!56691) lt!2026680)))

(declare-fun b!4925952 () Bool)

(assert (=> b!4925952 (= e!3077854 0)))

(declare-fun b!4925953 () Bool)

(assert (=> b!4925953 (= e!3077854 (+ 1 (size!37484 (t!367269 Nil!56691))))))

(assert (= (and d!1585198 c!838924) b!4925952))

(assert (= (and d!1585198 (not c!838924)) b!4925953))

(declare-fun m!5943490 () Bool)

(assert (=> b!4925953 m!5943490))

(assert (=> b!4925583 d!1585198))

(declare-fun b!4925957 () Bool)

(declare-fun e!3077856 () Bool)

(declare-fun lt!2026681 () List!56815)

(assert (=> b!4925957 (= e!3077856 (or (not (= (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691) Nil!56691)) (= lt!2026681 Nil!56691)))))

(declare-fun b!4925955 () Bool)

(declare-fun e!3077855 () List!56815)

(assert (=> b!4925955 (= e!3077855 (Cons!56691 (h!63139 Nil!56691) (++!12326 (t!367269 Nil!56691) (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691))))))

(declare-fun b!4925954 () Bool)

(assert (=> b!4925954 (= e!3077855 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691))))

(declare-fun b!4925956 () Bool)

(declare-fun res!2102560 () Bool)

(assert (=> b!4925956 (=> (not res!2102560) (not e!3077856))))

(assert (=> b!4925956 (= res!2102560 (= (size!37484 lt!2026681) (+ (size!37484 Nil!56691) (size!37484 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691)))))))

(declare-fun d!1585200 () Bool)

(assert (=> d!1585200 e!3077856))

(declare-fun res!2102559 () Bool)

(assert (=> d!1585200 (=> (not res!2102559) (not e!3077856))))

(assert (=> d!1585200 (= res!2102559 (= (content!10071 lt!2026681) ((_ map or) (content!10071 Nil!56691) (content!10071 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691)))))))

(assert (=> d!1585200 (= lt!2026681 e!3077855)))

(declare-fun c!838925 () Bool)

(assert (=> d!1585200 (= c!838925 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585200 (= (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691)) lt!2026681)))

(assert (= (and d!1585200 c!838925) b!4925954))

(assert (= (and d!1585200 (not c!838925)) b!4925955))

(assert (= (and d!1585200 res!2102559) b!4925956))

(assert (= (and b!4925956 res!2102560) b!4925957))

(declare-fun m!5943492 () Bool)

(assert (=> b!4925955 m!5943492))

(declare-fun m!5943494 () Bool)

(assert (=> b!4925956 m!5943494))

(assert (=> b!4925956 m!5942882))

(declare-fun m!5943496 () Bool)

(assert (=> b!4925956 m!5943496))

(declare-fun m!5943498 () Bool)

(assert (=> d!1585200 m!5943498))

(assert (=> d!1585200 m!5943466))

(declare-fun m!5943500 () Bool)

(assert (=> d!1585200 m!5943500))

(assert (=> b!4925583 d!1585200))

(declare-fun d!1585202 () Bool)

(declare-fun lt!2026684 () List!56815)

(assert (=> d!1585202 (= (++!12326 Nil!56691 lt!2026684) lt!2026031)))

(declare-fun e!3077859 () List!56815)

(assert (=> d!1585202 (= lt!2026684 e!3077859)))

(declare-fun c!838928 () Bool)

(assert (=> d!1585202 (= c!838928 ((_ is Cons!56691) Nil!56691))))

(assert (=> d!1585202 (>= (size!37484 lt!2026031) (size!37484 Nil!56691))))

(assert (=> d!1585202 (= (getSuffix!2951 lt!2026031 Nil!56691) lt!2026684)))

(declare-fun b!4925962 () Bool)

(assert (=> b!4925962 (= e!3077859 (getSuffix!2951 (tail!9669 lt!2026031) (t!367269 Nil!56691)))))

(declare-fun b!4925963 () Bool)

(assert (=> b!4925963 (= e!3077859 lt!2026031)))

(assert (= (and d!1585202 c!838928) b!4925962))

(assert (= (and d!1585202 (not c!838928)) b!4925963))

(declare-fun m!5943502 () Bool)

(assert (=> d!1585202 m!5943502))

(assert (=> d!1585202 m!5942968))

(assert (=> d!1585202 m!5942882))

(assert (=> b!4925962 m!5942838))

(assert (=> b!4925962 m!5942838))

(declare-fun m!5943504 () Bool)

(assert (=> b!4925962 m!5943504))

(assert (=> b!4925583 d!1585202))

(declare-fun e!3077861 () Bool)

(declare-fun b!4925967 () Bool)

(declare-fun lt!2026685 () List!56815)

(assert (=> b!4925967 (= e!3077861 (or (not (= lt!2026447 Nil!56691)) (= lt!2026685 (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691)))))))

(declare-fun b!4925965 () Bool)

(declare-fun e!3077860 () List!56815)

(assert (=> b!4925965 (= e!3077860 (Cons!56691 (h!63139 (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691))) (++!12326 (t!367269 (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691))) lt!2026447)))))

(declare-fun b!4925964 () Bool)

(assert (=> b!4925964 (= e!3077860 lt!2026447)))

(declare-fun b!4925966 () Bool)

(declare-fun res!2102562 () Bool)

(assert (=> b!4925966 (=> (not res!2102562) (not e!3077861))))

(assert (=> b!4925966 (= res!2102562 (= (size!37484 lt!2026685) (+ (size!37484 (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691))) (size!37484 lt!2026447))))))

(declare-fun d!1585204 () Bool)

(assert (=> d!1585204 e!3077861))

(declare-fun res!2102561 () Bool)

(assert (=> d!1585204 (=> (not res!2102561) (not e!3077861))))

(assert (=> d!1585204 (= res!2102561 (= (content!10071 lt!2026685) ((_ map or) (content!10071 (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691))) (content!10071 lt!2026447))))))

(assert (=> d!1585204 (= lt!2026685 e!3077860)))

(declare-fun c!838929 () Bool)

(assert (=> d!1585204 (= c!838929 ((_ is Nil!56691) (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691))))))

(assert (=> d!1585204 (= (++!12326 (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691)) lt!2026447) lt!2026685)))

(assert (= (and d!1585204 c!838929) b!4925964))

(assert (= (and d!1585204 (not c!838929)) b!4925965))

(assert (= (and d!1585204 res!2102561) b!4925966))

(assert (= (and b!4925966 res!2102562) b!4925967))

(declare-fun m!5943506 () Bool)

(assert (=> b!4925965 m!5943506))

(declare-fun m!5943508 () Bool)

(assert (=> b!4925966 m!5943508))

(assert (=> b!4925966 m!5942962))

(declare-fun m!5943510 () Bool)

(assert (=> b!4925966 m!5943510))

(declare-fun m!5943512 () Bool)

(assert (=> b!4925966 m!5943512))

(declare-fun m!5943514 () Bool)

(assert (=> d!1585204 m!5943514))

(assert (=> d!1585204 m!5942962))

(declare-fun m!5943516 () Bool)

(assert (=> d!1585204 m!5943516))

(declare-fun m!5943518 () Bool)

(assert (=> d!1585204 m!5943518))

(assert (=> b!4925583 d!1585204))

(declare-fun d!1585206 () Bool)

(assert (=> d!1585206 (isPrefix!4963 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) Nil!56691)) lt!2026031)))

(declare-fun lt!2026688 () Unit!147207)

(declare-fun choose!36072 (List!56815 List!56815) Unit!147207)

(assert (=> d!1585206 (= lt!2026688 (choose!36072 Nil!56691 lt!2026031))))

(assert (=> d!1585206 (isPrefix!4963 Nil!56691 lt!2026031)))

(assert (=> d!1585206 (= (lemmaAddHeadSuffixToPrefixStillPrefix!775 Nil!56691 lt!2026031) lt!2026688)))

(declare-fun bs!1179715 () Bool)

(assert (= bs!1179715 d!1585206))

(assert (=> bs!1179715 m!5942952))

(assert (=> bs!1179715 m!5942958))

(assert (=> bs!1179715 m!5942952))

(assert (=> bs!1179715 m!5942960))

(declare-fun m!5943520 () Bool)

(assert (=> bs!1179715 m!5943520))

(assert (=> bs!1179715 m!5943456))

(assert (=> bs!1179715 m!5942958))

(assert (=> bs!1179715 m!5942978))

(assert (=> b!4925583 d!1585206))

(declare-fun d!1585208 () Bool)

(assert (=> d!1585208 (= (head!10522 (getSuffix!2951 lt!2026031 Nil!56691)) (h!63139 (getSuffix!2951 lt!2026031 Nil!56691)))))

(assert (=> b!4925583 d!1585208))

(declare-fun d!1585210 () Bool)

(assert (=> d!1585210 (= (++!12326 (++!12326 Nil!56691 (Cons!56691 lt!2026444 Nil!56691)) lt!2026447) lt!2026031)))

(declare-fun lt!2026691 () Unit!147207)

(declare-fun choose!36073 (List!56815 C!26960 List!56815 List!56815) Unit!147207)

(assert (=> d!1585210 (= lt!2026691 (choose!36073 Nil!56691 lt!2026444 lt!2026447 lt!2026031))))

(assert (=> d!1585210 (= (++!12326 Nil!56691 (Cons!56691 lt!2026444 lt!2026447)) lt!2026031)))

(assert (=> d!1585210 (= (lemmaMoveElementToOtherListKeepsConcatEq!1393 Nil!56691 lt!2026444 lt!2026447 lt!2026031) lt!2026691)))

(declare-fun bs!1179716 () Bool)

(assert (= bs!1179716 d!1585210))

(assert (=> bs!1179716 m!5942962))

(assert (=> bs!1179716 m!5942962))

(assert (=> bs!1179716 m!5942964))

(declare-fun m!5943522 () Bool)

(assert (=> bs!1179716 m!5943522))

(declare-fun m!5943524 () Bool)

(assert (=> bs!1179716 m!5943524))

(assert (=> b!4925583 d!1585210))

(declare-fun d!1585212 () Bool)

(assert (=> d!1585212 (= (head!10522 lt!2026031) (h!63139 lt!2026031))))

(assert (=> b!4925583 d!1585212))

(declare-fun d!1585214 () Bool)

(declare-fun lt!2026692 () Int)

(assert (=> d!1585214 (>= lt!2026692 0)))

(declare-fun e!3077862 () Int)

(assert (=> d!1585214 (= lt!2026692 e!3077862)))

(declare-fun c!838930 () Bool)

(assert (=> d!1585214 (= c!838930 ((_ is Nil!56691) lt!2026115))))

(assert (=> d!1585214 (= (size!37484 lt!2026115) lt!2026692)))

(declare-fun b!4925968 () Bool)

(assert (=> b!4925968 (= e!3077862 0)))

(declare-fun b!4925969 () Bool)

(assert (=> b!4925969 (= e!3077862 (+ 1 (size!37484 (t!367269 lt!2026115))))))

(assert (= (and d!1585214 c!838930) b!4925968))

(assert (= (and d!1585214 (not c!838930)) b!4925969))

(declare-fun m!5943526 () Bool)

(assert (=> b!4925969 m!5943526))

(assert (=> b!4925417 d!1585214))

(declare-fun d!1585216 () Bool)

(declare-fun lt!2026693 () Int)

(assert (=> d!1585216 (>= lt!2026693 0)))

(declare-fun e!3077863 () Int)

(assert (=> d!1585216 (= lt!2026693 e!3077863)))

(declare-fun c!838931 () Bool)

(assert (=> d!1585216 (= c!838931 ((_ is Nil!56691) lt!2026030))))

(assert (=> d!1585216 (= (size!37484 lt!2026030) lt!2026693)))

(declare-fun b!4925970 () Bool)

(assert (=> b!4925970 (= e!3077863 0)))

(declare-fun b!4925971 () Bool)

(assert (=> b!4925971 (= e!3077863 (+ 1 (size!37484 (t!367269 lt!2026030))))))

(assert (= (and d!1585216 c!838931) b!4925970))

(assert (= (and d!1585216 (not c!838931)) b!4925971))

(declare-fun m!5943528 () Bool)

(assert (=> b!4925971 m!5943528))

(assert (=> b!4925417 d!1585216))

(declare-fun d!1585218 () Bool)

(declare-fun lt!2026694 () Int)

(assert (=> d!1585218 (>= lt!2026694 0)))

(declare-fun e!3077864 () Int)

(assert (=> d!1585218 (= lt!2026694 e!3077864)))

(declare-fun c!838932 () Bool)

(assert (=> d!1585218 (= c!838932 ((_ is Nil!56691) lt!2026028))))

(assert (=> d!1585218 (= (size!37484 lt!2026028) lt!2026694)))

(declare-fun b!4925972 () Bool)

(assert (=> b!4925972 (= e!3077864 0)))

(declare-fun b!4925973 () Bool)

(assert (=> b!4925973 (= e!3077864 (+ 1 (size!37484 (t!367269 lt!2026028))))))

(assert (= (and d!1585218 c!838932) b!4925972))

(assert (= (and d!1585218 (not c!838932)) b!4925973))

(declare-fun m!5943530 () Bool)

(assert (=> b!4925973 m!5943530))

(assert (=> b!4925417 d!1585218))

(declare-fun b!4925976 () Bool)

(declare-fun e!3077866 () Bool)

(assert (=> b!4925976 (= e!3077866 (isPrefix!4963 (tail!9669 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691))) (tail!9669 lt!2026359)))))

(declare-fun b!4925977 () Bool)

(declare-fun e!3077865 () Bool)

(assert (=> b!4925977 (= e!3077865 (>= (size!37484 lt!2026359) (size!37484 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691)))))))

(declare-fun d!1585220 () Bool)

(assert (=> d!1585220 e!3077865))

(declare-fun res!2102565 () Bool)

(assert (=> d!1585220 (=> res!2102565 e!3077865)))

(declare-fun lt!2026695 () Bool)

(assert (=> d!1585220 (= res!2102565 (not lt!2026695))))

(declare-fun e!3077867 () Bool)

(assert (=> d!1585220 (= lt!2026695 e!3077867)))

(declare-fun res!2102566 () Bool)

(assert (=> d!1585220 (=> res!2102566 e!3077867)))

(assert (=> d!1585220 (= res!2102566 ((_ is Nil!56691) (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691))))))

(assert (=> d!1585220 (= (isPrefix!4963 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691)) lt!2026359) lt!2026695)))

(declare-fun b!4925975 () Bool)

(declare-fun res!2102563 () Bool)

(assert (=> b!4925975 (=> (not res!2102563) (not e!3077866))))

(assert (=> b!4925975 (= res!2102563 (= (head!10522 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691))) (head!10522 lt!2026359)))))

(declare-fun b!4925974 () Bool)

(assert (=> b!4925974 (= e!3077867 e!3077866)))

(declare-fun res!2102564 () Bool)

(assert (=> b!4925974 (=> (not res!2102564) (not e!3077866))))

(assert (=> b!4925974 (= res!2102564 (not ((_ is Nil!56691) lt!2026359)))))

(assert (= (and d!1585220 (not res!2102566)) b!4925974))

(assert (= (and b!4925974 res!2102564) b!4925975))

(assert (= (and b!4925975 res!2102563) b!4925976))

(assert (= (and d!1585220 (not res!2102565)) b!4925977))

(assert (=> b!4925976 m!5942870))

(declare-fun m!5943532 () Bool)

(assert (=> b!4925976 m!5943532))

(declare-fun m!5943534 () Bool)

(assert (=> b!4925976 m!5943534))

(assert (=> b!4925976 m!5943532))

(assert (=> b!4925976 m!5943534))

(declare-fun m!5943536 () Bool)

(assert (=> b!4925976 m!5943536))

(declare-fun m!5943538 () Bool)

(assert (=> b!4925977 m!5943538))

(assert (=> b!4925977 m!5942870))

(declare-fun m!5943540 () Bool)

(assert (=> b!4925977 m!5943540))

(assert (=> b!4925975 m!5942870))

(declare-fun m!5943542 () Bool)

(assert (=> b!4925975 m!5943542))

(declare-fun m!5943544 () Bool)

(assert (=> b!4925975 m!5943544))

(assert (=> b!4925506 d!1585220))

(assert (=> b!4925506 d!1585198))

(declare-fun b!4925981 () Bool)

(declare-fun e!3077869 () Bool)

(declare-fun lt!2026696 () List!56815)

(assert (=> b!4925981 (= e!3077869 (or (not (= (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691) Nil!56691)) (= lt!2026696 Nil!56691)))))

(declare-fun b!4925979 () Bool)

(declare-fun e!3077868 () List!56815)

(assert (=> b!4925979 (= e!3077868 (Cons!56691 (h!63139 Nil!56691) (++!12326 (t!367269 Nil!56691) (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691))))))

(declare-fun b!4925978 () Bool)

(assert (=> b!4925978 (= e!3077868 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691))))

(declare-fun b!4925980 () Bool)

(declare-fun res!2102568 () Bool)

(assert (=> b!4925980 (=> (not res!2102568) (not e!3077869))))

(assert (=> b!4925980 (= res!2102568 (= (size!37484 lt!2026696) (+ (size!37484 Nil!56691) (size!37484 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691)))))))

(declare-fun d!1585222 () Bool)

(assert (=> d!1585222 e!3077869))

(declare-fun res!2102567 () Bool)

(assert (=> d!1585222 (=> (not res!2102567) (not e!3077869))))

(assert (=> d!1585222 (= res!2102567 (= (content!10071 lt!2026696) ((_ map or) (content!10071 Nil!56691) (content!10071 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691)))))))

(assert (=> d!1585222 (= lt!2026696 e!3077868)))

(declare-fun c!838933 () Bool)

(assert (=> d!1585222 (= c!838933 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585222 (= (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691)) lt!2026696)))

(assert (= (and d!1585222 c!838933) b!4925978))

(assert (= (and d!1585222 (not c!838933)) b!4925979))

(assert (= (and d!1585222 res!2102567) b!4925980))

(assert (= (and b!4925980 res!2102568) b!4925981))

(declare-fun m!5943546 () Bool)

(assert (=> b!4925979 m!5943546))

(declare-fun m!5943548 () Bool)

(assert (=> b!4925980 m!5943548))

(assert (=> b!4925980 m!5942882))

(declare-fun m!5943550 () Bool)

(assert (=> b!4925980 m!5943550))

(declare-fun m!5943552 () Bool)

(assert (=> d!1585222 m!5943552))

(assert (=> d!1585222 m!5943466))

(declare-fun m!5943554 () Bool)

(assert (=> d!1585222 m!5943554))

(assert (=> b!4925506 d!1585222))

(declare-fun d!1585224 () Bool)

(assert (=> d!1585224 (= (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) (h!63139 (getSuffix!2951 lt!2026359 Nil!56691)))))

(assert (=> b!4925506 d!1585224))

(declare-fun d!1585226 () Bool)

(declare-fun lt!2026725 () C!26960)

(declare-fun contains!19456 (List!56815 C!26960) Bool)

(assert (=> d!1585226 (contains!19456 lt!2026334 lt!2026725)))

(declare-fun e!3077893 () C!26960)

(assert (=> d!1585226 (= lt!2026725 e!3077893)))

(declare-fun c!838954 () Bool)

(assert (=> d!1585226 (= c!838954 (= 0 0))))

(declare-fun e!3077892 () Bool)

(assert (=> d!1585226 e!3077892))

(declare-fun res!2102571 () Bool)

(assert (=> d!1585226 (=> (not res!2102571) (not e!3077892))))

(assert (=> d!1585226 (= res!2102571 (<= 0 0))))

(assert (=> d!1585226 (= (apply!13664 lt!2026334 0) lt!2026725)))

(declare-fun b!4926024 () Bool)

(assert (=> b!4926024 (= e!3077892 (< 0 (size!37484 lt!2026334)))))

(declare-fun b!4926025 () Bool)

(assert (=> b!4926025 (= e!3077893 (head!10522 lt!2026334))))

(declare-fun b!4926026 () Bool)

(assert (=> b!4926026 (= e!3077893 (apply!13664 (tail!9669 lt!2026334) (- 0 1)))))

(assert (= (and d!1585226 res!2102571) b!4926024))

(assert (= (and d!1585226 c!838954) b!4926025))

(assert (= (and d!1585226 (not c!838954)) b!4926026))

(declare-fun m!5943556 () Bool)

(assert (=> d!1585226 m!5943556))

(declare-fun m!5943558 () Bool)

(assert (=> b!4926024 m!5943558))

(declare-fun m!5943560 () Bool)

(assert (=> b!4926025 m!5943560))

(declare-fun m!5943562 () Bool)

(assert (=> b!4926026 m!5943562))

(assert (=> b!4926026 m!5943562))

(declare-fun m!5943564 () Bool)

(assert (=> b!4926026 m!5943564))

(assert (=> b!4925506 d!1585226))

(declare-fun bm!343504 () Bool)

(declare-fun call!343509 () Int)

(assert (=> bm!343504 (= call!343509 (size!37484 lt!2026334))))

(declare-fun b!4926057 () Bool)

(declare-fun e!3077913 () Int)

(assert (=> b!4926057 (= e!3077913 call!343509)))

(declare-fun b!4926058 () Bool)

(declare-fun e!3077912 () Int)

(assert (=> b!4926058 (= e!3077912 0)))

(declare-fun b!4926059 () Bool)

(declare-fun e!3077911 () List!56815)

(declare-fun e!3077914 () List!56815)

(assert (=> b!4926059 (= e!3077911 e!3077914)))

(declare-fun c!838970 () Bool)

(assert (=> b!4926059 (= c!838970 (<= 0 0))))

(declare-fun b!4926060 () Bool)

(declare-fun e!3077910 () Bool)

(declare-fun lt!2026728 () List!56815)

(assert (=> b!4926060 (= e!3077910 (= (size!37484 lt!2026728) e!3077913))))

(declare-fun c!838969 () Bool)

(assert (=> b!4926060 (= c!838969 (<= 0 0))))

(declare-fun b!4926061 () Bool)

(assert (=> b!4926061 (= e!3077912 (- call!343509 0))))

(declare-fun b!4926063 () Bool)

(assert (=> b!4926063 (= e!3077914 (drop!2226 (t!367269 lt!2026334) (- 0 1)))))

(declare-fun b!4926062 () Bool)

(assert (=> b!4926062 (= e!3077914 lt!2026334)))

(declare-fun d!1585228 () Bool)

(assert (=> d!1585228 e!3077910))

(declare-fun res!2102578 () Bool)

(assert (=> d!1585228 (=> (not res!2102578) (not e!3077910))))

(assert (=> d!1585228 (= res!2102578 (= ((_ map implies) (content!10071 lt!2026728) (content!10071 lt!2026334)) ((as const (InoxSet C!26960)) true)))))

(assert (=> d!1585228 (= lt!2026728 e!3077911)))

(declare-fun c!838968 () Bool)

(assert (=> d!1585228 (= c!838968 ((_ is Nil!56691) lt!2026334))))

(assert (=> d!1585228 (= (drop!2226 lt!2026334 0) lt!2026728)))

(declare-fun b!4926064 () Bool)

(assert (=> b!4926064 (= e!3077913 e!3077912)))

(declare-fun c!838967 () Bool)

(assert (=> b!4926064 (= c!838967 (>= 0 call!343509))))

(declare-fun b!4926065 () Bool)

(assert (=> b!4926065 (= e!3077911 Nil!56691)))

(assert (= (and d!1585228 c!838968) b!4926065))

(assert (= (and d!1585228 (not c!838968)) b!4926059))

(assert (= (and b!4926059 c!838970) b!4926062))

(assert (= (and b!4926059 (not c!838970)) b!4926063))

(assert (= (and d!1585228 res!2102578) b!4926060))

(assert (= (and b!4926060 c!838969) b!4926057))

(assert (= (and b!4926060 (not c!838969)) b!4926064))

(assert (= (and b!4926064 c!838967) b!4926058))

(assert (= (and b!4926064 (not c!838967)) b!4926061))

(assert (= (or b!4926057 b!4926064 b!4926061) bm!343504))

(assert (=> bm!343504 m!5943558))

(declare-fun m!5943566 () Bool)

(assert (=> b!4926060 m!5943566))

(declare-fun m!5943568 () Bool)

(assert (=> b!4926063 m!5943568))

(declare-fun m!5943570 () Bool)

(assert (=> d!1585228 m!5943570))

(declare-fun m!5943572 () Bool)

(assert (=> d!1585228 m!5943572))

(assert (=> b!4925506 d!1585228))

(declare-fun d!1585230 () Bool)

(assert (=> d!1585230 (= (++!12326 (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691)) lt!2026351) lt!2026349)))

(declare-fun lt!2026729 () Unit!147207)

(assert (=> d!1585230 (= lt!2026729 (choose!36073 Nil!56691 lt!2026362 lt!2026351 lt!2026349))))

(assert (=> d!1585230 (= (++!12326 Nil!56691 (Cons!56691 lt!2026362 lt!2026351)) lt!2026349)))

(assert (=> d!1585230 (= (lemmaMoveElementToOtherListKeepsConcatEq!1393 Nil!56691 lt!2026362 lt!2026351 lt!2026349) lt!2026729)))

(declare-fun bs!1179717 () Bool)

(assert (= bs!1179717 d!1585230))

(assert (=> bs!1179717 m!5942888))

(assert (=> bs!1179717 m!5942888))

(assert (=> bs!1179717 m!5942900))

(declare-fun m!5943574 () Bool)

(assert (=> bs!1179717 m!5943574))

(declare-fun m!5943576 () Bool)

(assert (=> bs!1179717 m!5943576))

(assert (=> b!4925506 d!1585230))

(declare-fun d!1585232 () Bool)

(declare-fun lt!2026732 () C!26960)

(assert (=> d!1585232 (= lt!2026732 (apply!13664 (list!17953 input!5492) 0))))

(declare-fun apply!13666 (Conc!14874 Int) C!26960)

(assert (=> d!1585232 (= lt!2026732 (apply!13666 (c!838722 input!5492) 0))))

(declare-fun e!3077917 () Bool)

(assert (=> d!1585232 e!3077917))

(declare-fun res!2102581 () Bool)

(assert (=> d!1585232 (=> (not res!2102581) (not e!3077917))))

(assert (=> d!1585232 (= res!2102581 (<= 0 0))))

(assert (=> d!1585232 (= (apply!13663 input!5492 0) lt!2026732)))

(declare-fun b!4926068 () Bool)

(assert (=> b!4926068 (= e!3077917 (< 0 (size!37482 input!5492)))))

(assert (= (and d!1585232 res!2102581) b!4926068))

(assert (=> d!1585232 m!5942636))

(assert (=> d!1585232 m!5942636))

(declare-fun m!5943578 () Bool)

(assert (=> d!1585232 m!5943578))

(declare-fun m!5943580 () Bool)

(assert (=> d!1585232 m!5943580))

(assert (=> b!4926068 m!5942634))

(assert (=> b!4925506 d!1585232))

(declare-fun d!1585234 () Bool)

(assert (=> d!1585234 (and (= lt!2026354 Nil!56691) (= lt!2026358 lt!2026031))))

(declare-fun lt!2026748 () Unit!147207)

(declare-fun choose!36074 (List!56815 List!56815 List!56815 List!56815) Unit!147207)

(assert (=> d!1585234 (= lt!2026748 (choose!36074 lt!2026354 lt!2026358 Nil!56691 lt!2026031))))

(assert (=> d!1585234 (= (++!12326 lt!2026354 lt!2026358) (++!12326 Nil!56691 lt!2026031))))

(assert (=> d!1585234 (= (lemmaConcatSameAndSameSizesThenSameLists!659 lt!2026354 lt!2026358 Nil!56691 lt!2026031) lt!2026748)))

(declare-fun bs!1179718 () Bool)

(assert (= bs!1179718 d!1585234))

(declare-fun m!5943584 () Bool)

(assert (=> bs!1179718 m!5943584))

(declare-fun m!5943588 () Bool)

(assert (=> bs!1179718 m!5943588))

(assert (=> bs!1179718 m!5942842))

(assert (=> b!4925506 d!1585234))

(assert (=> b!4925506 d!1585060))

(declare-fun d!1585236 () Bool)

(declare-fun lt!2026749 () Int)

(assert (=> d!1585236 (>= lt!2026749 0)))

(declare-fun e!3077930 () Int)

(assert (=> d!1585236 (= lt!2026749 e!3077930)))

(declare-fun c!838982 () Bool)

(assert (=> d!1585236 (= c!838982 ((_ is Nil!56691) lt!2026341))))

(assert (=> d!1585236 (= (size!37484 lt!2026341) lt!2026749)))

(declare-fun b!4926093 () Bool)

(assert (=> b!4926093 (= e!3077930 0)))

(declare-fun b!4926094 () Bool)

(assert (=> b!4926094 (= e!3077930 (+ 1 (size!37484 (t!367269 lt!2026341))))))

(assert (= (and d!1585236 c!838982) b!4926093))

(assert (= (and d!1585236 (not c!838982)) b!4926094))

(declare-fun m!5943602 () Bool)

(assert (=> b!4926094 m!5943602))

(assert (=> b!4925506 d!1585236))

(declare-fun d!1585238 () Bool)

(declare-fun e!3077931 () Bool)

(assert (=> d!1585238 e!3077931))

(declare-fun res!2102585 () Bool)

(assert (=> d!1585238 (=> (not res!2102585) (not e!3077931))))

(declare-fun lt!2026751 () tuple2!61182)

(assert (=> d!1585238 (= res!2102585 (isBalanced!4087 (c!838722 (_1!33894 lt!2026751))))))

(declare-fun lt!2026750 () tuple2!61186)

(assert (=> d!1585238 (= lt!2026751 (tuple2!61183 (BalanceConc!29179 (_1!33896 lt!2026750)) (BalanceConc!29179 (_2!33896 lt!2026750))))))

(assert (=> d!1585238 (= lt!2026750 (splitAt!275 (c!838722 input!5492) 0))))

(assert (=> d!1585238 (isBalanced!4087 (c!838722 input!5492))))

(assert (=> d!1585238 (= (splitAt!273 input!5492 0) lt!2026751)))

(declare-fun b!4926095 () Bool)

(declare-fun res!2102584 () Bool)

(assert (=> b!4926095 (=> (not res!2102584) (not e!3077931))))

(assert (=> b!4926095 (= res!2102584 (isBalanced!4087 (c!838722 (_2!33894 lt!2026751))))))

(declare-fun b!4926096 () Bool)

(assert (=> b!4926096 (= e!3077931 (= (tuple2!61181 (list!17953 (_1!33894 lt!2026751)) (list!17953 (_2!33894 lt!2026751))) (splitAtIndex!103 (list!17953 input!5492) 0)))))

(assert (= (and d!1585238 res!2102585) b!4926095))

(assert (= (and b!4926095 res!2102584) b!4926096))

(declare-fun m!5943630 () Bool)

(assert (=> d!1585238 m!5943630))

(declare-fun m!5943632 () Bool)

(assert (=> d!1585238 m!5943632))

(assert (=> d!1585238 m!5942986))

(declare-fun m!5943636 () Bool)

(assert (=> b!4926095 m!5943636))

(declare-fun m!5943638 () Bool)

(assert (=> b!4926096 m!5943638))

(declare-fun m!5943640 () Bool)

(assert (=> b!4926096 m!5943640))

(assert (=> b!4926096 m!5942636))

(assert (=> b!4926096 m!5942636))

(declare-fun m!5943642 () Bool)

(assert (=> b!4926096 m!5943642))

(assert (=> b!4925506 d!1585238))

(declare-fun d!1585242 () Bool)

(assert (=> d!1585242 (= (head!10522 (drop!2226 lt!2026334 0)) (h!63139 (drop!2226 lt!2026334 0)))))

(assert (=> b!4925506 d!1585242))

(assert (=> b!4925506 d!1585070))

(declare-fun b!4926100 () Bool)

(declare-fun lt!2026752 () List!56815)

(declare-fun e!3077933 () Bool)

(assert (=> b!4926100 (= e!3077933 (or (not (= lt!2026351 Nil!56691)) (= lt!2026752 (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691)))))))

(declare-fun b!4926098 () Bool)

(declare-fun e!3077932 () List!56815)

(assert (=> b!4926098 (= e!3077932 (Cons!56691 (h!63139 (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691))) (++!12326 (t!367269 (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691))) lt!2026351)))))

(declare-fun b!4926097 () Bool)

(assert (=> b!4926097 (= e!3077932 lt!2026351)))

(declare-fun b!4926099 () Bool)

(declare-fun res!2102587 () Bool)

(assert (=> b!4926099 (=> (not res!2102587) (not e!3077933))))

(assert (=> b!4926099 (= res!2102587 (= (size!37484 lt!2026752) (+ (size!37484 (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691))) (size!37484 lt!2026351))))))

(declare-fun d!1585244 () Bool)

(assert (=> d!1585244 e!3077933))

(declare-fun res!2102586 () Bool)

(assert (=> d!1585244 (=> (not res!2102586) (not e!3077933))))

(assert (=> d!1585244 (= res!2102586 (= (content!10071 lt!2026752) ((_ map or) (content!10071 (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691))) (content!10071 lt!2026351))))))

(assert (=> d!1585244 (= lt!2026752 e!3077932)))

(declare-fun c!838983 () Bool)

(assert (=> d!1585244 (= c!838983 ((_ is Nil!56691) (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691))))))

(assert (=> d!1585244 (= (++!12326 (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691)) lt!2026351) lt!2026752)))

(assert (= (and d!1585244 c!838983) b!4926097))

(assert (= (and d!1585244 (not c!838983)) b!4926098))

(assert (= (and d!1585244 res!2102586) b!4926099))

(assert (= (and b!4926099 res!2102587) b!4926100))

(declare-fun m!5943646 () Bool)

(assert (=> b!4926098 m!5943646))

(declare-fun m!5943648 () Bool)

(assert (=> b!4926099 m!5943648))

(assert (=> b!4926099 m!5942888))

(declare-fun m!5943650 () Bool)

(assert (=> b!4926099 m!5943650))

(declare-fun m!5943652 () Bool)

(assert (=> b!4926099 m!5943652))

(declare-fun m!5943654 () Bool)

(assert (=> d!1585244 m!5943654))

(assert (=> d!1585244 m!5942888))

(declare-fun m!5943658 () Bool)

(assert (=> d!1585244 m!5943658))

(declare-fun m!5943662 () Bool)

(assert (=> d!1585244 m!5943662))

(assert (=> b!4925506 d!1585244))

(declare-fun d!1585250 () Bool)

(assert (=> d!1585250 (<= (size!37484 Nil!56691) (size!37484 lt!2026341))))

(declare-fun lt!2026753 () Unit!147207)

(assert (=> d!1585250 (= lt!2026753 (choose!36070 Nil!56691 lt!2026341))))

(assert (=> d!1585250 (isPrefix!4963 Nil!56691 lt!2026341)))

(assert (=> d!1585250 (= (lemmaIsPrefixThenSmallerEqSize!687 Nil!56691 lt!2026341) lt!2026753)))

(declare-fun bs!1179721 () Bool)

(assert (= bs!1179721 d!1585250))

(assert (=> bs!1179721 m!5942882))

(assert (=> bs!1179721 m!5942876))

(declare-fun m!5943666 () Bool)

(assert (=> bs!1179721 m!5943666))

(declare-fun m!5943668 () Bool)

(assert (=> bs!1179721 m!5943668))

(assert (=> b!4925506 d!1585250))

(declare-fun d!1585254 () Bool)

(assert (=> d!1585254 (= (head!10522 (drop!2226 lt!2026334 0)) (apply!13664 lt!2026334 0))))

(declare-fun lt!2026761 () Unit!147207)

(declare-fun choose!36075 (List!56815 Int) Unit!147207)

(assert (=> d!1585254 (= lt!2026761 (choose!36075 lt!2026334 0))))

(declare-fun e!3077946 () Bool)

(assert (=> d!1585254 e!3077946))

(declare-fun res!2102592 () Bool)

(assert (=> d!1585254 (=> (not res!2102592) (not e!3077946))))

(assert (=> d!1585254 (= res!2102592 (>= 0 0))))

(assert (=> d!1585254 (= (lemmaDropApply!1284 lt!2026334 0) lt!2026761)))

(declare-fun b!4926123 () Bool)

(assert (=> b!4926123 (= e!3077946 (< 0 (size!37484 lt!2026334)))))

(assert (= (and d!1585254 res!2102592) b!4926123))

(assert (=> d!1585254 m!5942890))

(assert (=> d!1585254 m!5942890))

(assert (=> d!1585254 m!5942892))

(assert (=> d!1585254 m!5942866))

(declare-fun m!5943702 () Bool)

(assert (=> d!1585254 m!5943702))

(assert (=> b!4926123 m!5943558))

(assert (=> b!4925506 d!1585254))

(declare-fun d!1585272 () Bool)

(assert (=> d!1585272 (isPrefix!4963 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026359 Nil!56691)) Nil!56691)) lt!2026359)))

(declare-fun lt!2026762 () Unit!147207)

(assert (=> d!1585272 (= lt!2026762 (choose!36072 Nil!56691 lt!2026359))))

(assert (=> d!1585272 (isPrefix!4963 Nil!56691 lt!2026359)))

(assert (=> d!1585272 (= (lemmaAddHeadSuffixToPrefixStillPrefix!775 Nil!56691 lt!2026359) lt!2026762)))

(declare-fun bs!1179724 () Bool)

(assert (= bs!1179724 d!1585272))

(assert (=> bs!1179724 m!5942884))

(assert (=> bs!1179724 m!5942870))

(assert (=> bs!1179724 m!5942884))

(assert (=> bs!1179724 m!5942898))

(declare-fun m!5943704 () Bool)

(assert (=> bs!1179724 m!5943704))

(declare-fun m!5943706 () Bool)

(assert (=> bs!1179724 m!5943706))

(assert (=> bs!1179724 m!5942870))

(assert (=> bs!1179724 m!5942872))

(assert (=> b!4925506 d!1585272))

(assert (=> b!4925506 d!1585186))

(declare-fun b!4926127 () Bool)

(declare-fun e!3077948 () Bool)

(declare-fun lt!2026766 () List!56815)

(assert (=> b!4926127 (= e!3077948 (or (not (= (Cons!56691 lt!2026362 Nil!56691) Nil!56691)) (= lt!2026766 Nil!56691)))))

(declare-fun b!4926125 () Bool)

(declare-fun e!3077947 () List!56815)

(assert (=> b!4926125 (= e!3077947 (Cons!56691 (h!63139 Nil!56691) (++!12326 (t!367269 Nil!56691) (Cons!56691 lt!2026362 Nil!56691))))))

(declare-fun b!4926124 () Bool)

(assert (=> b!4926124 (= e!3077947 (Cons!56691 lt!2026362 Nil!56691))))

(declare-fun b!4926126 () Bool)

(declare-fun res!2102594 () Bool)

(assert (=> b!4926126 (=> (not res!2102594) (not e!3077948))))

(assert (=> b!4926126 (= res!2102594 (= (size!37484 lt!2026766) (+ (size!37484 Nil!56691) (size!37484 (Cons!56691 lt!2026362 Nil!56691)))))))

(declare-fun d!1585274 () Bool)

(assert (=> d!1585274 e!3077948))

(declare-fun res!2102593 () Bool)

(assert (=> d!1585274 (=> (not res!2102593) (not e!3077948))))

(assert (=> d!1585274 (= res!2102593 (= (content!10071 lt!2026766) ((_ map or) (content!10071 Nil!56691) (content!10071 (Cons!56691 lt!2026362 Nil!56691)))))))

(assert (=> d!1585274 (= lt!2026766 e!3077947)))

(declare-fun c!838993 () Bool)

(assert (=> d!1585274 (= c!838993 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585274 (= (++!12326 Nil!56691 (Cons!56691 lt!2026362 Nil!56691)) lt!2026766)))

(assert (= (and d!1585274 c!838993) b!4926124))

(assert (= (and d!1585274 (not c!838993)) b!4926125))

(assert (= (and d!1585274 res!2102593) b!4926126))

(assert (= (and b!4926126 res!2102594) b!4926127))

(declare-fun m!5943710 () Bool)

(assert (=> b!4926125 m!5943710))

(declare-fun m!5943712 () Bool)

(assert (=> b!4926126 m!5943712))

(assert (=> b!4926126 m!5942882))

(declare-fun m!5943714 () Bool)

(assert (=> b!4926126 m!5943714))

(declare-fun m!5943716 () Bool)

(assert (=> d!1585274 m!5943716))

(assert (=> d!1585274 m!5943466))

(declare-fun m!5943718 () Bool)

(assert (=> d!1585274 m!5943718))

(assert (=> b!4925506 d!1585274))

(declare-fun d!1585278 () Bool)

(declare-fun lt!2026768 () List!56815)

(assert (=> d!1585278 (= (++!12326 Nil!56691 lt!2026768) lt!2026359)))

(declare-fun e!3077952 () List!56815)

(assert (=> d!1585278 (= lt!2026768 e!3077952)))

(declare-fun c!838994 () Bool)

(assert (=> d!1585278 (= c!838994 ((_ is Cons!56691) Nil!56691))))

(assert (=> d!1585278 (>= (size!37484 lt!2026359) (size!37484 Nil!56691))))

(assert (=> d!1585278 (= (getSuffix!2951 lt!2026359 Nil!56691) lt!2026768)))

(declare-fun b!4926132 () Bool)

(assert (=> b!4926132 (= e!3077952 (getSuffix!2951 (tail!9669 lt!2026359) (t!367269 Nil!56691)))))

(declare-fun b!4926133 () Bool)

(assert (=> b!4926133 (= e!3077952 lt!2026359)))

(assert (= (and d!1585278 c!838994) b!4926132))

(assert (= (and d!1585278 (not c!838994)) b!4926133))

(declare-fun m!5943722 () Bool)

(assert (=> d!1585278 m!5943722))

(assert (=> d!1585278 m!5943538))

(assert (=> d!1585278 m!5942882))

(assert (=> b!4926132 m!5943534))

(assert (=> b!4926132 m!5943534))

(declare-fun m!5943726 () Bool)

(assert (=> b!4926132 m!5943726))

(assert (=> b!4925506 d!1585278))

(declare-fun d!1585280 () Bool)

(assert (=> d!1585280 (= (list!17953 (_2!33894 lt!2026340)) (list!17955 (c!838722 (_2!33894 lt!2026340))))))

(declare-fun bs!1179726 () Bool)

(assert (= bs!1179726 d!1585280))

(declare-fun m!5943732 () Bool)

(assert (=> bs!1179726 m!5943732))

(assert (=> b!4925506 d!1585280))

(assert (=> bm!343406 d!1585086))

(declare-fun b!4926137 () Bool)

(declare-fun e!3077954 () List!56815)

(assert (=> b!4926137 (= e!3077954 (++!12326 (list!17955 (left!41337 (c!838722 (_2!33894 lt!2026033)))) (list!17955 (right!41667 (c!838722 (_2!33894 lt!2026033))))))))

(declare-fun b!4926135 () Bool)

(declare-fun e!3077953 () List!56815)

(assert (=> b!4926135 (= e!3077953 e!3077954)))

(declare-fun c!838996 () Bool)

(assert (=> b!4926135 (= c!838996 ((_ is Leaf!24744) (c!838722 (_2!33894 lt!2026033))))))

(declare-fun b!4926136 () Bool)

(assert (=> b!4926136 (= e!3077954 (list!17956 (xs!18196 (c!838722 (_2!33894 lt!2026033)))))))

(declare-fun d!1585284 () Bool)

(declare-fun c!838995 () Bool)

(assert (=> d!1585284 (= c!838995 ((_ is Empty!14874) (c!838722 (_2!33894 lt!2026033))))))

(assert (=> d!1585284 (= (list!17955 (c!838722 (_2!33894 lt!2026033))) e!3077953)))

(declare-fun b!4926134 () Bool)

(assert (=> b!4926134 (= e!3077953 Nil!56691)))

(assert (= (and d!1585284 c!838995) b!4926134))

(assert (= (and d!1585284 (not c!838995)) b!4926135))

(assert (= (and b!4926135 c!838996) b!4926136))

(assert (= (and b!4926135 (not c!838996)) b!4926137))

(declare-fun m!5943734 () Bool)

(assert (=> b!4926137 m!5943734))

(declare-fun m!5943736 () Bool)

(assert (=> b!4926137 m!5943736))

(assert (=> b!4926137 m!5943734))

(assert (=> b!4926137 m!5943736))

(declare-fun m!5943738 () Bool)

(assert (=> b!4926137 m!5943738))

(declare-fun m!5943740 () Bool)

(assert (=> b!4926136 m!5943740))

(assert (=> d!1585036 d!1585284))

(declare-fun d!1585286 () Bool)

(declare-fun lt!2026769 () Int)

(assert (=> d!1585286 (>= lt!2026769 0)))

(declare-fun e!3077955 () Int)

(assert (=> d!1585286 (= lt!2026769 e!3077955)))

(declare-fun c!838997 () Bool)

(assert (=> d!1585286 (= c!838997 ((_ is Nil!56691) (_1!33893 (findLongestMatchInnerZipper!60 z!3559 Nil!56691 0 lt!2026031 (list!17953 input!5492) lt!2026032))))))

(assert (=> d!1585286 (= (size!37484 (_1!33893 (findLongestMatchInnerZipper!60 z!3559 Nil!56691 0 lt!2026031 (list!17953 input!5492) lt!2026032))) lt!2026769)))

(declare-fun b!4926138 () Bool)

(assert (=> b!4926138 (= e!3077955 0)))

(declare-fun b!4926139 () Bool)

(assert (=> b!4926139 (= e!3077955 (+ 1 (size!37484 (t!367269 (_1!33893 (findLongestMatchInnerZipper!60 z!3559 Nil!56691 0 lt!2026031 (list!17953 input!5492) lt!2026032))))))))

(assert (= (and d!1585286 c!838997) b!4926138))

(assert (= (and d!1585286 (not c!838997)) b!4926139))

(declare-fun m!5943742 () Bool)

(assert (=> b!4926139 m!5943742))

(assert (=> d!1585042 d!1585286))

(declare-fun bs!1179734 () Bool)

(declare-fun d!1585288 () Bool)

(assert (= bs!1179734 (and d!1585288 d!1585086)))

(declare-fun lambda!245273 () Int)

(assert (=> bs!1179734 (not (= lambda!245273 lambda!245235))))

(declare-fun bs!1179735 () Bool)

(declare-fun b!4926178 () Bool)

(assert (= bs!1179735 (and b!4926178 d!1585086)))

(declare-fun lambda!245274 () Int)

(assert (=> bs!1179735 (not (= lambda!245274 lambda!245235))))

(declare-fun bs!1179736 () Bool)

(assert (= bs!1179736 (and b!4926178 d!1585288)))

(assert (=> bs!1179736 (not (= lambda!245274 lambda!245273))))

(declare-fun bs!1179737 () Bool)

(declare-fun b!4926179 () Bool)

(assert (= bs!1179737 (and b!4926179 d!1585086)))

(declare-fun lambda!245275 () Int)

(assert (=> bs!1179737 (not (= lambda!245275 lambda!245235))))

(declare-fun bs!1179738 () Bool)

(assert (= bs!1179738 (and b!4926179 d!1585288)))

(assert (=> bs!1179738 (not (= lambda!245275 lambda!245273))))

(declare-fun bs!1179739 () Bool)

(assert (= bs!1179739 (and b!4926179 b!4926178)))

(assert (=> bs!1179739 (= lambda!245275 lambda!245274)))

(declare-datatypes ((List!56818 0))(
  ( (Nil!56694) (Cons!56694 (h!63142 Context!6034) (t!367280 List!56818)) )
))
(declare-fun lt!2026812 () List!56818)

(declare-fun bm!343515 () Bool)

(declare-fun lt!2026811 () List!56818)

(declare-fun call!343521 () Bool)

(declare-fun c!839019 () Bool)

(declare-fun exists!1248 (List!56818 Int) Bool)

(assert (=> bm!343515 (= call!343521 (exists!1248 (ite c!839019 lt!2026811 lt!2026812) (ite c!839019 lambda!245274 lambda!245275)))))

(declare-fun bm!343516 () Bool)

(declare-fun call!343520 () List!56818)

(declare-fun toList!7944 ((InoxSet Context!6034)) List!56818)

(assert (=> bm!343516 (= call!343520 (toList!7944 z!3559))))

(declare-fun e!3077980 () Unit!147207)

(declare-fun Unit!147226 () Unit!147207)

(assert (=> b!4926178 (= e!3077980 Unit!147226)))

(assert (=> b!4926178 (= lt!2026811 call!343520)))

(declare-fun lt!2026810 () Unit!147207)

(declare-fun lemmaNotForallThenExists!182 (List!56818 Int) Unit!147207)

(assert (=> b!4926178 (= lt!2026810 (lemmaNotForallThenExists!182 lt!2026811 lambda!245273))))

(assert (=> b!4926178 call!343521))

(declare-fun lt!2026809 () Unit!147207)

(assert (=> b!4926178 (= lt!2026809 lt!2026810)))

(declare-fun lt!2026807 () Bool)

(declare-datatypes ((Option!14162 0))(
  ( (None!14161) (Some!14161 (v!50129 List!56815)) )
))
(declare-fun isEmpty!30577 (Option!14162) Bool)

(declare-fun getLanguageWitness!618 ((InoxSet Context!6034)) Option!14162)

(assert (=> d!1585288 (= lt!2026807 (isEmpty!30577 (getLanguageWitness!618 z!3559)))))

(declare-fun forall!13139 ((InoxSet Context!6034) Int) Bool)

(assert (=> d!1585288 (= lt!2026807 (forall!13139 z!3559 lambda!245273))))

(declare-fun lt!2026808 () Unit!147207)

(assert (=> d!1585288 (= lt!2026808 e!3077980)))

(assert (=> d!1585288 (= c!839019 (not (forall!13139 z!3559 lambda!245273)))))

(assert (=> d!1585288 (= (lostCauseZipper!693 z!3559) lt!2026807)))

(declare-fun Unit!147227 () Unit!147207)

(assert (=> b!4926179 (= e!3077980 Unit!147227)))

(assert (=> b!4926179 (= lt!2026812 call!343520)))

(declare-fun lt!2026814 () Unit!147207)

(declare-fun lemmaForallThenNotExists!165 (List!56818 Int) Unit!147207)

(assert (=> b!4926179 (= lt!2026814 (lemmaForallThenNotExists!165 lt!2026812 lambda!245273))))

(assert (=> b!4926179 (not call!343521)))

(declare-fun lt!2026813 () Unit!147207)

(assert (=> b!4926179 (= lt!2026813 lt!2026814)))

(assert (= (and d!1585288 c!839019) b!4926178))

(assert (= (and d!1585288 (not c!839019)) b!4926179))

(assert (= (or b!4926178 b!4926179) bm!343515))

(assert (= (or b!4926178 b!4926179) bm!343516))

(declare-fun m!5943814 () Bool)

(assert (=> d!1585288 m!5943814))

(assert (=> d!1585288 m!5943814))

(declare-fun m!5943816 () Bool)

(assert (=> d!1585288 m!5943816))

(declare-fun m!5943818 () Bool)

(assert (=> d!1585288 m!5943818))

(assert (=> d!1585288 m!5943818))

(declare-fun m!5943820 () Bool)

(assert (=> bm!343515 m!5943820))

(declare-fun m!5943822 () Bool)

(assert (=> bm!343516 m!5943822))

(declare-fun m!5943824 () Bool)

(assert (=> b!4926179 m!5943824))

(declare-fun m!5943826 () Bool)

(assert (=> b!4926178 m!5943826))

(assert (=> d!1585042 d!1585288))

(declare-fun d!1585328 () Bool)

(declare-fun lt!2026815 () List!56815)

(assert (=> d!1585328 (= (++!12326 Nil!56691 lt!2026815) (list!17953 input!5492))))

(declare-fun e!3077981 () List!56815)

(assert (=> d!1585328 (= lt!2026815 e!3077981)))

(declare-fun c!839020 () Bool)

(assert (=> d!1585328 (= c!839020 ((_ is Cons!56691) Nil!56691))))

(assert (=> d!1585328 (>= (size!37484 (list!17953 input!5492)) (size!37484 Nil!56691))))

(assert (=> d!1585328 (= (getSuffix!2951 (list!17953 input!5492) Nil!56691) lt!2026815)))

(declare-fun b!4926180 () Bool)

(assert (=> b!4926180 (= e!3077981 (getSuffix!2951 (tail!9669 (list!17953 input!5492)) (t!367269 Nil!56691)))))

(declare-fun b!4926181 () Bool)

(assert (=> b!4926181 (= e!3077981 (list!17953 input!5492))))

(assert (= (and d!1585328 c!839020) b!4926180))

(assert (= (and d!1585328 (not c!839020)) b!4926181))

(declare-fun m!5943828 () Bool)

(assert (=> d!1585328 m!5943828))

(assert (=> d!1585328 m!5942636))

(assert (=> d!1585328 m!5942910))

(assert (=> d!1585328 m!5942882))

(assert (=> b!4926180 m!5942636))

(declare-fun m!5943830 () Bool)

(assert (=> b!4926180 m!5943830))

(assert (=> b!4926180 m!5943830))

(declare-fun m!5943832 () Bool)

(assert (=> b!4926180 m!5943832))

(assert (=> d!1585042 d!1585328))

(declare-fun b!4926184 () Bool)

(declare-fun e!3077983 () Bool)

(assert (=> b!4926184 (= e!3077983 (isPrefix!4963 (tail!9669 Nil!56691) (tail!9669 (++!12326 Nil!56691 lt!2026031))))))

(declare-fun b!4926185 () Bool)

(declare-fun e!3077982 () Bool)

(assert (=> b!4926185 (= e!3077982 (>= (size!37484 (++!12326 Nil!56691 lt!2026031)) (size!37484 Nil!56691)))))

(declare-fun d!1585330 () Bool)

(assert (=> d!1585330 e!3077982))

(declare-fun res!2102613 () Bool)

(assert (=> d!1585330 (=> res!2102613 e!3077982)))

(declare-fun lt!2026816 () Bool)

(assert (=> d!1585330 (= res!2102613 (not lt!2026816))))

(declare-fun e!3077984 () Bool)

(assert (=> d!1585330 (= lt!2026816 e!3077984)))

(declare-fun res!2102614 () Bool)

(assert (=> d!1585330 (=> res!2102614 e!3077984)))

(assert (=> d!1585330 (= res!2102614 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585330 (= (isPrefix!4963 Nil!56691 (++!12326 Nil!56691 lt!2026031)) lt!2026816)))

(declare-fun b!4926183 () Bool)

(declare-fun res!2102611 () Bool)

(assert (=> b!4926183 (=> (not res!2102611) (not e!3077983))))

(assert (=> b!4926183 (= res!2102611 (= (head!10522 Nil!56691) (head!10522 (++!12326 Nil!56691 lt!2026031))))))

(declare-fun b!4926182 () Bool)

(assert (=> b!4926182 (= e!3077984 e!3077983)))

(declare-fun res!2102612 () Bool)

(assert (=> b!4926182 (=> (not res!2102612) (not e!3077983))))

(assert (=> b!4926182 (= res!2102612 (not ((_ is Nil!56691) (++!12326 Nil!56691 lt!2026031))))))

(assert (= (and d!1585330 (not res!2102614)) b!4926182))

(assert (= (and b!4926182 res!2102612) b!4926183))

(assert (= (and b!4926183 res!2102611) b!4926184))

(assert (= (and d!1585330 (not res!2102613)) b!4926185))

(declare-fun m!5943834 () Bool)

(assert (=> b!4926184 m!5943834))

(assert (=> b!4926184 m!5942842))

(declare-fun m!5943836 () Bool)

(assert (=> b!4926184 m!5943836))

(assert (=> b!4926184 m!5943834))

(assert (=> b!4926184 m!5943836))

(declare-fun m!5943838 () Bool)

(assert (=> b!4926184 m!5943838))

(assert (=> b!4926185 m!5942842))

(declare-fun m!5943840 () Bool)

(assert (=> b!4926185 m!5943840))

(assert (=> b!4926185 m!5942882))

(declare-fun m!5943842 () Bool)

(assert (=> b!4926183 m!5943842))

(assert (=> b!4926183 m!5942842))

(declare-fun m!5943844 () Bool)

(assert (=> b!4926183 m!5943844))

(assert (=> d!1585042 d!1585330))

(declare-fun d!1585332 () Bool)

(assert (=> d!1585332 (= lt!2026031 lt!2026335)))

(declare-fun lt!2026823 () Unit!147207)

(declare-fun choose!36076 (List!56815 List!56815 List!56815 List!56815 List!56815) Unit!147207)

(assert (=> d!1585332 (= lt!2026823 (choose!36076 Nil!56691 lt!2026031 Nil!56691 lt!2026335 (list!17953 input!5492)))))

(assert (=> d!1585332 (isPrefix!4963 Nil!56691 (list!17953 input!5492))))

(assert (=> d!1585332 (= (lemmaSamePrefixThenSameSuffix!2367 Nil!56691 lt!2026031 Nil!56691 lt!2026335 (list!17953 input!5492)) lt!2026823)))

(declare-fun bs!1179740 () Bool)

(assert (= bs!1179740 d!1585332))

(assert (=> bs!1179740 m!5942636))

(declare-fun m!5943846 () Bool)

(assert (=> bs!1179740 m!5943846))

(assert (=> bs!1179740 m!5942636))

(declare-fun m!5943848 () Bool)

(assert (=> bs!1179740 m!5943848))

(assert (=> d!1585042 d!1585332))

(assert (=> d!1585042 d!1585070))

(declare-fun b!4926198 () Bool)

(declare-fun e!3077993 () Bool)

(declare-fun e!3077995 () Bool)

(assert (=> b!4926198 (= e!3077993 e!3077995)))

(declare-fun res!2102620 () Bool)

(assert (=> b!4926198 (=> res!2102620 e!3077995)))

(declare-fun lt!2026827 () tuple2!61180)

(assert (=> b!4926198 (= res!2102620 (isEmpty!30573 (_1!33893 lt!2026827)))))

(declare-fun b!4926199 () Bool)

(declare-fun e!3077998 () tuple2!61180)

(assert (=> b!4926199 (= e!3077998 (tuple2!61181 Nil!56691 Nil!56691))))

(declare-fun b!4926200 () Bool)

(declare-fun e!3077991 () Unit!147207)

(declare-fun Unit!147228 () Unit!147207)

(assert (=> b!4926200 (= e!3077991 Unit!147228)))

(declare-fun b!4926201 () Bool)

(declare-fun Unit!147229 () Unit!147207)

(assert (=> b!4926201 (= e!3077991 Unit!147229)))

(declare-fun lt!2026849 () Unit!147207)

(declare-fun call!343524 () Unit!147207)

(assert (=> b!4926201 (= lt!2026849 call!343524)))

(declare-fun call!343528 () Bool)

(assert (=> b!4926201 call!343528))

(declare-fun lt!2026828 () Unit!147207)

(assert (=> b!4926201 (= lt!2026828 lt!2026849)))

(declare-fun lt!2026844 () Unit!147207)

(declare-fun call!343523 () Unit!147207)

(assert (=> b!4926201 (= lt!2026844 call!343523)))

(assert (=> b!4926201 (= (list!17953 input!5492) Nil!56691)))

(declare-fun lt!2026842 () Unit!147207)

(assert (=> b!4926201 (= lt!2026842 lt!2026844)))

(assert (=> b!4926201 false))

(declare-fun bm!343517 () Bool)

(assert (=> bm!343517 (= call!343528 (isPrefix!4963 (list!17953 input!5492) (list!17953 input!5492)))))

(declare-fun bm!343518 () Bool)

(declare-fun call!343525 () (InoxSet Context!6034))

(declare-fun call!343526 () C!26960)

(assert (=> bm!343518 (= call!343525 (derivationStepZipper!590 z!3559 call!343526))))

(declare-fun bm!343519 () Bool)

(assert (=> bm!343519 (= call!343526 (head!10522 lt!2026031))))

(declare-fun bm!343520 () Bool)

(assert (=> bm!343520 (= call!343524 (lemmaIsPrefixRefl!3359 (list!17953 input!5492) (list!17953 input!5492)))))

(declare-fun b!4926203 () Bool)

(declare-fun e!3077994 () tuple2!61180)

(assert (=> b!4926203 (= e!3077994 (tuple2!61181 Nil!56691 (list!17953 input!5492)))))

(declare-fun b!4926204 () Bool)

(declare-fun e!3077997 () tuple2!61180)

(declare-fun e!3077992 () tuple2!61180)

(assert (=> b!4926204 (= e!3077997 e!3077992)))

(declare-fun lt!2026837 () tuple2!61180)

(declare-fun call!343529 () tuple2!61180)

(assert (=> b!4926204 (= lt!2026837 call!343529)))

(declare-fun c!839029 () Bool)

(assert (=> b!4926204 (= c!839029 (isEmpty!30573 (_1!33893 lt!2026837)))))

(declare-fun bm!343521 () Bool)

(declare-fun call!343522 () Bool)

(assert (=> bm!343521 (= call!343522 (nullableZipper!812 z!3559))))

(declare-fun b!4926205 () Bool)

(assert (=> b!4926205 (= e!3077995 (>= (size!37484 (_1!33893 lt!2026827)) (size!37484 Nil!56691)))))

(declare-fun b!4926206 () Bool)

(assert (=> b!4926206 (= e!3077997 call!343529)))

(declare-fun bm!343522 () Bool)

(declare-fun call!343527 () List!56815)

(assert (=> bm!343522 (= call!343527 (tail!9669 lt!2026031))))

(declare-fun b!4926207 () Bool)

(assert (=> b!4926207 (= e!3077998 (tuple2!61181 Nil!56691 (list!17953 input!5492)))))

(declare-fun bm!343523 () Bool)

(declare-fun lt!2026830 () List!56815)

(assert (=> bm!343523 (= call!343529 (findLongestMatchInnerZipper!60 call!343525 lt!2026830 (+ 0 1) call!343527 (list!17953 input!5492) lt!2026032))))

(declare-fun b!4926208 () Bool)

(declare-fun e!3077996 () tuple2!61180)

(assert (=> b!4926208 (= e!3077994 e!3077996)))

(declare-fun c!839026 () Bool)

(assert (=> b!4926208 (= c!839026 (= 0 lt!2026032))))

(declare-fun b!4926209 () Bool)

(assert (=> b!4926209 (= e!3077992 lt!2026837)))

(declare-fun d!1585334 () Bool)

(assert (=> d!1585334 e!3077993))

(declare-fun res!2102619 () Bool)

(assert (=> d!1585334 (=> (not res!2102619) (not e!3077993))))

(assert (=> d!1585334 (= res!2102619 (= (++!12326 (_1!33893 lt!2026827) (_2!33893 lt!2026827)) (list!17953 input!5492)))))

(assert (=> d!1585334 (= lt!2026827 e!3077994)))

(declare-fun c!839030 () Bool)

(assert (=> d!1585334 (= c!839030 (lostCauseZipper!693 z!3559))))

(declare-fun lt!2026839 () Unit!147207)

(declare-fun Unit!147230 () Unit!147207)

(assert (=> d!1585334 (= lt!2026839 Unit!147230)))

(assert (=> d!1585334 (= (getSuffix!2951 (list!17953 input!5492) Nil!56691) lt!2026031)))

(declare-fun lt!2026833 () Unit!147207)

(declare-fun lt!2026824 () Unit!147207)

(assert (=> d!1585334 (= lt!2026833 lt!2026824)))

(declare-fun lt!2026845 () List!56815)

(assert (=> d!1585334 (= lt!2026031 lt!2026845)))

(assert (=> d!1585334 (= lt!2026824 (lemmaSamePrefixThenSameSuffix!2367 Nil!56691 lt!2026031 Nil!56691 lt!2026845 (list!17953 input!5492)))))

(assert (=> d!1585334 (= lt!2026845 (getSuffix!2951 (list!17953 input!5492) Nil!56691))))

(declare-fun lt!2026843 () Unit!147207)

(declare-fun lt!2026836 () Unit!147207)

(assert (=> d!1585334 (= lt!2026843 lt!2026836)))

(assert (=> d!1585334 (isPrefix!4963 Nil!56691 (++!12326 Nil!56691 lt!2026031))))

(assert (=> d!1585334 (= lt!2026836 (lemmaConcatTwoListThenFirstIsPrefix!3187 Nil!56691 lt!2026031))))

(assert (=> d!1585334 (= (++!12326 Nil!56691 lt!2026031) (list!17953 input!5492))))

(assert (=> d!1585334 (= (findLongestMatchInnerZipper!60 z!3559 Nil!56691 0 lt!2026031 (list!17953 input!5492) lt!2026032) lt!2026827)))

(declare-fun b!4926202 () Bool)

(declare-fun c!839027 () Bool)

(assert (=> b!4926202 (= c!839027 call!343522)))

(declare-fun lt!2026846 () Unit!147207)

(declare-fun lt!2026848 () Unit!147207)

(assert (=> b!4926202 (= lt!2026846 lt!2026848)))

(assert (=> b!4926202 (= (list!17953 input!5492) Nil!56691)))

(assert (=> b!4926202 (= lt!2026848 call!343523)))

(declare-fun lt!2026841 () Unit!147207)

(declare-fun lt!2026834 () Unit!147207)

(assert (=> b!4926202 (= lt!2026841 lt!2026834)))

(assert (=> b!4926202 call!343528))

(assert (=> b!4926202 (= lt!2026834 call!343524)))

(assert (=> b!4926202 (= e!3077996 e!3077998)))

(declare-fun b!4926210 () Bool)

(declare-fun c!839025 () Bool)

(assert (=> b!4926210 (= c!839025 call!343522)))

(declare-fun lt!2026838 () Unit!147207)

(declare-fun lt!2026825 () Unit!147207)

(assert (=> b!4926210 (= lt!2026838 lt!2026825)))

(declare-fun lt!2026832 () C!26960)

(declare-fun lt!2026835 () List!56815)

(assert (=> b!4926210 (= (++!12326 (++!12326 Nil!56691 (Cons!56691 lt!2026832 Nil!56691)) lt!2026835) (list!17953 input!5492))))

(assert (=> b!4926210 (= lt!2026825 (lemmaMoveElementToOtherListKeepsConcatEq!1393 Nil!56691 lt!2026832 lt!2026835 (list!17953 input!5492)))))

(assert (=> b!4926210 (= lt!2026835 (tail!9669 lt!2026031))))

(assert (=> b!4926210 (= lt!2026832 (head!10522 lt!2026031))))

(declare-fun lt!2026840 () Unit!147207)

(declare-fun lt!2026829 () Unit!147207)

(assert (=> b!4926210 (= lt!2026840 lt!2026829)))

(assert (=> b!4926210 (isPrefix!4963 (++!12326 Nil!56691 (Cons!56691 (head!10522 (getSuffix!2951 (list!17953 input!5492) Nil!56691)) Nil!56691)) (list!17953 input!5492))))

(assert (=> b!4926210 (= lt!2026829 (lemmaAddHeadSuffixToPrefixStillPrefix!775 Nil!56691 (list!17953 input!5492)))))

(assert (=> b!4926210 (= lt!2026830 (++!12326 Nil!56691 (Cons!56691 (head!10522 lt!2026031) Nil!56691)))))

(declare-fun lt!2026831 () Unit!147207)

(assert (=> b!4926210 (= lt!2026831 e!3077991)))

(declare-fun c!839028 () Bool)

(assert (=> b!4926210 (= c!839028 (= (size!37484 Nil!56691) (size!37484 (list!17953 input!5492))))))

(declare-fun lt!2026826 () Unit!147207)

(declare-fun lt!2026847 () Unit!147207)

(assert (=> b!4926210 (= lt!2026826 lt!2026847)))

(assert (=> b!4926210 (<= (size!37484 Nil!56691) (size!37484 (list!17953 input!5492)))))

(assert (=> b!4926210 (= lt!2026847 (lemmaIsPrefixThenSmallerEqSize!687 Nil!56691 (list!17953 input!5492)))))

(assert (=> b!4926210 (= e!3077996 e!3077997)))

(declare-fun b!4926211 () Bool)

(assert (=> b!4926211 (= e!3077992 (tuple2!61181 Nil!56691 lt!2026031))))

(declare-fun bm!343524 () Bool)

(assert (=> bm!343524 (= call!343523 (lemmaIsPrefixSameLengthThenSameList!1121 (list!17953 input!5492) Nil!56691 (list!17953 input!5492)))))

(assert (= (and d!1585334 c!839030) b!4926203))

(assert (= (and d!1585334 (not c!839030)) b!4926208))

(assert (= (and b!4926208 c!839026) b!4926202))

(assert (= (and b!4926208 (not c!839026)) b!4926210))

(assert (= (and b!4926202 c!839027) b!4926199))

(assert (= (and b!4926202 (not c!839027)) b!4926207))

(assert (= (and b!4926210 c!839028) b!4926201))

(assert (= (and b!4926210 (not c!839028)) b!4926200))

(assert (= (and b!4926210 c!839025) b!4926204))

(assert (= (and b!4926210 (not c!839025)) b!4926206))

(assert (= (and b!4926204 c!839029) b!4926211))

(assert (= (and b!4926204 (not c!839029)) b!4926209))

(assert (= (or b!4926204 b!4926206) bm!343522))

(assert (= (or b!4926204 b!4926206) bm!343519))

(assert (= (or b!4926204 b!4926206) bm!343518))

(assert (= (or b!4926204 b!4926206) bm!343523))

(assert (= (or b!4926202 b!4926201) bm!343517))

(assert (= (or b!4926202 b!4926201) bm!343520))

(assert (= (or b!4926202 b!4926201) bm!343524))

(assert (= (or b!4926202 b!4926210) bm!343521))

(assert (= (and d!1585334 res!2102619) b!4926198))

(assert (= (and b!4926198 (not res!2102620)) b!4926205))

(assert (=> bm!343524 m!5942636))

(assert (=> bm!343524 m!5942636))

(declare-fun m!5943864 () Bool)

(assert (=> bm!343524 m!5943864))

(assert (=> bm!343521 m!5942864))

(assert (=> bm!343520 m!5942636))

(assert (=> bm!343520 m!5942636))

(declare-fun m!5943866 () Bool)

(assert (=> bm!343520 m!5943866))

(assert (=> bm!343517 m!5942636))

(assert (=> bm!343517 m!5942636))

(declare-fun m!5943868 () Bool)

(assert (=> bm!343517 m!5943868))

(declare-fun m!5943874 () Bool)

(assert (=> b!4926198 m!5943874))

(assert (=> bm!343523 m!5942636))

(declare-fun m!5943876 () Bool)

(assert (=> bm!343523 m!5943876))

(declare-fun m!5943878 () Bool)

(assert (=> bm!343518 m!5943878))

(assert (=> d!1585334 m!5942842))

(assert (=> d!1585334 m!5942844))

(assert (=> d!1585334 m!5942840))

(assert (=> d!1585334 m!5942842))

(assert (=> d!1585334 m!5942636))

(declare-fun m!5943880 () Bool)

(assert (=> d!1585334 m!5943880))

(assert (=> d!1585334 m!5942636))

(assert (=> d!1585334 m!5942852))

(declare-fun m!5943882 () Bool)

(assert (=> d!1585334 m!5943882))

(assert (=> d!1585334 m!5942846))

(declare-fun m!5943884 () Bool)

(assert (=> b!4926204 m!5943884))

(declare-fun m!5943886 () Bool)

(assert (=> b!4926210 m!5943886))

(assert (=> b!4926210 m!5942852))

(declare-fun m!5943888 () Bool)

(assert (=> b!4926210 m!5943888))

(declare-fun m!5943890 () Bool)

(assert (=> b!4926210 m!5943890))

(declare-fun m!5943892 () Bool)

(assert (=> b!4926210 m!5943892))

(assert (=> b!4926210 m!5942636))

(declare-fun m!5943894 () Bool)

(assert (=> b!4926210 m!5943894))

(assert (=> b!4926210 m!5942636))

(assert (=> b!4926210 m!5942910))

(assert (=> b!4926210 m!5942970))

(assert (=> b!4926210 m!5942972))

(assert (=> b!4926210 m!5942636))

(declare-fun m!5943896 () Bool)

(assert (=> b!4926210 m!5943896))

(assert (=> b!4926210 m!5942636))

(declare-fun m!5943898 () Bool)

(assert (=> b!4926210 m!5943898))

(assert (=> b!4926210 m!5942636))

(assert (=> b!4926210 m!5942852))

(assert (=> b!4926210 m!5942838))

(assert (=> b!4926210 m!5943886))

(assert (=> b!4926210 m!5942636))

(declare-fun m!5943900 () Bool)

(assert (=> b!4926210 m!5943900))

(assert (=> b!4926210 m!5942882))

(assert (=> b!4926210 m!5943890))

(assert (=> bm!343522 m!5942838))

(assert (=> bm!343519 m!5942970))

(declare-fun m!5943902 () Bool)

(assert (=> b!4926205 m!5943902))

(assert (=> b!4926205 m!5942882))

(assert (=> d!1585042 d!1585334))

(declare-fun b!4926227 () Bool)

(declare-fun e!3078007 () Bool)

(declare-fun lt!2026853 () List!56815)

(assert (=> b!4926227 (= e!3078007 (or (not (= lt!2026031 Nil!56691)) (= lt!2026853 Nil!56691)))))

(declare-fun b!4926225 () Bool)

(declare-fun e!3078006 () List!56815)

(assert (=> b!4926225 (= e!3078006 (Cons!56691 (h!63139 Nil!56691) (++!12326 (t!367269 Nil!56691) lt!2026031)))))

(declare-fun b!4926224 () Bool)

(assert (=> b!4926224 (= e!3078006 lt!2026031)))

(declare-fun b!4926226 () Bool)

(declare-fun res!2102626 () Bool)

(assert (=> b!4926226 (=> (not res!2102626) (not e!3078007))))

(assert (=> b!4926226 (= res!2102626 (= (size!37484 lt!2026853) (+ (size!37484 Nil!56691) (size!37484 lt!2026031))))))

(declare-fun d!1585344 () Bool)

(assert (=> d!1585344 e!3078007))

(declare-fun res!2102625 () Bool)

(assert (=> d!1585344 (=> (not res!2102625) (not e!3078007))))

(assert (=> d!1585344 (= res!2102625 (= (content!10071 lt!2026853) ((_ map or) (content!10071 Nil!56691) (content!10071 lt!2026031))))))

(assert (=> d!1585344 (= lt!2026853 e!3078006)))

(declare-fun c!839035 () Bool)

(assert (=> d!1585344 (= c!839035 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585344 (= (++!12326 Nil!56691 lt!2026031) lt!2026853)))

(assert (= (and d!1585344 c!839035) b!4926224))

(assert (= (and d!1585344 (not c!839035)) b!4926225))

(assert (= (and d!1585344 res!2102625) b!4926226))

(assert (= (and b!4926226 res!2102626) b!4926227))

(declare-fun m!5943904 () Bool)

(assert (=> b!4926225 m!5943904))

(declare-fun m!5943906 () Bool)

(assert (=> b!4926226 m!5943906))

(assert (=> b!4926226 m!5942882))

(assert (=> b!4926226 m!5942968))

(declare-fun m!5943908 () Bool)

(assert (=> d!1585344 m!5943908))

(assert (=> d!1585344 m!5943466))

(declare-fun m!5943910 () Bool)

(assert (=> d!1585344 m!5943910))

(assert (=> d!1585042 d!1585344))

(declare-fun d!1585346 () Bool)

(assert (=> d!1585346 (isPrefix!4963 Nil!56691 (++!12326 Nil!56691 lt!2026031))))

(declare-fun lt!2026857 () Unit!147207)

(declare-fun choose!36077 (List!56815 List!56815) Unit!147207)

(assert (=> d!1585346 (= lt!2026857 (choose!36077 Nil!56691 lt!2026031))))

(assert (=> d!1585346 (= (lemmaConcatTwoListThenFirstIsPrefix!3187 Nil!56691 lt!2026031) lt!2026857)))

(declare-fun bs!1179746 () Bool)

(assert (= bs!1179746 d!1585346))

(assert (=> bs!1179746 m!5942842))

(assert (=> bs!1179746 m!5942842))

(assert (=> bs!1179746 m!5942844))

(declare-fun m!5943924 () Bool)

(assert (=> bs!1179746 m!5943924))

(assert (=> d!1585042 d!1585346))

(declare-fun d!1585354 () Bool)

(assert (=> d!1585354 (= (list!17953 (ite c!838787 input!5492 (_1!33894 lt!2026340))) (list!17955 (c!838722 (ite c!838787 input!5492 (_1!33894 lt!2026340)))))))

(declare-fun bs!1179747 () Bool)

(assert (= bs!1179747 d!1585354))

(declare-fun m!5943926 () Bool)

(assert (=> bs!1179747 m!5943926))

(assert (=> bm!343415 d!1585354))

(declare-fun d!1585356 () Bool)

(assert (=> d!1585356 (= (isEmpty!30573 (_1!33893 lt!2026449)) ((_ is Nil!56691) (_1!33893 lt!2026449)))))

(assert (=> b!4925577 d!1585356))

(declare-fun d!1585358 () Bool)

(declare-fun res!2102635 () Bool)

(declare-fun e!3078018 () Bool)

(assert (=> d!1585358 (=> res!2102635 e!3078018)))

(assert (=> d!1585358 (= res!2102635 ((_ is Nil!56692) (exprs!3517 setElem!27536)))))

(assert (=> d!1585358 (= (forall!13137 (exprs!3517 setElem!27536) lambda!245232) e!3078018)))

(declare-fun b!4926242 () Bool)

(declare-fun e!3078019 () Bool)

(assert (=> b!4926242 (= e!3078018 e!3078019)))

(declare-fun res!2102636 () Bool)

(assert (=> b!4926242 (=> (not res!2102636) (not e!3078019))))

(declare-fun dynLambda!23010 (Int Regex!13375) Bool)

(assert (=> b!4926242 (= res!2102636 (dynLambda!23010 lambda!245232 (h!63140 (exprs!3517 setElem!27536))))))

(declare-fun b!4926243 () Bool)

(assert (=> b!4926243 (= e!3078019 (forall!13137 (t!367270 (exprs!3517 setElem!27536)) lambda!245232))))

(assert (= (and d!1585358 (not res!2102635)) b!4926242))

(assert (= (and b!4926242 res!2102636) b!4926243))

(declare-fun b_lambda!196291 () Bool)

(assert (=> (not b_lambda!196291) (not b!4926242)))

(declare-fun m!5943944 () Bool)

(assert (=> b!4926242 m!5943944))

(declare-fun m!5943946 () Bool)

(assert (=> b!4926243 m!5943946))

(assert (=> d!1585028 d!1585358))

(declare-fun d!1585364 () Bool)

(declare-fun lt!2026863 () Int)

(assert (=> d!1585364 (>= lt!2026863 0)))

(declare-fun e!3078021 () Int)

(assert (=> d!1585364 (= lt!2026863 e!3078021)))

(declare-fun c!839042 () Bool)

(assert (=> d!1585364 (= c!839042 ((_ is Nil!56691) lt!2026114))))

(assert (=> d!1585364 (= (size!37484 lt!2026114) lt!2026863)))

(declare-fun b!4926246 () Bool)

(assert (=> b!4926246 (= e!3078021 0)))

(declare-fun b!4926247 () Bool)

(assert (=> b!4926247 (= e!3078021 (+ 1 (size!37484 (t!367269 lt!2026114))))))

(assert (= (and d!1585364 c!839042) b!4926246))

(assert (= (and d!1585364 (not c!839042)) b!4926247))

(declare-fun m!5943950 () Bool)

(assert (=> b!4926247 m!5943950))

(assert (=> b!4925413 d!1585364))

(declare-fun d!1585368 () Bool)

(declare-fun lt!2026865 () Int)

(assert (=> d!1585368 (>= lt!2026865 0)))

(declare-fun e!3078022 () Int)

(assert (=> d!1585368 (= lt!2026865 e!3078022)))

(declare-fun c!839043 () Bool)

(assert (=> d!1585368 (= c!839043 ((_ is Nil!56691) (_1!33893 lt!2026029)))))

(assert (=> d!1585368 (= (size!37484 (_1!33893 lt!2026029)) lt!2026865)))

(declare-fun b!4926248 () Bool)

(assert (=> b!4926248 (= e!3078022 0)))

(declare-fun b!4926249 () Bool)

(assert (=> b!4926249 (= e!3078022 (+ 1 (size!37484 (t!367269 (_1!33893 lt!2026029)))))))

(assert (= (and d!1585368 c!839043) b!4926248))

(assert (= (and d!1585368 (not c!839043)) b!4926249))

(assert (=> b!4926249 m!5943012))

(assert (=> b!4925413 d!1585368))

(declare-fun d!1585370 () Bool)

(declare-fun lt!2026866 () Int)

(assert (=> d!1585370 (>= lt!2026866 0)))

(declare-fun e!3078023 () Int)

(assert (=> d!1585370 (= lt!2026866 e!3078023)))

(declare-fun c!839044 () Bool)

(assert (=> d!1585370 (= c!839044 ((_ is Nil!56691) (_2!33893 lt!2026029)))))

(assert (=> d!1585370 (= (size!37484 (_2!33893 lt!2026029)) lt!2026866)))

(declare-fun b!4926250 () Bool)

(assert (=> b!4926250 (= e!3078023 0)))

(declare-fun b!4926251 () Bool)

(assert (=> b!4926251 (= e!3078023 (+ 1 (size!37484 (t!367269 (_2!33893 lt!2026029)))))))

(assert (= (and d!1585370 c!839044) b!4926250))

(assert (= (and d!1585370 (not c!839044)) b!4926251))

(declare-fun m!5943956 () Bool)

(assert (=> b!4926251 m!5943956))

(assert (=> b!4925413 d!1585370))

(declare-fun d!1585374 () Bool)

(declare-fun lt!2026904 () Int)

(assert (=> d!1585374 (= (size!37484 (_1!33893 (findLongestMatchInnerZipper!60 call!343417 call!343419 (+ 0 1) call!343420 (list!17953 input!5492) lt!2026032))) lt!2026904)))

(declare-fun e!3078026 () Int)

(assert (=> d!1585374 (= lt!2026904 e!3078026)))

(declare-fun c!839047 () Bool)

(assert (=> d!1585374 (= c!839047 (lostCauseZipper!693 call!343417))))

(declare-fun lt!2026880 () Unit!147207)

(declare-fun Unit!147231 () Unit!147207)

(assert (=> d!1585374 (= lt!2026880 Unit!147231)))

(assert (=> d!1585374 (= (getSuffix!2951 (list!17953 input!5492) call!343419) call!343420)))

(declare-fun lt!2026888 () Unit!147207)

(declare-fun lt!2026879 () Unit!147207)

(assert (=> d!1585374 (= lt!2026888 lt!2026879)))

(declare-fun lt!2026870 () List!56815)

(assert (=> d!1585374 (= call!343420 lt!2026870)))

(assert (=> d!1585374 (= lt!2026879 (lemmaSamePrefixThenSameSuffix!2367 call!343419 call!343420 call!343419 lt!2026870 (list!17953 input!5492)))))

(assert (=> d!1585374 (= lt!2026870 (getSuffix!2951 (list!17953 input!5492) call!343419))))

(declare-fun lt!2026885 () Unit!147207)

(declare-fun lt!2026897 () Unit!147207)

(assert (=> d!1585374 (= lt!2026885 lt!2026897)))

(assert (=> d!1585374 (isPrefix!4963 call!343419 (++!12326 call!343419 call!343420))))

(assert (=> d!1585374 (= lt!2026897 (lemmaConcatTwoListThenFirstIsPrefix!3187 call!343419 call!343420))))

(assert (=> d!1585374 (= (++!12326 call!343419 call!343420) (list!17953 input!5492))))

(assert (=> d!1585374 (= (findLongestMatchInnerZipperFast!87 call!343417 call!343419 (+ 0 1) call!343420 input!5492 lt!2026032) lt!2026904)))

(declare-fun bm!343525 () Bool)

(declare-fun call!343535 () Bool)

(assert (=> bm!343525 (= call!343535 (nullableZipper!812 call!343417))))

(declare-fun bm!343526 () Bool)

(declare-fun c!839048 () Bool)

(declare-fun c!839051 () Bool)

(assert (=> bm!343526 (= c!839048 c!839051)))

(declare-fun lt!2026891 () List!56815)

(declare-fun e!3078030 () List!56815)

(declare-fun call!343534 () Unit!147207)

(declare-fun lt!2026903 () List!56815)

(assert (=> bm!343526 (= call!343534 (lemmaIsPrefixSameLengthThenSameList!1121 (ite c!839051 lt!2026891 lt!2026903) call!343419 e!3078030))))

(declare-fun bm!343527 () Bool)

(declare-fun call!343539 () List!56815)

(assert (=> bm!343527 (= call!343539 (tail!9669 call!343420))))

(declare-fun lt!2026890 () List!56815)

(declare-fun lt!2026896 () List!56815)

(declare-fun call!343531 () Bool)

(declare-fun lt!2026892 () List!56815)

(declare-fun lt!2026868 () List!56815)

(declare-fun bm!343528 () Bool)

(assert (=> bm!343528 (= call!343531 (isPrefix!4963 (ite c!839051 lt!2026868 lt!2026890) (ite c!839051 lt!2026896 lt!2026892)))))

(declare-fun b!4926254 () Bool)

(declare-fun e!3078025 () Int)

(assert (=> b!4926254 (= e!3078026 e!3078025)))

(assert (=> b!4926254 (= c!839051 (= (+ 0 1) lt!2026032))))

(declare-fun b!4926255 () Bool)

(declare-fun c!839046 () Bool)

(assert (=> b!4926255 (= c!839046 call!343535)))

(declare-fun lt!2026887 () Unit!147207)

(declare-fun lt!2026873 () Unit!147207)

(assert (=> b!4926255 (= lt!2026887 lt!2026873)))

(assert (=> b!4926255 (= lt!2026891 call!343419)))

(assert (=> b!4926255 (= lt!2026873 call!343534)))

(declare-fun call!343533 () List!56815)

(assert (=> b!4926255 (= lt!2026891 call!343533)))

(declare-fun lt!2026899 () Unit!147207)

(declare-fun lt!2026877 () Unit!147207)

(assert (=> b!4926255 (= lt!2026899 lt!2026877)))

(assert (=> b!4926255 call!343531))

(declare-fun call!343537 () Unit!147207)

(assert (=> b!4926255 (= lt!2026877 call!343537)))

(assert (=> b!4926255 (= lt!2026896 call!343533)))

(assert (=> b!4926255 (= lt!2026868 call!343533)))

(declare-fun e!3078029 () Int)

(assert (=> b!4926255 (= e!3078025 e!3078029)))

(declare-fun bm!343529 () Bool)

(declare-fun call!343536 () (InoxSet Context!6034))

(declare-fun call!343530 () C!26960)

(assert (=> bm!343529 (= call!343536 (derivationStepZipper!590 call!343417 call!343530))))

(declare-fun bm!343530 () Bool)

(declare-fun call!343538 () List!56815)

(assert (=> bm!343530 (= call!343538 (++!12326 call!343419 (Cons!56691 call!343530 Nil!56691)))))

(declare-fun b!4926256 () Bool)

(declare-fun e!3078027 () Unit!147207)

(declare-fun Unit!147232 () Unit!147207)

(assert (=> b!4926256 (= e!3078027 Unit!147232)))

(assert (=> b!4926256 (= lt!2026890 (list!17953 input!5492))))

(assert (=> b!4926256 (= lt!2026892 (list!17953 input!5492))))

(declare-fun lt!2026906 () Unit!147207)

(assert (=> b!4926256 (= lt!2026906 call!343537)))

(assert (=> b!4926256 call!343531))

(declare-fun lt!2026878 () Unit!147207)

(assert (=> b!4926256 (= lt!2026878 lt!2026906)))

(assert (=> b!4926256 (= lt!2026903 (list!17953 input!5492))))

(declare-fun lt!2026900 () Unit!147207)

(assert (=> b!4926256 (= lt!2026900 call!343534)))

(assert (=> b!4926256 (= lt!2026903 call!343419)))

(declare-fun lt!2026882 () Unit!147207)

(assert (=> b!4926256 (= lt!2026882 lt!2026900)))

(assert (=> b!4926256 false))

(declare-fun b!4926257 () Bool)

(assert (=> b!4926257 (= e!3078030 (list!17953 input!5492))))

(declare-fun b!4926258 () Bool)

(assert (=> b!4926258 (= e!3078029 0)))

(declare-fun b!4926259 () Bool)

(declare-fun e!3078028 () Int)

(declare-fun lt!2026905 () Int)

(assert (=> b!4926259 (= e!3078028 (ite (= lt!2026905 0) (+ 0 1) lt!2026905))))

(declare-fun call!343532 () Int)

(assert (=> b!4926259 (= lt!2026905 call!343532)))

(declare-fun b!4926260 () Bool)

(assert (=> b!4926260 (= e!3078026 0)))

(declare-fun b!4926261 () Bool)

(declare-fun Unit!147233 () Unit!147207)

(assert (=> b!4926261 (= e!3078027 Unit!147233)))

(declare-fun bm!343531 () Bool)

(assert (=> bm!343531 (= call!343530 (apply!13663 input!5492 (+ 0 1)))))

(declare-fun b!4926262 () Bool)

(assert (=> b!4926262 (= e!3078029 (+ 0 1))))

(declare-fun bm!343532 () Bool)

(assert (=> bm!343532 (= call!343532 (findLongestMatchInnerZipperFast!87 call!343536 call!343538 (+ 0 1 1) call!343539 input!5492 lt!2026032))))

(declare-fun bm!343533 () Bool)

(assert (=> bm!343533 (= call!343537 (lemmaIsPrefixRefl!3359 (ite c!839051 lt!2026868 lt!2026890) (ite c!839051 lt!2026896 lt!2026892)))))

(declare-fun b!4926263 () Bool)

(assert (=> b!4926263 (= e!3078028 call!343532)))

(declare-fun bm!343534 () Bool)

(declare-fun lt!2026875 () tuple2!61182)

(assert (=> bm!343534 (= call!343533 (list!17953 (ite c!839051 input!5492 (_1!33894 lt!2026875))))))

(declare-fun b!4926264 () Bool)

(assert (=> b!4926264 (= e!3078030 call!343533)))

(declare-fun b!4926265 () Bool)

(declare-fun c!839050 () Bool)

(assert (=> b!4926265 (= c!839050 call!343535)))

(declare-fun lt!2026874 () Unit!147207)

(declare-fun lt!2026872 () Unit!147207)

(assert (=> b!4926265 (= lt!2026874 lt!2026872)))

(declare-fun lt!2026884 () List!56815)

(declare-fun lt!2026886 () List!56815)

(declare-fun lt!2026898 () C!26960)

(assert (=> b!4926265 (= (++!12326 (++!12326 call!343419 (Cons!56691 lt!2026898 Nil!56691)) lt!2026886) lt!2026884)))

(assert (=> b!4926265 (= lt!2026872 (lemmaMoveElementToOtherListKeepsConcatEq!1393 call!343419 lt!2026898 lt!2026886 lt!2026884))))

(assert (=> b!4926265 (= lt!2026884 (list!17953 input!5492))))

(assert (=> b!4926265 (= lt!2026886 (tail!9669 call!343420))))

(assert (=> b!4926265 (= lt!2026898 (apply!13663 input!5492 (+ 0 1)))))

(declare-fun lt!2026902 () Unit!147207)

(declare-fun lt!2026910 () Unit!147207)

(assert (=> b!4926265 (= lt!2026902 lt!2026910)))

(declare-fun lt!2026894 () List!56815)

(assert (=> b!4926265 (isPrefix!4963 (++!12326 call!343419 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026894 call!343419)) Nil!56691)) lt!2026894)))

(assert (=> b!4926265 (= lt!2026910 (lemmaAddHeadSuffixToPrefixStillPrefix!775 call!343419 lt!2026894))))

(assert (=> b!4926265 (= lt!2026894 (list!17953 input!5492))))

(declare-fun lt!2026907 () Unit!147207)

(assert (=> b!4926265 (= lt!2026907 e!3078027)))

(declare-fun c!839049 () Bool)

(assert (=> b!4926265 (= c!839049 (= (size!37484 call!343419) (size!37482 input!5492)))))

(declare-fun lt!2026909 () Unit!147207)

(declare-fun lt!2026883 () Unit!147207)

(assert (=> b!4926265 (= lt!2026909 lt!2026883)))

(declare-fun lt!2026876 () List!56815)

(assert (=> b!4926265 (<= (size!37484 call!343419) (size!37484 lt!2026876))))

(assert (=> b!4926265 (= lt!2026883 (lemmaIsPrefixThenSmallerEqSize!687 call!343419 lt!2026876))))

(assert (=> b!4926265 (= lt!2026876 (list!17953 input!5492))))

(declare-fun lt!2026871 () Unit!147207)

(declare-fun lt!2026881 () Unit!147207)

(assert (=> b!4926265 (= lt!2026871 lt!2026881)))

(declare-fun lt!2026869 () List!56815)

(assert (=> b!4926265 (= (head!10522 (drop!2226 lt!2026869 (+ 0 1))) (apply!13664 lt!2026869 (+ 0 1)))))

(assert (=> b!4926265 (= lt!2026881 (lemmaDropApply!1284 lt!2026869 (+ 0 1)))))

(assert (=> b!4926265 (= lt!2026869 (list!17953 input!5492))))

(declare-fun lt!2026908 () Unit!147207)

(declare-fun lt!2026901 () Unit!147207)

(assert (=> b!4926265 (= lt!2026908 lt!2026901)))

(declare-fun lt!2026893 () List!56815)

(declare-fun lt!2026889 () List!56815)

(assert (=> b!4926265 (and (= lt!2026889 call!343419) (= lt!2026893 call!343420))))

(assert (=> b!4926265 (= lt!2026901 (lemmaConcatSameAndSameSizesThenSameLists!659 lt!2026889 lt!2026893 call!343419 call!343420))))

(assert (=> b!4926265 (= lt!2026893 (list!17953 (_2!33894 lt!2026875)))))

(assert (=> b!4926265 (= lt!2026889 call!343533)))

(assert (=> b!4926265 (= lt!2026875 (splitAt!273 input!5492 (+ 0 1)))))

(assert (=> b!4926265 (= e!3078025 e!3078028)))

(assert (= (and d!1585374 c!839047) b!4926260))

(assert (= (and d!1585374 (not c!839047)) b!4926254))

(assert (= (and b!4926254 c!839051) b!4926255))

(assert (= (and b!4926254 (not c!839051)) b!4926265))

(assert (= (and b!4926255 c!839046) b!4926262))

(assert (= (and b!4926255 (not c!839046)) b!4926258))

(assert (= (and b!4926265 c!839049) b!4926256))

(assert (= (and b!4926265 (not c!839049)) b!4926261))

(assert (= (and b!4926265 c!839050) b!4926259))

(assert (= (and b!4926265 (not c!839050)) b!4926263))

(assert (= (or b!4926259 b!4926263) bm!343527))

(assert (= (or b!4926259 b!4926263) bm!343531))

(assert (= (or b!4926259 b!4926263) bm!343530))

(assert (= (or b!4926259 b!4926263) bm!343529))

(assert (= (or b!4926259 b!4926263) bm!343532))

(assert (= (or b!4926255 b!4926265) bm!343534))

(assert (= (or b!4926255 b!4926256) bm!343528))

(assert (= (or b!4926255 b!4926265) bm!343525))

(assert (= (or b!4926255 b!4926256) bm!343533))

(assert (= (or b!4926255 b!4926256) bm!343526))

(assert (= (and bm!343526 c!839048) b!4926264))

(assert (= (and bm!343526 (not c!839048)) b!4926257))

(declare-fun m!5943970 () Bool)

(assert (=> bm!343527 m!5943970))

(declare-fun m!5943972 () Bool)

(assert (=> d!1585374 m!5943972))

(declare-fun m!5943974 () Bool)

(assert (=> d!1585374 m!5943974))

(assert (=> d!1585374 m!5942636))

(assert (=> d!1585374 m!5943974))

(declare-fun m!5943976 () Bool)

(assert (=> d!1585374 m!5943976))

(declare-fun m!5943978 () Bool)

(assert (=> d!1585374 m!5943978))

(assert (=> d!1585374 m!5942636))

(declare-fun m!5943980 () Bool)

(assert (=> d!1585374 m!5943980))

(assert (=> d!1585374 m!5942636))

(declare-fun m!5943982 () Bool)

(assert (=> d!1585374 m!5943982))

(assert (=> d!1585374 m!5942636))

(declare-fun m!5943984 () Bool)

(assert (=> d!1585374 m!5943984))

(declare-fun m!5943986 () Bool)

(assert (=> d!1585374 m!5943986))

(declare-fun m!5943988 () Bool)

(assert (=> bm!343532 m!5943988))

(declare-fun m!5943990 () Bool)

(assert (=> bm!343529 m!5943990))

(declare-fun m!5943992 () Bool)

(assert (=> bm!343533 m!5943992))

(declare-fun m!5943994 () Bool)

(assert (=> bm!343531 m!5943994))

(declare-fun m!5943996 () Bool)

(assert (=> bm!343525 m!5943996))

(assert (=> b!4926256 m!5942636))

(declare-fun m!5943998 () Bool)

(assert (=> b!4926265 m!5943998))

(declare-fun m!5944000 () Bool)

(assert (=> b!4926265 m!5944000))

(declare-fun m!5944002 () Bool)

(assert (=> b!4926265 m!5944002))

(declare-fun m!5944004 () Bool)

(assert (=> b!4926265 m!5944004))

(declare-fun m!5944006 () Bool)

(assert (=> b!4926265 m!5944006))

(declare-fun m!5944008 () Bool)

(assert (=> b!4926265 m!5944008))

(assert (=> b!4926265 m!5942636))

(declare-fun m!5944010 () Bool)

(assert (=> b!4926265 m!5944010))

(declare-fun m!5944012 () Bool)

(assert (=> b!4926265 m!5944012))

(assert (=> b!4926265 m!5942634))

(declare-fun m!5944014 () Bool)

(assert (=> b!4926265 m!5944014))

(declare-fun m!5944016 () Bool)

(assert (=> b!4926265 m!5944016))

(declare-fun m!5944018 () Bool)

(assert (=> b!4926265 m!5944018))

(declare-fun m!5944020 () Bool)

(assert (=> b!4926265 m!5944020))

(assert (=> b!4926265 m!5943970))

(declare-fun m!5944022 () Bool)

(assert (=> b!4926265 m!5944022))

(declare-fun m!5944024 () Bool)

(assert (=> b!4926265 m!5944024))

(declare-fun m!5944026 () Bool)

(assert (=> b!4926265 m!5944026))

(assert (=> b!4926265 m!5944002))

(assert (=> b!4926265 m!5944022))

(declare-fun m!5944028 () Bool)

(assert (=> b!4926265 m!5944028))

(assert (=> b!4926265 m!5944016))

(declare-fun m!5944030 () Bool)

(assert (=> b!4926265 m!5944030))

(assert (=> b!4926265 m!5943994))

(assert (=> b!4926265 m!5944020))

(declare-fun m!5944032 () Bool)

(assert (=> b!4926265 m!5944032))

(declare-fun m!5944034 () Bool)

(assert (=> bm!343530 m!5944034))

(assert (=> b!4926257 m!5942636))

(declare-fun m!5944036 () Bool)

(assert (=> bm!343528 m!5944036))

(declare-fun m!5944038 () Bool)

(assert (=> bm!343534 m!5944038))

(declare-fun m!5944040 () Bool)

(assert (=> bm!343526 m!5944040))

(assert (=> bm!343413 d!1585374))

(assert (=> bm!343412 d!1585232))

(declare-fun b!4926272 () Bool)

(declare-fun res!2102642 () Bool)

(declare-fun e!3078036 () Bool)

(assert (=> b!4926272 (=> (not res!2102642) (not e!3078036))))

(assert (=> b!4926272 (= res!2102642 (not (isEmpty!30575 (left!41337 (c!838722 (_2!33894 lt!2026467))))))))

(declare-fun b!4926273 () Bool)

(assert (=> b!4926273 (= e!3078036 (not (isEmpty!30575 (right!41667 (c!838722 (_2!33894 lt!2026467))))))))

(declare-fun d!1585380 () Bool)

(declare-fun res!2102643 () Bool)

(declare-fun e!3078035 () Bool)

(assert (=> d!1585380 (=> res!2102643 e!3078035)))

(assert (=> d!1585380 (= res!2102643 (not ((_ is Node!14874) (c!838722 (_2!33894 lt!2026467)))))))

(assert (=> d!1585380 (= (isBalanced!4087 (c!838722 (_2!33894 lt!2026467))) e!3078035)))

(declare-fun b!4926274 () Bool)

(assert (=> b!4926274 (= e!3078035 e!3078036)))

(declare-fun res!2102644 () Bool)

(assert (=> b!4926274 (=> (not res!2102644) (not e!3078036))))

(assert (=> b!4926274 (= res!2102644 (<= (- 1) (- (height!1984 (left!41337 (c!838722 (_2!33894 lt!2026467)))) (height!1984 (right!41667 (c!838722 (_2!33894 lt!2026467)))))))))

(declare-fun b!4926275 () Bool)

(declare-fun res!2102641 () Bool)

(assert (=> b!4926275 (=> (not res!2102641) (not e!3078036))))

(assert (=> b!4926275 (= res!2102641 (<= (- (height!1984 (left!41337 (c!838722 (_2!33894 lt!2026467)))) (height!1984 (right!41667 (c!838722 (_2!33894 lt!2026467))))) 1))))

(declare-fun b!4926276 () Bool)

(declare-fun res!2102640 () Bool)

(assert (=> b!4926276 (=> (not res!2102640) (not e!3078036))))

(assert (=> b!4926276 (= res!2102640 (isBalanced!4087 (right!41667 (c!838722 (_2!33894 lt!2026467)))))))

(declare-fun b!4926277 () Bool)

(declare-fun res!2102639 () Bool)

(assert (=> b!4926277 (=> (not res!2102639) (not e!3078036))))

(assert (=> b!4926277 (= res!2102639 (isBalanced!4087 (left!41337 (c!838722 (_2!33894 lt!2026467)))))))

(assert (= (and d!1585380 (not res!2102643)) b!4926274))

(assert (= (and b!4926274 res!2102644) b!4926275))

(assert (= (and b!4926275 res!2102641) b!4926277))

(assert (= (and b!4926277 res!2102639) b!4926276))

(assert (= (and b!4926276 res!2102640) b!4926272))

(assert (= (and b!4926272 res!2102642) b!4926273))

(declare-fun m!5944052 () Bool)

(assert (=> b!4926274 m!5944052))

(declare-fun m!5944054 () Bool)

(assert (=> b!4926274 m!5944054))

(assert (=> b!4926275 m!5944052))

(assert (=> b!4926275 m!5944054))

(declare-fun m!5944056 () Bool)

(assert (=> b!4926273 m!5944056))

(declare-fun m!5944058 () Bool)

(assert (=> b!4926277 m!5944058))

(declare-fun m!5944060 () Bool)

(assert (=> b!4926276 m!5944060))

(declare-fun m!5944062 () Bool)

(assert (=> b!4926272 m!5944062))

(assert (=> b!4925589 d!1585380))

(declare-fun d!1585384 () Bool)

(declare-fun c!839055 () Bool)

(assert (=> d!1585384 (= c!839055 ((_ is Nil!56691) lt!2026115))))

(declare-fun e!3078042 () (InoxSet C!26960))

(assert (=> d!1585384 (= (content!10071 lt!2026115) e!3078042)))

(declare-fun b!4926285 () Bool)

(assert (=> b!4926285 (= e!3078042 ((as const (Array C!26960 Bool)) false))))

(declare-fun b!4926286 () Bool)

(assert (=> b!4926286 (= e!3078042 ((_ map or) (store ((as const (Array C!26960 Bool)) false) (h!63139 lt!2026115) true) (content!10071 (t!367269 lt!2026115))))))

(assert (= (and d!1585384 c!839055) b!4926285))

(assert (= (and d!1585384 (not c!839055)) b!4926286))

(declare-fun m!5944064 () Bool)

(assert (=> b!4926286 m!5944064))

(declare-fun m!5944066 () Bool)

(assert (=> b!4926286 m!5944066))

(assert (=> d!1585040 d!1585384))

(declare-fun d!1585386 () Bool)

(declare-fun c!839056 () Bool)

(assert (=> d!1585386 (= c!839056 ((_ is Nil!56691) lt!2026030))))

(declare-fun e!3078043 () (InoxSet C!26960))

(assert (=> d!1585386 (= (content!10071 lt!2026030) e!3078043)))

(declare-fun b!4926287 () Bool)

(assert (=> b!4926287 (= e!3078043 ((as const (Array C!26960 Bool)) false))))

(declare-fun b!4926288 () Bool)

(assert (=> b!4926288 (= e!3078043 ((_ map or) (store ((as const (Array C!26960 Bool)) false) (h!63139 lt!2026030) true) (content!10071 (t!367269 lt!2026030))))))

(assert (= (and d!1585386 c!839056) b!4926287))

(assert (= (and d!1585386 (not c!839056)) b!4926288))

(declare-fun m!5944070 () Bool)

(assert (=> b!4926288 m!5944070))

(declare-fun m!5944072 () Bool)

(assert (=> b!4926288 m!5944072))

(assert (=> d!1585040 d!1585386))

(declare-fun d!1585388 () Bool)

(declare-fun c!839057 () Bool)

(assert (=> d!1585388 (= c!839057 ((_ is Nil!56691) lt!2026028))))

(declare-fun e!3078044 () (InoxSet C!26960))

(assert (=> d!1585388 (= (content!10071 lt!2026028) e!3078044)))

(declare-fun b!4926289 () Bool)

(assert (=> b!4926289 (= e!3078044 ((as const (Array C!26960 Bool)) false))))

(declare-fun b!4926290 () Bool)

(assert (=> b!4926290 (= e!3078044 ((_ map or) (store ((as const (Array C!26960 Bool)) false) (h!63139 lt!2026028) true) (content!10071 (t!367269 lt!2026028))))))

(assert (= (and d!1585388 c!839057) b!4926289))

(assert (= (and d!1585388 (not c!839057)) b!4926290))

(declare-fun m!5944080 () Bool)

(assert (=> b!4926290 m!5944080))

(declare-fun m!5944084 () Bool)

(assert (=> b!4926290 m!5944084))

(assert (=> d!1585040 d!1585388))

(declare-fun b!4926294 () Bool)

(declare-fun e!3078046 () List!56815)

(assert (=> b!4926294 (= e!3078046 (++!12326 (list!17955 (left!41337 (c!838722 (_1!33894 lt!2026033)))) (list!17955 (right!41667 (c!838722 (_1!33894 lt!2026033))))))))

(declare-fun b!4926292 () Bool)

(declare-fun e!3078045 () List!56815)

(assert (=> b!4926292 (= e!3078045 e!3078046)))

(declare-fun c!839059 () Bool)

(assert (=> b!4926292 (= c!839059 ((_ is Leaf!24744) (c!838722 (_1!33894 lt!2026033))))))

(declare-fun b!4926293 () Bool)

(assert (=> b!4926293 (= e!3078046 (list!17956 (xs!18196 (c!838722 (_1!33894 lt!2026033)))))))

(declare-fun d!1585392 () Bool)

(declare-fun c!839058 () Bool)

(assert (=> d!1585392 (= c!839058 ((_ is Empty!14874) (c!838722 (_1!33894 lt!2026033))))))

(assert (=> d!1585392 (= (list!17955 (c!838722 (_1!33894 lt!2026033))) e!3078045)))

(declare-fun b!4926291 () Bool)

(assert (=> b!4926291 (= e!3078045 Nil!56691)))

(assert (= (and d!1585392 c!839058) b!4926291))

(assert (= (and d!1585392 (not c!839058)) b!4926292))

(assert (= (and b!4926292 c!839059) b!4926293))

(assert (= (and b!4926292 (not c!839059)) b!4926294))

(declare-fun m!5944088 () Bool)

(assert (=> b!4926294 m!5944088))

(declare-fun m!5944090 () Bool)

(assert (=> b!4926294 m!5944090))

(assert (=> b!4926294 m!5944088))

(assert (=> b!4926294 m!5944090))

(declare-fun m!5944094 () Bool)

(assert (=> b!4926294 m!5944094))

(declare-fun m!5944096 () Bool)

(assert (=> b!4926293 m!5944096))

(assert (=> d!1585068 d!1585392))

(declare-fun b!4926297 () Bool)

(declare-fun e!3078048 () Bool)

(assert (=> b!4926297 (= e!3078048 (isPrefix!4963 (tail!9669 lt!2026031) (tail!9669 lt!2026031)))))

(declare-fun b!4926298 () Bool)

(declare-fun e!3078047 () Bool)

(assert (=> b!4926298 (= e!3078047 (>= (size!37484 lt!2026031) (size!37484 lt!2026031)))))

(declare-fun d!1585396 () Bool)

(assert (=> d!1585396 e!3078047))

(declare-fun res!2102652 () Bool)

(assert (=> d!1585396 (=> res!2102652 e!3078047)))

(declare-fun lt!2026916 () Bool)

(assert (=> d!1585396 (= res!2102652 (not lt!2026916))))

(declare-fun e!3078049 () Bool)

(assert (=> d!1585396 (= lt!2026916 e!3078049)))

(declare-fun res!2102653 () Bool)

(assert (=> d!1585396 (=> res!2102653 e!3078049)))

(assert (=> d!1585396 (= res!2102653 ((_ is Nil!56691) lt!2026031))))

(assert (=> d!1585396 (= (isPrefix!4963 lt!2026031 lt!2026031) lt!2026916)))

(declare-fun b!4926296 () Bool)

(declare-fun res!2102650 () Bool)

(assert (=> b!4926296 (=> (not res!2102650) (not e!3078048))))

(assert (=> b!4926296 (= res!2102650 (= (head!10522 lt!2026031) (head!10522 lt!2026031)))))

(declare-fun b!4926295 () Bool)

(assert (=> b!4926295 (= e!3078049 e!3078048)))

(declare-fun res!2102651 () Bool)

(assert (=> b!4926295 (=> (not res!2102651) (not e!3078048))))

(assert (=> b!4926295 (= res!2102651 (not ((_ is Nil!56691) lt!2026031)))))

(assert (= (and d!1585396 (not res!2102653)) b!4926295))

(assert (= (and b!4926295 res!2102651) b!4926296))

(assert (= (and b!4926296 res!2102650) b!4926297))

(assert (= (and d!1585396 (not res!2102652)) b!4926298))

(assert (=> b!4926297 m!5942838))

(assert (=> b!4926297 m!5942838))

(assert (=> b!4926297 m!5942838))

(assert (=> b!4926297 m!5942838))

(declare-fun m!5944098 () Bool)

(assert (=> b!4926297 m!5944098))

(assert (=> b!4926298 m!5942968))

(assert (=> b!4926298 m!5942968))

(assert (=> b!4926296 m!5942970))

(assert (=> b!4926296 m!5942970))

(assert (=> bm!343432 d!1585396))

(assert (=> bm!343434 d!1585212))

(assert (=> b!4925497 d!1585070))

(declare-fun b!4926306 () Bool)

(declare-fun e!3078053 () Bool)

(declare-fun lt!2026918 () List!56815)

(assert (=> b!4926306 (= e!3078053 (or (not (= (Cons!56691 call!343411 Nil!56691) Nil!56691)) (= lt!2026918 Nil!56691)))))

(declare-fun b!4926304 () Bool)

(declare-fun e!3078052 () List!56815)

(assert (=> b!4926304 (= e!3078052 (Cons!56691 (h!63139 Nil!56691) (++!12326 (t!367269 Nil!56691) (Cons!56691 call!343411 Nil!56691))))))

(declare-fun b!4926303 () Bool)

(assert (=> b!4926303 (= e!3078052 (Cons!56691 call!343411 Nil!56691))))

(declare-fun b!4926305 () Bool)

(declare-fun res!2102657 () Bool)

(assert (=> b!4926305 (=> (not res!2102657) (not e!3078053))))

(assert (=> b!4926305 (= res!2102657 (= (size!37484 lt!2026918) (+ (size!37484 Nil!56691) (size!37484 (Cons!56691 call!343411 Nil!56691)))))))

(declare-fun d!1585398 () Bool)

(assert (=> d!1585398 e!3078053))

(declare-fun res!2102656 () Bool)

(assert (=> d!1585398 (=> (not res!2102656) (not e!3078053))))

(assert (=> d!1585398 (= res!2102656 (= (content!10071 lt!2026918) ((_ map or) (content!10071 Nil!56691) (content!10071 (Cons!56691 call!343411 Nil!56691)))))))

(assert (=> d!1585398 (= lt!2026918 e!3078052)))

(declare-fun c!839061 () Bool)

(assert (=> d!1585398 (= c!839061 ((_ is Nil!56691) Nil!56691))))

(assert (=> d!1585398 (= (++!12326 Nil!56691 (Cons!56691 call!343411 Nil!56691)) lt!2026918)))

(assert (= (and d!1585398 c!839061) b!4926303))

(assert (= (and d!1585398 (not c!839061)) b!4926304))

(assert (= (and d!1585398 res!2102656) b!4926305))

(assert (= (and b!4926305 res!2102657) b!4926306))

(declare-fun m!5944110 () Bool)

(assert (=> b!4926304 m!5944110))

(declare-fun m!5944112 () Bool)

(assert (=> b!4926305 m!5944112))

(assert (=> b!4926305 m!5942882))

(declare-fun m!5944114 () Bool)

(assert (=> b!4926305 m!5944114))

(declare-fun m!5944116 () Bool)

(assert (=> d!1585398 m!5944116))

(assert (=> d!1585398 m!5943466))

(declare-fun m!5944118 () Bool)

(assert (=> d!1585398 m!5944118))

(assert (=> bm!343411 d!1585398))

(declare-fun d!1585404 () Bool)

(assert (=> d!1585404 (= (inv!73485 (xs!18196 (c!838722 input!5492))) (<= (size!37484 (innerList!14962 (xs!18196 (c!838722 input!5492)))) 2147483647))))

(declare-fun bs!1179752 () Bool)

(assert (= bs!1179752 d!1585404))

(declare-fun m!5944130 () Bool)

(assert (=> bs!1179752 m!5944130))

(assert (=> b!4925605 d!1585404))

(declare-fun e!3078057 () Bool)

(declare-fun b!4926313 () Bool)

(assert (=> b!4926313 (= e!3078057 (isPrefix!4963 (tail!9669 (ite c!838787 lt!2026333 lt!2026355)) (tail!9669 (ite c!838787 lt!2026360 lt!2026357))))))

(declare-fun e!3078056 () Bool)

(declare-fun b!4926314 () Bool)

(assert (=> b!4926314 (= e!3078056 (>= (size!37484 (ite c!838787 lt!2026360 lt!2026357)) (size!37484 (ite c!838787 lt!2026333 lt!2026355))))))

(declare-fun d!1585408 () Bool)

(assert (=> d!1585408 e!3078056))

(declare-fun res!2102662 () Bool)

(assert (=> d!1585408 (=> res!2102662 e!3078056)))

(declare-fun lt!2026920 () Bool)

(assert (=> d!1585408 (= res!2102662 (not lt!2026920))))

(declare-fun e!3078058 () Bool)

(assert (=> d!1585408 (= lt!2026920 e!3078058)))

(declare-fun res!2102663 () Bool)

(assert (=> d!1585408 (=> res!2102663 e!3078058)))

(assert (=> d!1585408 (= res!2102663 ((_ is Nil!56691) (ite c!838787 lt!2026333 lt!2026355)))))

(assert (=> d!1585408 (= (isPrefix!4963 (ite c!838787 lt!2026333 lt!2026355) (ite c!838787 lt!2026360 lt!2026357)) lt!2026920)))

(declare-fun b!4926312 () Bool)

(declare-fun res!2102660 () Bool)

(assert (=> b!4926312 (=> (not res!2102660) (not e!3078057))))

(assert (=> b!4926312 (= res!2102660 (= (head!10522 (ite c!838787 lt!2026333 lt!2026355)) (head!10522 (ite c!838787 lt!2026360 lt!2026357))))))

(declare-fun b!4926311 () Bool)

(assert (=> b!4926311 (= e!3078058 e!3078057)))

(declare-fun res!2102661 () Bool)

(assert (=> b!4926311 (=> (not res!2102661) (not e!3078057))))

(assert (=> b!4926311 (= res!2102661 (not ((_ is Nil!56691) (ite c!838787 lt!2026360 lt!2026357))))))

(assert (= (and d!1585408 (not res!2102663)) b!4926311))

(assert (= (and b!4926311 res!2102661) b!4926312))

(assert (= (and b!4926312 res!2102660) b!4926313))

(assert (= (and d!1585408 (not res!2102662)) b!4926314))

(declare-fun m!5944132 () Bool)

(assert (=> b!4926313 m!5944132))

(declare-fun m!5944134 () Bool)

(assert (=> b!4926313 m!5944134))

(assert (=> b!4926313 m!5944132))

(assert (=> b!4926313 m!5944134))

(declare-fun m!5944136 () Bool)

(assert (=> b!4926313 m!5944136))

(declare-fun m!5944138 () Bool)

(assert (=> b!4926314 m!5944138))

(declare-fun m!5944140 () Bool)

(assert (=> b!4926314 m!5944140))

(declare-fun m!5944142 () Bool)

(assert (=> b!4926312 m!5944142))

(declare-fun m!5944144 () Bool)

(assert (=> b!4926312 m!5944144))

(assert (=> bm!343409 d!1585408))

(declare-fun d!1585410 () Bool)

(assert (=> d!1585410 (= (ite c!838787 lt!2026356 lt!2026367) Nil!56691)))

(declare-fun lt!2026921 () Unit!147207)

(assert (=> d!1585410 (= lt!2026921 (choose!36069 (ite c!838787 lt!2026356 lt!2026367) Nil!56691 e!3077618))))

(assert (=> d!1585410 (isPrefix!4963 (ite c!838787 lt!2026356 lt!2026367) e!3077618)))

(assert (=> d!1585410 (= (lemmaIsPrefixSameLengthThenSameList!1121 (ite c!838787 lt!2026356 lt!2026367) Nil!56691 e!3077618) lt!2026921)))

(declare-fun bs!1179753 () Bool)

(assert (= bs!1179753 d!1585410))

(declare-fun m!5944146 () Bool)

(assert (=> bs!1179753 m!5944146))

(declare-fun m!5944148 () Bool)

(assert (=> bs!1179753 m!5944148))

(assert (=> bm!343407 d!1585410))

(declare-fun b!4926318 () Bool)

(declare-fun e!3078060 () Bool)

(declare-fun lt!2026922 () List!56815)

(assert (=> b!4926318 (= e!3078060 (or (not (= (_2!33893 lt!2026439) Nil!56691)) (= lt!2026922 (_1!33893 lt!2026439))))))

(declare-fun b!4926316 () Bool)

(declare-fun e!3078059 () List!56815)

(assert (=> b!4926316 (= e!3078059 (Cons!56691 (h!63139 (_1!33893 lt!2026439)) (++!12326 (t!367269 (_1!33893 lt!2026439)) (_2!33893 lt!2026439))))))

(declare-fun b!4926315 () Bool)

(assert (=> b!4926315 (= e!3078059 (_2!33893 lt!2026439))))

(declare-fun b!4926317 () Bool)

(declare-fun res!2102665 () Bool)

(assert (=> b!4926317 (=> (not res!2102665) (not e!3078060))))

(assert (=> b!4926317 (= res!2102665 (= (size!37484 lt!2026922) (+ (size!37484 (_1!33893 lt!2026439)) (size!37484 (_2!33893 lt!2026439)))))))

(declare-fun d!1585412 () Bool)

(assert (=> d!1585412 e!3078060))

(declare-fun res!2102664 () Bool)

(assert (=> d!1585412 (=> (not res!2102664) (not e!3078060))))

(assert (=> d!1585412 (= res!2102664 (= (content!10071 lt!2026922) ((_ map or) (content!10071 (_1!33893 lt!2026439)) (content!10071 (_2!33893 lt!2026439)))))))

(assert (=> d!1585412 (= lt!2026922 e!3078059)))

(declare-fun c!839063 () Bool)

(assert (=> d!1585412 (= c!839063 ((_ is Nil!56691) (_1!33893 lt!2026439)))))

(assert (=> d!1585412 (= (++!12326 (_1!33893 lt!2026439) (_2!33893 lt!2026439)) lt!2026922)))

(assert (= (and d!1585412 c!839063) b!4926315))

(assert (= (and d!1585412 (not c!839063)) b!4926316))

(assert (= (and d!1585412 res!2102664) b!4926317))

(assert (= (and b!4926317 res!2102665) b!4926318))

(declare-fun m!5944150 () Bool)

(assert (=> b!4926316 m!5944150))

(declare-fun m!5944152 () Bool)

(assert (=> b!4926317 m!5944152))

(assert (=> b!4926317 m!5942980))

(declare-fun m!5944154 () Bool)

(assert (=> b!4926317 m!5944154))

(declare-fun m!5944156 () Bool)

(assert (=> d!1585412 m!5944156))

(declare-fun m!5944158 () Bool)

(assert (=> d!1585412 m!5944158))

(declare-fun m!5944160 () Bool)

(assert (=> d!1585412 m!5944160))

(assert (=> d!1585062 d!1585412))

(assert (=> d!1585062 d!1585288))

(assert (=> d!1585062 d!1585202))

(declare-fun d!1585414 () Bool)

(assert (=> d!1585414 (= lt!2026031 lt!2026457)))

(declare-fun lt!2026925 () Unit!147207)

(assert (=> d!1585414 (= lt!2026925 (choose!36076 Nil!56691 lt!2026031 Nil!56691 lt!2026457 lt!2026031))))

(assert (=> d!1585414 (isPrefix!4963 Nil!56691 lt!2026031)))

(assert (=> d!1585414 (= (lemmaSamePrefixThenSameSuffix!2367 Nil!56691 lt!2026031 Nil!56691 lt!2026457 lt!2026031) lt!2026925)))

(declare-fun bs!1179754 () Bool)

(assert (= bs!1179754 d!1585414))

(declare-fun m!5944162 () Bool)

(assert (=> bs!1179754 m!5944162))

(assert (=> bs!1179754 m!5943456))

(assert (=> d!1585062 d!1585414))

(assert (=> d!1585062 d!1585330))

(assert (=> d!1585062 d!1585344))

(assert (=> d!1585062 d!1585346))

(assert (=> d!1585072 d!1585162))

(declare-fun b!4926324 () Bool)

(declare-fun e!3078064 () Bool)

(declare-fun lt!2026926 () List!56815)

(assert (=> b!4926324 (= e!3078064 (or (not (= lt!2026028 Nil!56691)) (= lt!2026926 (t!367269 lt!2026030))))))

(declare-fun b!4926322 () Bool)

(declare-fun e!3078063 () List!56815)

(assert (=> b!4926322 (= e!3078063 (Cons!56691 (h!63139 (t!367269 lt!2026030)) (++!12326 (t!367269 (t!367269 lt!2026030)) lt!2026028)))))

(declare-fun b!4926321 () Bool)

(assert (=> b!4926321 (= e!3078063 lt!2026028)))

(declare-fun b!4926323 () Bool)

(declare-fun res!2102669 () Bool)

(assert (=> b!4926323 (=> (not res!2102669) (not e!3078064))))

(assert (=> b!4926323 (= res!2102669 (= (size!37484 lt!2026926) (+ (size!37484 (t!367269 lt!2026030)) (size!37484 lt!2026028))))))

(declare-fun d!1585416 () Bool)

(assert (=> d!1585416 e!3078064))

(declare-fun res!2102668 () Bool)

(assert (=> d!1585416 (=> (not res!2102668) (not e!3078064))))

(assert (=> d!1585416 (= res!2102668 (= (content!10071 lt!2026926) ((_ map or) (content!10071 (t!367269 lt!2026030)) (content!10071 lt!2026028))))))

(assert (=> d!1585416 (= lt!2026926 e!3078063)))

(declare-fun c!839064 () Bool)

(assert (=> d!1585416 (= c!839064 ((_ is Nil!56691) (t!367269 lt!2026030)))))

(assert (=> d!1585416 (= (++!12326 (t!367269 lt!2026030) lt!2026028) lt!2026926)))

(assert (= (and d!1585416 c!839064) b!4926321))

(assert (= (and d!1585416 (not c!839064)) b!4926322))

(assert (= (and d!1585416 res!2102668) b!4926323))

(assert (= (and b!4926323 res!2102669) b!4926324))

(declare-fun m!5944164 () Bool)

(assert (=> b!4926322 m!5944164))

(declare-fun m!5944166 () Bool)

(assert (=> b!4926323 m!5944166))

(assert (=> b!4926323 m!5943528))

(assert (=> b!4926323 m!5942732))

(declare-fun m!5944168 () Bool)

(assert (=> d!1585416 m!5944168))

(assert (=> d!1585416 m!5944072))

(assert (=> d!1585416 m!5942738))

(assert (=> b!4925416 d!1585416))

(declare-fun b!4926326 () Bool)

(declare-fun e!3078068 () Bool)

(declare-fun e!3078070 () Bool)

(assert (=> b!4926326 (= e!3078068 e!3078070)))

(declare-fun res!2102672 () Bool)

(assert (=> b!4926326 (=> res!2102672 e!3078070)))

(declare-fun lt!2026931 () tuple2!61180)

(assert (=> b!4926326 (= res!2102672 (isEmpty!30573 (_1!33893 lt!2026931)))))

(declare-fun b!4926327 () Bool)

(declare-fun e!3078073 () tuple2!61180)

(assert (=> b!4926327 (= e!3078073 (tuple2!61181 lt!2026442 Nil!56691))))

(declare-fun b!4926328 () Bool)

(declare-fun e!3078066 () Unit!147207)

(declare-fun Unit!147234 () Unit!147207)

(assert (=> b!4926328 (= e!3078066 Unit!147234)))

(declare-fun b!4926329 () Bool)

(declare-fun Unit!147235 () Unit!147207)

(assert (=> b!4926329 (= e!3078066 Unit!147235)))

(declare-fun lt!2026953 () Unit!147207)

(declare-fun call!343542 () Unit!147207)

(assert (=> b!4926329 (= lt!2026953 call!343542)))

(declare-fun call!343546 () Bool)

(assert (=> b!4926329 call!343546))

(declare-fun lt!2026932 () Unit!147207)

(assert (=> b!4926329 (= lt!2026932 lt!2026953)))

(declare-fun lt!2026948 () Unit!147207)

(declare-fun call!343541 () Unit!147207)

(assert (=> b!4926329 (= lt!2026948 call!343541)))

(assert (=> b!4926329 (= lt!2026031 lt!2026442)))

(declare-fun lt!2026946 () Unit!147207)

(assert (=> b!4926329 (= lt!2026946 lt!2026948)))

(assert (=> b!4926329 false))

(declare-fun bm!343535 () Bool)

(assert (=> bm!343535 (= call!343546 (isPrefix!4963 lt!2026031 lt!2026031))))

(declare-fun bm!343536 () Bool)

(declare-fun call!343543 () (InoxSet Context!6034))

(declare-fun call!343544 () C!26960)

(assert (=> bm!343536 (= call!343543 (derivationStepZipper!590 call!343440 call!343544))))

(declare-fun bm!343537 () Bool)

(assert (=> bm!343537 (= call!343544 (head!10522 call!343442))))

(declare-fun bm!343538 () Bool)

(assert (=> bm!343538 (= call!343542 (lemmaIsPrefixRefl!3359 lt!2026031 lt!2026031))))

(declare-fun b!4926331 () Bool)

(declare-fun e!3078069 () tuple2!61180)

(assert (=> b!4926331 (= e!3078069 (tuple2!61181 Nil!56691 lt!2026031))))

(declare-fun b!4926332 () Bool)

(declare-fun e!3078072 () tuple2!61180)

(declare-fun e!3078067 () tuple2!61180)

(assert (=> b!4926332 (= e!3078072 e!3078067)))

(declare-fun lt!2026941 () tuple2!61180)

(declare-fun call!343547 () tuple2!61180)

(assert (=> b!4926332 (= lt!2026941 call!343547)))

(declare-fun c!839069 () Bool)

(assert (=> b!4926332 (= c!839069 (isEmpty!30573 (_1!33893 lt!2026941)))))

(declare-fun bm!343539 () Bool)

(declare-fun call!343540 () Bool)

(assert (=> bm!343539 (= call!343540 (nullableZipper!812 call!343440))))

(declare-fun b!4926333 () Bool)

(assert (=> b!4926333 (= e!3078070 (>= (size!37484 (_1!33893 lt!2026931)) (size!37484 lt!2026442)))))

(declare-fun b!4926334 () Bool)

(assert (=> b!4926334 (= e!3078072 call!343547)))

(declare-fun bm!343540 () Bool)

(declare-fun call!343545 () List!56815)

(assert (=> bm!343540 (= call!343545 (tail!9669 call!343442))))

(declare-fun b!4926335 () Bool)

(assert (=> b!4926335 (= e!3078073 (tuple2!61181 Nil!56691 lt!2026031))))

(declare-fun lt!2026934 () List!56815)

(declare-fun bm!343541 () Bool)

(assert (=> bm!343541 (= call!343547 (findLongestMatchInnerZipper!60 call!343543 lt!2026934 (+ 0 1 1) call!343545 lt!2026031 lt!2026032))))

(declare-fun b!4926336 () Bool)

(declare-fun e!3078071 () tuple2!61180)

(assert (=> b!4926336 (= e!3078069 e!3078071)))

(declare-fun c!839066 () Bool)

(assert (=> b!4926336 (= c!839066 (= (+ 0 1) lt!2026032))))

(declare-fun b!4926337 () Bool)

(assert (=> b!4926337 (= e!3078067 lt!2026941)))

(declare-fun d!1585418 () Bool)

(assert (=> d!1585418 e!3078068))

(declare-fun res!2102671 () Bool)

(assert (=> d!1585418 (=> (not res!2102671) (not e!3078068))))

(assert (=> d!1585418 (= res!2102671 (= (++!12326 (_1!33893 lt!2026931) (_2!33893 lt!2026931)) lt!2026031))))

(assert (=> d!1585418 (= lt!2026931 e!3078069)))

(declare-fun c!839070 () Bool)

(assert (=> d!1585418 (= c!839070 (lostCauseZipper!693 call!343440))))

(declare-fun lt!2026943 () Unit!147207)

(declare-fun Unit!147236 () Unit!147207)

(assert (=> d!1585418 (= lt!2026943 Unit!147236)))

(assert (=> d!1585418 (= (getSuffix!2951 lt!2026031 lt!2026442) call!343442)))

(declare-fun lt!2026937 () Unit!147207)

(declare-fun lt!2026928 () Unit!147207)

(assert (=> d!1585418 (= lt!2026937 lt!2026928)))

(declare-fun lt!2026949 () List!56815)

(assert (=> d!1585418 (= call!343442 lt!2026949)))

(assert (=> d!1585418 (= lt!2026928 (lemmaSamePrefixThenSameSuffix!2367 lt!2026442 call!343442 lt!2026442 lt!2026949 lt!2026031))))

(assert (=> d!1585418 (= lt!2026949 (getSuffix!2951 lt!2026031 lt!2026442))))

(declare-fun lt!2026947 () Unit!147207)

(declare-fun lt!2026940 () Unit!147207)

(assert (=> d!1585418 (= lt!2026947 lt!2026940)))

(assert (=> d!1585418 (isPrefix!4963 lt!2026442 (++!12326 lt!2026442 call!343442))))

(assert (=> d!1585418 (= lt!2026940 (lemmaConcatTwoListThenFirstIsPrefix!3187 lt!2026442 call!343442))))

(assert (=> d!1585418 (= (++!12326 lt!2026442 call!343442) lt!2026031)))

(assert (=> d!1585418 (= (findLongestMatchInnerZipper!60 call!343440 lt!2026442 (+ 0 1) call!343442 lt!2026031 lt!2026032) lt!2026931)))

(declare-fun b!4926330 () Bool)

(declare-fun c!839067 () Bool)

(assert (=> b!4926330 (= c!839067 call!343540)))

(declare-fun lt!2026950 () Unit!147207)

(declare-fun lt!2026952 () Unit!147207)

(assert (=> b!4926330 (= lt!2026950 lt!2026952)))

(assert (=> b!4926330 (= lt!2026031 lt!2026442)))

(assert (=> b!4926330 (= lt!2026952 call!343541)))

(declare-fun lt!2026945 () Unit!147207)

(declare-fun lt!2026938 () Unit!147207)

(assert (=> b!4926330 (= lt!2026945 lt!2026938)))

(assert (=> b!4926330 call!343546))

(assert (=> b!4926330 (= lt!2026938 call!343542)))

(assert (=> b!4926330 (= e!3078071 e!3078073)))

(declare-fun b!4926338 () Bool)

(declare-fun c!839065 () Bool)

(assert (=> b!4926338 (= c!839065 call!343540)))

(declare-fun lt!2026942 () Unit!147207)

(declare-fun lt!2026929 () Unit!147207)

(assert (=> b!4926338 (= lt!2026942 lt!2026929)))

(declare-fun lt!2026936 () C!26960)

(declare-fun lt!2026939 () List!56815)

(assert (=> b!4926338 (= (++!12326 (++!12326 lt!2026442 (Cons!56691 lt!2026936 Nil!56691)) lt!2026939) lt!2026031)))

(assert (=> b!4926338 (= lt!2026929 (lemmaMoveElementToOtherListKeepsConcatEq!1393 lt!2026442 lt!2026936 lt!2026939 lt!2026031))))

(assert (=> b!4926338 (= lt!2026939 (tail!9669 call!343442))))

(assert (=> b!4926338 (= lt!2026936 (head!10522 call!343442))))

(declare-fun lt!2026944 () Unit!147207)

(declare-fun lt!2026933 () Unit!147207)

(assert (=> b!4926338 (= lt!2026944 lt!2026933)))

(assert (=> b!4926338 (isPrefix!4963 (++!12326 lt!2026442 (Cons!56691 (head!10522 (getSuffix!2951 lt!2026031 lt!2026442)) Nil!56691)) lt!2026031)))

(assert (=> b!4926338 (= lt!2026933 (lemmaAddHeadSuffixToPrefixStillPrefix!775 lt!2026442 lt!2026031))))

(assert (=> b!4926338 (= lt!2026934 (++!12326 lt!2026442 (Cons!56691 (head!10522 call!343442) Nil!56691)))))

(declare-fun lt!2026935 () Unit!147207)

(assert (=> b!4926338 (= lt!2026935 e!3078066)))

(declare-fun c!839068 () Bool)

(assert (=> b!4926338 (= c!839068 (= (size!37484 lt!2026442) (size!37484 lt!2026031)))))

(declare-fun lt!2026930 () Unit!147207)

(declare-fun lt!2026951 () Unit!147207)

(assert (=> b!4926338 (= lt!2026930 lt!2026951)))

(assert (=> b!4926338 (<= (size!37484 lt!2026442) (size!37484 lt!2026031))))

(assert (=> b!4926338 (= lt!2026951 (lemmaIsPrefixThenSmallerEqSize!687 lt!2026442 lt!2026031))))

(assert (=> b!4926338 (= e!3078071 e!3078072)))

(declare-fun b!4926339 () Bool)

(assert (=> b!4926339 (= e!3078067 (tuple2!61181 lt!2026442 call!343442))))

(declare-fun bm!343542 () Bool)

(assert (=> bm!343542 (= call!343541 (lemmaIsPrefixSameLengthThenSameList!1121 lt!2026031 lt!2026442 lt!2026031))))

(assert (= (and d!1585418 c!839070) b!4926331))

(assert (= (and d!1585418 (not c!839070)) b!4926336))

(assert (= (and b!4926336 c!839066) b!4926330))

(assert (= (and b!4926336 (not c!839066)) b!4926338))

(assert (= (and b!4926330 c!839067) b!4926327))

(assert (= (and b!4926330 (not c!839067)) b!4926335))

(assert (= (and b!4926338 c!839068) b!4926329))

(assert (= (and b!4926338 (not c!839068)) b!4926328))

(assert (= (and b!4926338 c!839065) b!4926332))

(assert (= (and b!4926338 (not c!839065)) b!4926334))

(assert (= (and b!4926332 c!839069) b!4926339))

(assert (= (and b!4926332 (not c!839069)) b!4926337))

(assert (= (or b!4926332 b!4926334) bm!343540))

(assert (= (or b!4926332 b!4926334) bm!343537))

(assert (= (or b!4926332 b!4926334) bm!343536))

(assert (= (or b!4926332 b!4926334) bm!343541))

(assert (= (or b!4926330 b!4926329) bm!343535))

(assert (= (or b!4926330 b!4926329) bm!343538))

(assert (= (or b!4926330 b!4926329) bm!343542))

(assert (= (or b!4926330 b!4926338) bm!343539))

(assert (= (and d!1585418 res!2102671) b!4926326))

(assert (= (and b!4926326 (not res!2102672)) b!4926333))

(declare-fun m!5944186 () Bool)

(assert (=> bm!343542 m!5944186))

(declare-fun m!5944188 () Bool)

(assert (=> bm!343539 m!5944188))

(assert (=> bm!343538 m!5942940))

(assert (=> bm!343535 m!5942942))

(declare-fun m!5944190 () Bool)

(assert (=> b!4926326 m!5944190))

(declare-fun m!5944192 () Bool)

(assert (=> bm!343541 m!5944192))

(declare-fun m!5944194 () Bool)

(assert (=> bm!343536 m!5944194))

(declare-fun m!5944196 () Bool)

(assert (=> d!1585418 m!5944196))

(declare-fun m!5944198 () Bool)

(assert (=> d!1585418 m!5944198))

(declare-fun m!5944200 () Bool)

(assert (=> d!1585418 m!5944200))

(assert (=> d!1585418 m!5944196))

(declare-fun m!5944202 () Bool)

(assert (=> d!1585418 m!5944202))

(declare-fun m!5944204 () Bool)

(assert (=> d!1585418 m!5944204))

(declare-fun m!5944206 () Bool)

(assert (=> d!1585418 m!5944206))

(declare-fun m!5944208 () Bool)

(assert (=> d!1585418 m!5944208))

(declare-fun m!5944210 () Bool)

(assert (=> b!4926332 m!5944210))

(declare-fun m!5944212 () Bool)

(assert (=> b!4926338 m!5944212))

(assert (=> b!4926338 m!5944204))

(declare-fun m!5944214 () Bool)

(assert (=> b!4926338 m!5944214))

(declare-fun m!5944216 () Bool)

(assert (=> b!4926338 m!5944216))

(declare-fun m!5944218 () Bool)

(assert (=> b!4926338 m!5944218))

(declare-fun m!5944220 () Bool)

(assert (=> b!4926338 m!5944220))

(assert (=> b!4926338 m!5942968))

(declare-fun m!5944222 () Bool)

(assert (=> b!4926338 m!5944222))

(declare-fun m!5944224 () Bool)

(assert (=> b!4926338 m!5944224))

(declare-fun m!5944226 () Bool)

(assert (=> b!4926338 m!5944226))

(declare-fun m!5944228 () Bool)

(assert (=> b!4926338 m!5944228))

(assert (=> b!4926338 m!5944204))

(declare-fun m!5944230 () Bool)

(assert (=> b!4926338 m!5944230))

(assert (=> b!4926338 m!5944212))

(declare-fun m!5944232 () Bool)

(assert (=> b!4926338 m!5944232))

(declare-fun m!5944234 () Bool)

(assert (=> b!4926338 m!5944234))

(assert (=> b!4926338 m!5944216))

(assert (=> bm!343540 m!5944230))

(assert (=> bm!343537 m!5944222))

(declare-fun m!5944236 () Bool)

(assert (=> b!4926333 m!5944236))

(assert (=> b!4926333 m!5944234))

(assert (=> bm!343438 d!1585418))

(declare-fun d!1585426 () Bool)

(declare-fun lt!2026955 () Int)

(assert (=> d!1585426 (>= lt!2026955 0)))

(declare-fun e!3078076 () Int)

(assert (=> d!1585426 (= lt!2026955 e!3078076)))

(declare-fun c!839072 () Bool)

(assert (=> d!1585426 (= c!839072 ((_ is Nil!56691) (_1!33893 lt!2026439)))))

(assert (=> d!1585426 (= (size!37484 (_1!33893 lt!2026439)) lt!2026955)))

(declare-fun b!4926344 () Bool)

(assert (=> b!4926344 (= e!3078076 0)))

(declare-fun b!4926345 () Bool)

(assert (=> b!4926345 (= e!3078076 (+ 1 (size!37484 (t!367269 (_1!33893 lt!2026439)))))))

(assert (= (and d!1585426 c!839072) b!4926344))

(assert (= (and d!1585426 (not c!839072)) b!4926345))

(declare-fun m!5944238 () Bool)

(assert (=> b!4926345 m!5944238))

(assert (=> b!4925578 d!1585426))

(assert (=> b!4925578 d!1585198))

(assert (=> bm!343437 d!1585186))

(declare-fun e!3078078 () Bool)

(declare-fun tp!1383518 () Bool)

(declare-fun b!4926346 () Bool)

(declare-fun tp!1383517 () Bool)

(assert (=> b!4926346 (= e!3078078 (and (inv!73478 (left!41337 (left!41337 (c!838722 input!5492)))) tp!1383518 (inv!73478 (right!41667 (left!41337 (c!838722 input!5492)))) tp!1383517))))

(declare-fun b!4926348 () Bool)

(declare-fun e!3078077 () Bool)

(declare-fun tp!1383516 () Bool)

(assert (=> b!4926348 (= e!3078077 tp!1383516)))

(declare-fun b!4926347 () Bool)

(assert (=> b!4926347 (= e!3078078 (and (inv!73485 (xs!18196 (left!41337 (c!838722 input!5492)))) e!3078077))))

(assert (=> b!4925604 (= tp!1383509 (and (inv!73478 (left!41337 (c!838722 input!5492))) e!3078078))))

(assert (= (and b!4925604 ((_ is Node!14874) (left!41337 (c!838722 input!5492)))) b!4926346))

(assert (= b!4926347 b!4926348))

(assert (= (and b!4925604 ((_ is Leaf!24744) (left!41337 (c!838722 input!5492)))) b!4926347))

(declare-fun m!5944240 () Bool)

(assert (=> b!4926346 m!5944240))

(declare-fun m!5944242 () Bool)

(assert (=> b!4926346 m!5944242))

(declare-fun m!5944244 () Bool)

(assert (=> b!4926347 m!5944244))

(assert (=> b!4925604 m!5943002))

(declare-fun tp!1383521 () Bool)

(declare-fun e!3078080 () Bool)

(declare-fun tp!1383520 () Bool)

(declare-fun b!4926349 () Bool)

(assert (=> b!4926349 (= e!3078080 (and (inv!73478 (left!41337 (right!41667 (c!838722 input!5492)))) tp!1383521 (inv!73478 (right!41667 (right!41667 (c!838722 input!5492)))) tp!1383520))))

(declare-fun b!4926351 () Bool)

(declare-fun e!3078079 () Bool)

(declare-fun tp!1383519 () Bool)

(assert (=> b!4926351 (= e!3078079 tp!1383519)))

(declare-fun b!4926350 () Bool)

(assert (=> b!4926350 (= e!3078080 (and (inv!73485 (xs!18196 (right!41667 (c!838722 input!5492)))) e!3078079))))

(assert (=> b!4925604 (= tp!1383508 (and (inv!73478 (right!41667 (c!838722 input!5492))) e!3078080))))

(assert (= (and b!4925604 ((_ is Node!14874) (right!41667 (c!838722 input!5492)))) b!4926349))

(assert (= b!4926350 b!4926351))

(assert (= (and b!4925604 ((_ is Leaf!24744) (right!41667 (c!838722 input!5492)))) b!4926350))

(declare-fun m!5944246 () Bool)

(assert (=> b!4926349 m!5944246))

(declare-fun m!5944248 () Bool)

(assert (=> b!4926349 m!5944248))

(declare-fun m!5944250 () Bool)

(assert (=> b!4926350 m!5944250))

(assert (=> b!4925604 m!5943004))

(declare-fun b!4926381 () Bool)

(declare-fun e!3078093 () Bool)

(declare-fun tp!1383533 () Bool)

(declare-fun tp!1383534 () Bool)

(assert (=> b!4926381 (= e!3078093 (and tp!1383533 tp!1383534))))

(declare-fun b!4926382 () Bool)

(declare-fun tp!1383532 () Bool)

(assert (=> b!4926382 (= e!3078093 tp!1383532)))

(assert (=> b!4925611 (= tp!1383514 e!3078093)))

(declare-fun b!4926383 () Bool)

(declare-fun tp!1383536 () Bool)

(declare-fun tp!1383535 () Bool)

(assert (=> b!4926383 (= e!3078093 (and tp!1383536 tp!1383535))))

(declare-fun b!4926380 () Bool)

(declare-fun tp_is_empty!35909 () Bool)

(assert (=> b!4926380 (= e!3078093 tp_is_empty!35909)))

(assert (= (and b!4925611 ((_ is ElementMatch!13375) (h!63140 (exprs!3517 setElem!27536)))) b!4926380))

(assert (= (and b!4925611 ((_ is Concat!21948) (h!63140 (exprs!3517 setElem!27536)))) b!4926381))

(assert (= (and b!4925611 ((_ is Star!13375) (h!63140 (exprs!3517 setElem!27536)))) b!4926382))

(assert (= (and b!4925611 ((_ is Union!13375) (h!63140 (exprs!3517 setElem!27536)))) b!4926383))

(declare-fun b!4926384 () Bool)

(declare-fun e!3078094 () Bool)

(declare-fun tp!1383537 () Bool)

(declare-fun tp!1383538 () Bool)

(assert (=> b!4926384 (= e!3078094 (and tp!1383537 tp!1383538))))

(assert (=> b!4925611 (= tp!1383515 e!3078094)))

(assert (= (and b!4925611 ((_ is Cons!56692) (t!367270 (exprs!3517 setElem!27536)))) b!4926384))

(declare-fun condSetEmpty!27543 () Bool)

(assert (=> setNonEmpty!27542 (= condSetEmpty!27543 (= setRest!27542 ((as const (Array Context!6034 Bool)) false)))))

(declare-fun setRes!27543 () Bool)

(assert (=> setNonEmpty!27542 (= tp!1383499 setRes!27543)))

(declare-fun setIsEmpty!27543 () Bool)

(assert (=> setIsEmpty!27543 setRes!27543))

(declare-fun e!3078095 () Bool)

(declare-fun tp!1383539 () Bool)

(declare-fun setElem!27543 () Context!6034)

(declare-fun setNonEmpty!27543 () Bool)

(assert (=> setNonEmpty!27543 (= setRes!27543 (and tp!1383539 (inv!73479 setElem!27543) e!3078095))))

(declare-fun setRest!27543 () (InoxSet Context!6034))

(assert (=> setNonEmpty!27543 (= setRest!27542 ((_ map or) (store ((as const (Array Context!6034 Bool)) false) setElem!27543 true) setRest!27543))))

(declare-fun b!4926385 () Bool)

(declare-fun tp!1383540 () Bool)

(assert (=> b!4926385 (= e!3078095 tp!1383540)))

(assert (= (and setNonEmpty!27542 condSetEmpty!27543) setIsEmpty!27543))

(assert (= (and setNonEmpty!27542 (not condSetEmpty!27543)) setNonEmpty!27543))

(assert (= setNonEmpty!27543 b!4926385))

(declare-fun m!5944252 () Bool)

(assert (=> setNonEmpty!27543 m!5944252))

(declare-fun b!4926386 () Bool)

(declare-fun e!3078096 () Bool)

(declare-fun tp!1383541 () Bool)

(declare-fun tp!1383542 () Bool)

(assert (=> b!4926386 (= e!3078096 (and tp!1383541 tp!1383542))))

(assert (=> b!4925595 (= tp!1383500 e!3078096)))

(assert (= (and b!4925595 ((_ is Cons!56692) (exprs!3517 setElem!27542))) b!4926386))

(declare-fun b!4926391 () Bool)

(declare-fun e!3078099 () Bool)

(declare-fun tp!1383545 () Bool)

(assert (=> b!4926391 (= e!3078099 (and tp_is_empty!35909 tp!1383545))))

(assert (=> b!4925606 (= tp!1383507 e!3078099)))

(assert (= (and b!4925606 ((_ is Cons!56691) (innerList!14962 (xs!18196 (c!838722 input!5492))))) b!4926391))

(declare-fun b_lambda!196293 () Bool)

(assert (= b_lambda!196291 (or d!1585028 b_lambda!196293)))

(declare-fun bs!1179755 () Bool)

(declare-fun d!1585428 () Bool)

(assert (= bs!1179755 (and d!1585428 d!1585028)))

(declare-fun validRegex!5943 (Regex!13375) Bool)

(assert (=> bs!1179755 (= (dynLambda!23010 lambda!245232 (h!63140 (exprs!3517 setElem!27536))) (validRegex!5943 (h!63140 (exprs!3517 setElem!27536))))))

(declare-fun m!5944254 () Bool)

(assert (=> bs!1179755 m!5944254))

(assert (=> b!4926242 d!1585428))

(check-sat (not b!4926347) (not bm!343487) (not b!4926247) (not b!4926332) (not bm!343515) (not bm!343530) (not d!1585344) (not b!4926385) (not b!4925936) (not b!4925965) (not d!1585410) (not b!4926272) (not bm!343486) (not b!4926313) (not b!4926265) (not b!4925901) (not bs!1179755) (not b!4926391) (not d!1585334) (not b!4926333) (not bm!343540) (not d!1585414) (not b!4925631) (not b!4925921) (not d!1585098) (not bm!343488) (not d!1585418) (not d!1585206) (not b!4925662) (not b!4926383) (not b!4925929) (not bm!343485) (not d!1585200) (not b!4925684) (not b!4926126) (not b!4925875) (not b!4925604) (not b!4926382) (not b!4926288) (not b!4926178) (not b!4926137) (not d!1585222) (not b!4925926) (not bm!343537) (not b!4926185) (not b!4926275) (not d!1585096) (not b!4925881) (not b!4926286) (not b!4926198) (not d!1585280) tp_is_empty!35909 (not d!1585272) (not d!1585188) (not d!1585192) (not b!4925903) (not b!4926094) (not b!4926274) (not b!4925902) (not d!1585328) (not bm!343484) (not b!4926346) (not d!1585184) (not bm!343533) (not b!4925884) (not d!1585202) (not b!4925913) (not b!4926096) (not bm!343523) (not b!4926386) (not b!4926298) (not b!4925686) (not d!1585234) (not d!1585346) (not d!1585094) (not bm!343535) (not b!4926068) (not bm!343539) (not bm!343526) (not bm!343525) (not bm!343521) (not d!1585354) (not d!1585232) (not b!4926350) (not d!1585238) (not d!1585100) (not d!1585080) (not bm!343520) (not b!4925919) (not d!1585412) (not setNonEmpty!27543) (not b!4926384) (not b!4926099) (not b!4926381) (not b!4925966) (not b!4925949) (not b!4925962) (not b!4925977) (not b!4925931) (not bm!343534) (not bm!343516) (not b!4926338) (not bm!343517) (not b!4925955) (not d!1585230) (not d!1585210) (not b!4926063) (not b!4926323) (not b!4925979) (not b!4926098) (not d!1585164) (not b!4925873) (not b!4925976) (not b_lambda!196293) (not d!1585374) (not bm!343504) (not b!4926276) (not d!1585398) (not b!4926316) (not b!4925973) (not b!4925971) (not d!1585086) (not b!4925900) (not b!4926210) (not b!4925689) (not d!1585226) (not bm!343527) (not d!1585168) (not b!4926025) (not b!4926312) (not d!1585250) (not d!1585254) (not d!1585190) (not b!4926314) (not b!4926243) (not bm!343532) (not b!4926225) (not b!4925888) (not b!4926345) (not bm!343538) (not bm!343524) (not d!1585404) (not b!4926290) (not b!4926026) (not bm!343531) (not b!4926024) (not b!4925688) (not b!4925904) (not b!4925645) (not b!4926277) (not b!4926273) (not b!4926317) (not b!4926251) (not b!4926256) (not b!4925951) (not b!4925614) (not bm!343541) (not b!4926293) (not b!4926183) (not b!4926095) (not b!4926297) (not b!4926322) (not b!4926125) (not bm!343519) (not d!1585176) (not b!4925876) (not b!4926060) (not b!4925927) (not b!4925687) (not d!1585112) (not b!4926180) (not b!4926257) (not b!4926249) (not d!1585274) (not b!4925650) (not b!4926326) (not b!4925685) (not b!4925644) (not b!4926305) (not bm!343536) (not d!1585244) (not d!1585204) (not b!4925969) (not b!4926348) (not b!4926294) (not b!4925975) (not d!1585416) (not b!4925924) (not b!4925947) (not d!1585228) (not b!4925948) (not b!4926349) (not bm!343528) (not b!4926205) (not b!4926296) (not bm!343522) (not b!4925980) (not b!4926304) (not b!4925956) (not b!4925629) (not b!4925633) (not b!4926179) (not b!4926136) (not b!4925953) (not b!4926123) (not b!4926184) (not b!4925932) (not d!1585082) (not b!4925905) (not bm!343529) (not d!1585332) (not b!4926351) (not bm!343518) (not bm!343542) (not d!1585074) (not d!1585076) (not b!4926204) (not b!4925613) (not b!4926139) (not b!4926226) (not d!1585078) (not b!4925923) (not b!4925880) (not b!4925935) (not d!1585288) (not d!1585278) (not b!4926132))
(check-sat)
